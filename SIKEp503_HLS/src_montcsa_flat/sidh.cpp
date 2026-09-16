/********************************************************************************************
 * Supersingular Isogeny Key Encapsulation Library
 *
 * Abstract: ephemeral supersingular isogeny Diffie-Hellman key exchange (SIDH)
 *********************************************************************************************/

#include "P503_internal.h"
#include "ec_isogeny.h"
#include "random/random.h"
#include <stdio.h>

static void clear_words(void *mem, digit_t nwords)
{ // Clear digits from memory. "nwords" indicates the number of digits to be zeroed.
  // This function uses the volatile type qualifier to inform the compiler not to optimize out the memory clearing.
    unsigned int i;
    volatile digit_t *v = (volatile digit_t *)mem;

    for (i = 0; i < nwords; i++)
    {
        // #pragma HLS loop_tripcount min = 1 max = 503 avg = 252
        v[i] = 0;
    }
}

static void init_basis(digit_t *gen, f2elm_t XP, f2elm_t XQ, f2elm_t XR)
{ // Initialization of basis points

    fpcopy(gen, XP[0]);
    fpcopy(gen + NWORDS_FIELD, XP[1]);
    fpcopy(gen + 2 * NWORDS_FIELD, XQ[0]);
    fpzero(XQ[1]);
    fpcopy(gen + 3 * NWORDS_FIELD, XR[0]);
    fpcopy(gen + 4 * NWORDS_FIELD, XR[1]);
}

static void fp2_encode(const f2elm_t x, unsigned char *enc)
{ // Conversion of GF(p^2) element from Montgomery to standard representation, and encoding by removing leading 0 bytes
    unsigned int i;
    f2elm_t t;

    from_fp2mont(x, t);
    for (i = 0; i < FP2_ENCODED_BYTES / 2; i++)
    {
        // Extract bytes from first field element
        if (i < NWORDS_FIELD * sizeof(digit_t))
        {
            unsigned int word_idx = i / sizeof(digit_t);
            unsigned int byte_idx = i % sizeof(digit_t);
            enc[i] = (unsigned char)(t[0][word_idx] >> (byte_idx * 8));
        }

        // Extract bytes from second field element
        if (i < NWORDS_FIELD * sizeof(digit_t))
        {
            unsigned int word_idx = i / sizeof(digit_t);
            unsigned int byte_idx = i % sizeof(digit_t);
            enc[i + FP2_ENCODED_BYTES / 2] = (unsigned char)(t[1][word_idx] >> (byte_idx * 8));
        }
    }
}

static void fp2_decode(const unsigned char *enc, f2elm_t x)
{ // Parse byte sequence back into GF(p^2) element, and conversion to Montgomery representation
    unsigned int i;

    // Initialize x array to zero
    for (i = 0; i < 2; i++)
    {
        for (unsigned int j = 0; j < NWORDS_FIELD; j++)
        {
            x[i][j] = 0;
        }
    }

    // Copy encoded data directly to x array elements
    for (i = 0; i < FP2_ENCODED_BYTES / 2; i++)
    {
        // Copy to first field element
        if (i < NWORDS_FIELD * sizeof(digit_t))
        {
            unsigned int word_idx = i / sizeof(digit_t);
            unsigned int byte_idx = i % sizeof(digit_t);
            x[0][word_idx] |= ((digit_t)enc[i]) << (byte_idx * 8);
        }

        // Copy to second field element
        if (i < NWORDS_FIELD * sizeof(digit_t))
        {
            unsigned int word_idx = i / sizeof(digit_t);
            unsigned int byte_idx = i % sizeof(digit_t);
            x[1][word_idx] |= ((digit_t)enc[i + FP2_ENCODED_BYTES / 2]) << (byte_idx * 8);
        }
    }

    to_fp2mont(x, x);
}

void random_mod_order_A(unsigned char *random_digits)
{ // Generation of Alice's secret key
  // Outputs random value in [0, 2^eA - 1]
    unsigned long long nbytes = NBITS_TO_NBYTES(OALICE_BITS);

    clear_words((void *)random_digits, MAXWORDS_ORDER);
    randombytes(random_digits, nbytes);
    random_digits[nbytes - 1] &= MASK_ALICE; // Masking last byte
}

void random_mod_order_B(unsigned char *random_digits)
{ // Generation of Bob's secret key
  // Outputs random value in [0, 2^Floor(Log(2, oB)) - 1]
    unsigned long long nbytes = NBITS_TO_NBYTES(OBOB_BITS - 1);

    clear_words((void *)random_digits, MAXWORDS_ORDER);
    randombytes(random_digits, nbytes);
    random_digits[nbytes - 1] &= MASK_BOB; // Masking last byte
}

int EphemeralKeyGeneration_A(const unsigned char *PrivateKeyA, unsigned char *PublicKeyA)
{
    point_proj_t R, phiP = {0}, phiQ = {0}, phiR = {0}, pts[MAX_INT_POINTS_ALICE];
    f2elm_t XPA, XQA, XRA, coeff[3], A24plus = {0}, C24 = {0}, A = {0};
    unsigned int i, row, m, index = 0, pts_index[MAX_INT_POINTS_ALICE], npts = 0, ii = 0;

    // Initialize basis points
    init_basis((digit_t *)A_gen, XPA, XQA, XRA);
    init_basis((digit_t *)B_gen, phiP->X, phiQ->X, phiR->X);
    fpcopy((digit_t *)&Montgomery_one, (phiP->Z)[0]);
    fpcopy((digit_t *)&Montgomery_one, (phiQ->Z)[0]);
    fpcopy((digit_t *)&Montgomery_one, (phiR->Z)[0]);

    // Initialize constants
    fpcopy((digit_t *)&Montgomery_one, A24plus[0]);
    fp2add(A24plus, A24plus, C24);

    // Retrieve kernel point
    LADDER3PT(XPA, XQA, XRA, (digit_t *)PrivateKeyA, ALICE, R, A);
    // printf("DEBUG: Retrieved kernel point\n");

    // Traverse tree
    index = 0;
    for (row = 1; row < MAX_Alice; row++)
    {
        for (int j = 0; j < MAX_Alice - row; j++)
        {
            // 常に計算し、このステップを木構造走査で実際に使うかどうかを
            // マスク/算術選択で決める。以前の if(index<MAX_Alice-row) に
            // よるスキップは、xDBLe が呼ばれるかどうか自体を実行時データ
            // に依存させており、これがレイテンシ不定の最後の原因だった
            // (xDBLe自体は既に定数時間化済みだが、「呼ぶかどうか」が可変
            // だと依然としてレイテンシが変動する)。
            bool cond = (index < MAX_Alice - row);
            digit_t mask = 0 - (digit_t)cond;

            point_proj_t R_cand;
            copy_point(R, R_cand);
            unsigned int m_cand = strat_Alice[ii];
            point_proj_t R_next;
            xDBLe(R, R_next, A24plus, C24, (int)(2 * m_cand));

            select_point(pts[npts], R_cand, mask);
            pts_index[npts] = cond ? index : pts_index[npts];
            select_point(R, R_next, mask);

            npts += cond ? 1u : 0u;
            ii += cond ? 1u : 0u;
            index += cond ? m_cand : 0u;
        }
        get_4_isog(R, A24plus, C24, coeff);
        // npts はストラテジーテーブル走査に伴う実行時可変カウンタのため、
        // HLS からは可変トリップ数に見えレイテンシ不定の原因になっていた。
        // 配列容量 MAX_INT_POINTS_ALICE まで常に固定回数反復するだけでなく、
        // 反復あたりのコストも定数時間化するため、毎回必ず eval_4_isog を
        // 計算した上で、結果を採用するかどうかを select_point でマスク選択
        // する(if(i<npts)によるスキップは反復ごとのコストを可変にしていた)。
        for (i = 0; i < MAX_INT_POINTS_ALICE; i++)
        {
            point_proj_t pt_new;
            copy_point(pts[i], pt_new);
            eval_4_isog(pt_new, coeff);
            digit_t mask = 0 - (digit_t)(i < npts);
            select_point(pts[i], pt_new, mask);
        }
        eval_4_isog(phiP, coeff);
        eval_4_isog(phiQ, coeff);
        eval_4_isog(phiR, coeff);

        fp2copy(pts[npts - 1]->X, R->X);
        fp2copy(pts[npts - 1]->Z, R->Z);
        index = pts_index[npts - 1];
        npts -= 1;
    }

    get_4_isog(R, A24plus, C24, coeff);
    eval_4_isog(phiP, coeff);
    eval_4_isog(phiQ, coeff);
    eval_4_isog(phiR, coeff);

    inv_3_way(phiP->Z, phiQ->Z, phiR->Z);
    fp2mul_mont(phiP->X, phiP->Z, phiP->X);
    fp2mul_mont(phiQ->X, phiQ->Z, phiQ->X);
    fp2mul_mont(phiR->X, phiR->Z, phiR->X);

    // Format public key
    fp2_encode(phiP->X, PublicKeyA);
    fp2_encode(phiQ->X, PublicKeyA + FP2_ENCODED_BYTES);
    fp2_encode(phiR->X, PublicKeyA + 2 * FP2_ENCODED_BYTES);

    // printf("DEBUG: Generated public key (first 16 bytes): ");
    // for (i = 0; i < 16; i++)
    //     printf("%02x ", PublicKeyA[i]);
    // printf("\n");
    // printf("DEBUG: Finished EphemeralKeyGeneration_A\n");

    return 0;
}

int EphemeralKeyGeneration_B(const unsigned char *PrivateKeyB, unsigned char *PublicKeyB)
{ // Bob's ephemeral public key generation
  // Input:  a private key PrivateKeyB in the range [0, 2^Floor(Log(2,oB)) - 1].
  // Output: the public key PublicKeyB consisting of 3 elements in GF(p^2) which are encoded by removing leading 0 bytes.
    point_proj_t R, phiP = {0}, phiQ = {0}, phiR = {0}, pts[MAX_INT_POINTS_BOB];
    f2elm_t XPB, XQB, XRB, coeff[3], A24plus = {0}, A24minus = {0}, A = {0};
    unsigned int i, row, m, index = 0, pts_index[MAX_INT_POINTS_BOB], npts = 0, ii = 0;

    // Initialize basis points
    init_basis((digit_t *)B_gen, XPB, XQB, XRB);
    init_basis((digit_t *)A_gen, phiP->X, phiQ->X, phiR->X);
    fpcopy((digit_t *)&Montgomery_one, (phiP->Z)[0]);
    fpcopy((digit_t *)&Montgomery_one, (phiQ->Z)[0]);
    fpcopy((digit_t *)&Montgomery_one, (phiR->Z)[0]);

    // Initialize constants
    fpcopy((digit_t *)&Montgomery_one, A24plus[0]);
    fp2add(A24plus, A24plus, A24plus);
    fp2copy(A24plus, A24minus);
    fp2neg(A24minus);

    // Retrieve kernel point
    LADDER3PT(XPB, XQB, XRB, (digit_t *)PrivateKeyB, BOB, R, A);

    // Traverse tree
    index = 0;
    for (row = 1; row < MAX_Bob; row++)
    {
        for (int j = 0; j < MAX_Bob - row; j++)
        {
            // 常に計算し、このステップを木構造走査で実際に使うかどうかを
            // マスク/算術選択で決める(xDBLeと同じ理由・同じ手法)。
            bool cond = (index < MAX_Bob - row);
            digit_t mask = 0 - (digit_t)cond;

            point_proj_t R_cand;
            copy_point(R, R_cand);
            unsigned int m_cand = strat_Bob[ii];
            point_proj_t R_next;
            xTPLe(R, R_next, A24minus, A24plus, (int)m_cand);

            select_point(pts[npts], R_cand, mask);
            pts_index[npts] = cond ? index : pts_index[npts];
            select_point(R, R_next, mask);

            npts += cond ? 1u : 0u;
            ii += cond ? 1u : 0u;
            index += cond ? m_cand : 0u;
        }
        get_3_isog(R, A24minus, A24plus, coeff);
        // npts は実行時可変カウンタのためレイテンシ不定の原因になっていた。
        // 配列容量 MAX_INT_POINTS_BOB まで常に固定回数反復するだけでなく、
        // 毎回必ず eval_3_isog を計算し select_point で採用可否を選ぶこと
        // で反復あたりのコストも定数時間化する。
        for (i = 0; i < MAX_INT_POINTS_BOB; i++)
        {
            point_proj_t pt_new;
            copy_point(pts[i], pt_new);
            eval_3_isog(pt_new, coeff);
            digit_t mask = 0 - (digit_t)(i < npts);
            select_point(pts[i], pt_new, mask);
        }
        eval_3_isog(phiP, coeff);
        eval_3_isog(phiQ, coeff);
        eval_3_isog(phiR, coeff);

        fp2copy(pts[npts - 1]->X, R->X);
        fp2copy(pts[npts - 1]->Z, R->Z);
        index = pts_index[npts - 1];
        npts -= 1;
    }

    get_3_isog(R, A24minus, A24plus, coeff);
    eval_3_isog(phiP, coeff);
    eval_3_isog(phiQ, coeff);
    eval_3_isog(phiR, coeff);

    inv_3_way(phiP->Z, phiQ->Z, phiR->Z);
    fp2mul_mont(phiP->X, phiP->Z, phiP->X);
    fp2mul_mont(phiQ->X, phiQ->Z, phiQ->X);
    fp2mul_mont(phiR->X, phiR->Z, phiR->X);

    // Format public key
    fp2_encode(phiP->X, PublicKeyB);
    fp2_encode(phiQ->X, PublicKeyB + FP2_ENCODED_BYTES);
    fp2_encode(phiR->X, PublicKeyB + 2 * FP2_ENCODED_BYTES);

    return 0;
}

int EphemeralSecretAgreement_A(const unsigned char *PrivateKeyA, const unsigned char *PublicKeyB, unsigned char *SharedSecretA)
{ // Alice's ephemeral shared secret computation
  // It produces a shared secret key SharedSecretA using her secret key PrivateKeyA and Bob's public key PublicKeyB
  // Inputs: Alice's PrivateKeyA is an integer in the range [0, oA-1].
  //         Bob's PublicKeyB consists of 3 elements in GF(p^2) encoded by removing leading 0 bytes.
  // Output: a shared secret SharedSecretA that consists of one element in GF(p^2) encoded by removing leading 0 bytes.
    point_proj_t R, pts[MAX_INT_POINTS_ALICE];
    f2elm_t coeff[3], PKB[3], jinv;
    f2elm_t A24plus = {0}, C24 = {0}, A = {0};
    unsigned int i, row, m, index = 0, pts_index[MAX_INT_POINTS_ALICE], npts = 0, ii = 0;

    // printf("DEBUG: Starting EphemeralSecretAgreement_A\n");
    // printf("DEBUG: Input PrivateKeyA (first 16 bytes): ");
    // for (i = 0; i < 16; i++)
    //     printf("%02x ", PrivateKeyA[i]);
    // printf("\n");
    // printf("DEBUG: Input PublicKeyB (first 16 bytes): ");
    // for (i = 0; i < 16; i++)
    //     printf("%02x ", PublicKeyB[i]);
    // printf("\n");

    // Initialize images of Bob's basis
    fp2_decode(PublicKeyB, PKB[0]);
    fp2_decode(PublicKeyB + FP2_ENCODED_BYTES, PKB[1]);
    fp2_decode(PublicKeyB + 2 * FP2_ENCODED_BYTES, PKB[2]);

    // Initialize constants
    get_A(PKB[0], PKB[1], PKB[2], A); // TODO: Can return projective A?
    fpadd((digit_t *)&Montgomery_one, (digit_t *)&Montgomery_one, C24[0]);
    fp2add(A, C24, A24plus);
    fpadd(C24[0], C24[0], C24[0]);

    // Retrieve kernel point
    LADDER3PT(PKB[0], PKB[1], PKB[2], (digit_t *)PrivateKeyA, ALICE, R, A);
    // printf("DEBUG: Retrieved kernel point\n");

    // Traverse tree
    index = 0;
    for (row = 1; row < MAX_Alice; row++)
    {
        for (int j = 0; j < MAX_Alice - row; j++)
        {
            // 同上の理由(xDBLeが呼ばれるかどうか自体を常時実行+選択で
            // 定数時間化)。
            bool cond = (index < MAX_Alice - row);
            digit_t mask = 0 - (digit_t)cond;

            point_proj_t R_cand;
            copy_point(R, R_cand);
            unsigned int m_cand = strat_Alice[ii];
            point_proj_t R_next;
            xDBLe(R, R_next, A24plus, C24, (int)(2 * m_cand));

            select_point(pts[npts], R_cand, mask);
            pts_index[npts] = cond ? index : pts_index[npts];
            select_point(R, R_next, mask);

            npts += cond ? 1u : 0u;
            ii += cond ? 1u : 0u;
            index += cond ? m_cand : 0u;
        }
        get_4_isog(R, A24plus, C24, coeff);
        // 同上の理由(固定回数ループ化+反復あたりコストの定数時間化)。
        for (i = 0; i < MAX_INT_POINTS_ALICE; i++)
        {
            point_proj_t pt_new;
            copy_point(pts[i], pt_new);
            eval_4_isog(pt_new, coeff);
            digit_t mask = 0 - (digit_t)(i < npts);
            select_point(pts[i], pt_new, mask);
        }

        fp2copy(pts[npts - 1]->X, R->X);
        fp2copy(pts[npts - 1]->Z, R->Z);
        index = pts_index[npts - 1];
        npts -= 1;
    }

    get_4_isog(R, A24plus, C24, coeff);
    fp2div2(C24, C24);
    fp2sub(A24plus, C24, A24plus);
    fp2div2(C24, C24);
    j_inv(A24plus, C24, jinv);
    fp2_encode(jinv, SharedSecretA);
    // printf("DEBUG: Generated shared secret (first 16 bytes): ");
    // for (i = 0; i < 16; i++)
    //     printf("%02x ", SharedSecretA[i]);
    // printf("\n");
    // printf("DEBUG: Finished EphemeralSecretAgreement_A\n");

    return 0;
}

int EphemeralSecretAgreement_B(const unsigned char *PrivateKeyB, const unsigned char *PublicKeyA, unsigned char *SharedSecretB)
{ // Bob's ephemeral shared secret computation
  // It produces a shared secret key SharedSecretB using his secret key PrivateKeyB and Alice's public key PublicKeyA
  // Inputs: Bob's PrivateKeyB is an integer in the range [0, 2^Floor(Log(2,oB)) - 1].
  //         Alice's PublicKeyA consists of 3 elements in GF(p^2) encoded by removing leading 0 bytes.
  // Output: a shared secret SharedSecretB that consists of one element in GF(p^2) encoded by removing leading 0 bytes.
    point_proj_t R, pts[MAX_INT_POINTS_BOB];
    f2elm_t coeff[3], PKB[3], jinv;
    f2elm_t A24plus = {0}, A24minus = {0}, A = {0};
    unsigned int i, row, m, index = 0, pts_index[MAX_INT_POINTS_BOB], npts = 0, ii = 0;

    // Initialize images of Alice's basis
    fp2_decode(PublicKeyA, PKB[0]);
    fp2_decode(PublicKeyA + FP2_ENCODED_BYTES, PKB[1]);
    fp2_decode(PublicKeyA + 2 * FP2_ENCODED_BYTES, PKB[2]);

    // Initialize constants
    get_A(PKB[0], PKB[1], PKB[2], A); // TODO: Can return projective A?
    fpadd((digit_t *)&Montgomery_one, (digit_t *)&Montgomery_one, A24minus[0]);
    fp2add(A, A24minus, A24plus);
    fp2sub(A, A24minus, A24minus);

    // Retrieve kernel point
    LADDER3PT(PKB[0], PKB[1], PKB[2], (digit_t *)PrivateKeyB, BOB, R, A);

    // Traverse tree
    index = 0;
    for (row = 1; row < MAX_Bob; row++)
    {
        for (int j = 0; j < MAX_Bob - row; j++)
        {
            // 同上の理由(xTPLeが呼ばれるかどうか自体を常時実行+選択で
            // 定数時間化)。
            bool cond = (index < MAX_Bob - row);
            digit_t mask = 0 - (digit_t)cond;

            point_proj_t R_cand;
            copy_point(R, R_cand);
            unsigned int m_cand = strat_Bob[ii];
            point_proj_t R_next;
            xTPLe(R, R_next, A24minus, A24plus, (int)m_cand);

            select_point(pts[npts], R_cand, mask);
            pts_index[npts] = cond ? index : pts_index[npts];
            select_point(R, R_next, mask);

            npts += cond ? 1u : 0u;
            ii += cond ? 1u : 0u;
            index += cond ? m_cand : 0u;
        }
        get_3_isog(R, A24minus, A24plus, coeff);
        // 同上の理由(固定回数ループ化+反復あたりコストの定数時間化)。
        for (i = 0; i < MAX_INT_POINTS_BOB; i++)
        {
            point_proj_t pt_new;
            copy_point(pts[i], pt_new);
            eval_3_isog(pt_new, coeff);
            digit_t mask = 0 - (digit_t)(i < npts);
            select_point(pts[i], pt_new, mask);
        }

        fp2copy(pts[npts - 1]->X, R->X);
        fp2copy(pts[npts - 1]->Z, R->Z);
        index = pts_index[npts - 1];
        npts -= 1;
    }

    get_3_isog(R, A24minus, A24plus, coeff);
    fp2add(A24plus, A24minus, A);
    fp2add(A, A, A);
    fp2sub(A24plus, A24minus, A24plus);
    j_inv(A, A24plus, jinv);
    fp2_encode(jinv, SharedSecretB); // Format shared secret

    return 0;
}