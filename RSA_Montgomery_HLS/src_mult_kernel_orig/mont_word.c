// mont_word.c
// 語単位CIOS方式のMontgomery乗算。詳細はmont_word.hのコメント参照。
#include "mont_word.h"

uint32_t mont_word_compute_mprime(uint32_t m0)
{
    // Newton法によるmod 2^32逆元の計算: inv <- inv*(2 - m0*inv) を
    // 5回繰り返すと正しいビット数が 1→2→4→8→16→32 と倍加し、
    // 32bit全体で inv = m0^{-1} mod 2^32 に収束する(m0は奇数が前提、
    // RSA法は常に奇数なので成立)。
    uint32_t inv = 1;
    for (int k = 0; k < 5; k++)
    {
        inv = inv * (2u - m0 * inv);
    }
    return (uint32_t)(0u - inv); // mprime = -inv mod 2^32
}

void montMult_words(const uint32_t x[MW_NWORDS], const uint32_t y[MW_NWORDS],
                     const uint32_t m[MW_NWORDS], uint32_t mprime,
                     uint32_t out[MW_NWORDS])
{
    // t は MW_NWORDS+2 語: 通常の総和用 MW_NWORDS+1 語に加え、
    // 乗算/還元それぞれの最終キャリーを一時的に貯める1語を余分に確保する
    // (単純化のための保守的なサイズ; 数学的には+1語で足りるがHLS化の
    // 際に境界を明確にするため+2語にしている)。
    uint32_t t[MW_NWORDS + 2];
    for (unsigned k = 0; k < MW_NWORDS + 2; k++)
    {
        t[k] = 0;
    }

    for (unsigned i = 0; i < MW_NWORDS; i++)
    {
        // ---- 乗算段: t += x[i] * y ----
        uint64_t carry = 0;
        for (unsigned j = 0; j < MW_NWORDS; j++)
        {
            uint64_t sum = (uint64_t)t[j] + (uint64_t)x[i] * (uint64_t)y[j] + carry;
            t[j] = (uint32_t)sum;
            carry = sum >> 32;
        }
        {
            uint64_t sum = (uint64_t)t[MW_NWORDS] + carry;
            t[MW_NWORDS] = (uint32_t)sum;
            t[MW_NWORDS + 1] += (uint32_t)(sum >> 32);
        }

        // ---- 還元段: m_i = t[0]*mprime mod 2^32; t += m_i*m ----
        uint32_t mi = t[0] * mprime;
        carry = 0;
        for (unsigned j = 0; j < MW_NWORDS; j++)
        {
            uint64_t sum = (uint64_t)t[j] + (uint64_t)mi * (uint64_t)m[j] + carry;
            t[j] = (uint32_t)sum;
            carry = sum >> 32;
        }
        {
            uint64_t sum = (uint64_t)t[MW_NWORDS] + carry;
            t[MW_NWORDS] = (uint32_t)sum;
            t[MW_NWORDS + 1] += (uint32_t)(sum >> 32);
        }

        // ---- 1語ぶん右シフト(2^32で割る。還元によりt[0]==0のはず) ----
        for (unsigned j = 0; j < MW_NWORDS; j++)
        {
            t[j] = t[j + 1];
        }
        t[MW_NWORDS] = t[MW_NWORDS + 1];
        t[MW_NWORDS + 1] = 0;
    }

    // ---- 最終条件付き減算: t >= m なら t -= m ----
    // SIKEでの経験(select_point等)と同じ理由により、if(ge){...}という
    // 分岐でガードすると実行時データ(t,mの値)に応じてこの減算ループ自体
    // が実行されたりされなかったりし、レイテンシが不定になる(実測で
    // 確認: 615〜804サイクルのように幅を持って報告された)。常に減算後の
    // 値も計算しておき、採用するかどうかをビットマスクで選択する
    // (分岐に依存しない定数時間の手法)ことで、単一の固定レイテンシに
    // 収束させる。
    // 比較ループ自体もbreakで早期終了すると、大小関係がどの語で確定するか
    // という実行時データに応じてトリップ数が変わってしまう(実測で確認)。
    // breakせず常に全MW_NWORDS語をスキャンし、「まだ確定していないか」を
    // 表すフラグで結果を更新する(スカラー値への単純な条件代入のみなので
    // 反復あたりのコストは分岐結果によらず一定)。
    int ge = 1;
    int decided = 0;
    for (int k = (int)MW_NWORDS - 1; k >= 0; k--)
    {
        if (!decided && t[k] > m[k]) { ge = 1; decided = 1; }
        if (!decided && t[k] < m[k]) { ge = 0; decided = 1; }
    }
    if (t[MW_NWORDS] != 0) ge = 1; // 最上位の余剰語が立っていれば必ず m 以上

    uint32_t sub[MW_NWORDS];
    {
        uint64_t borrow = 0;
        for (unsigned j = 0; j < MW_NWORDS; j++)
        {
            uint64_t diff = (uint64_t)t[j] - (uint64_t)m[j] - borrow;
            sub[j] = (uint32_t)diff;
            borrow = (diff >> 32) & 1u;
        }
    }

    uint32_t mask = (uint32_t)0 - (uint32_t)ge; // ge==1: 全1, ge==0: 全0
    for (unsigned j = 0; j < MW_NWORDS; j++)
    {
        out[j] = (sub[j] & mask) | (t[j] & ~mask);
    }
}
