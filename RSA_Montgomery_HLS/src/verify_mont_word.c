// verify_mont_word.c
// mont_word.c(語単位CIOS)が元のmontMult()(ビット単位)と同じ結果を
// 出すことを、元リポジトリのTest 2(512bit)実際のテストベクタで確認する。
#include <stdio.h>
#include <string.h>
#include "bn.h"
#include "mont_word.h"

// 元のビット単位montMult (RSA_Montgomery_orig.c から)
void montMult_bitserial(struct bn *x, struct bn *y, struct bn *m, int mBits, struct bn *out)
{
    struct bn t;
    bignum_init(&t);

    int i;
    for (i = mBits; i > 0; i--)
    {
        int t0Bit = bignum_getbit(&t, 0);
        int xiBit = bignum_getbit(x, mBits - i);
        int y0Bit = bignum_getbit(y, 0);
        int op = t0Bit + (xiBit * y0Bit);

        if (xiBit == 1)
        {
            bignum_add(&t, y, &t);
        }
        if (op == 1)
        {
            bignum_add(&t, m, &t);
        }
        bignum_rshift(&t, &t, 1);
    }

    if (bignum_cmp(&t, m) >= 0)
    {
        bignum_sub(&t, m, &t);
    }
    bignum_assign(out, &t);
}

static void print_words(const char *label, const uint32_t *w, unsigned n)
{
    printf("%s: ", label);
    for (int i = (int)n - 1; i >= 0; i--) printf("%08x", w[i]);
    printf("\n");
}

int main(void)
{
    // Test 2 (512-bit) の実際のテストベクタ
    struct bn n512, priv, v2Dec, r2m;
    char str1[] = "758463d46999c11496449db8dddd1e407de2e9a8f33612f454866acddd759da8173d4e3fe8c4eaf121f86f87ac8e1d58f54e2c6a80bcf8c404884795252224ad";
    bignum_from_string(&n512, str1, 128);
    char str2[] = "68827b718d1452d4e72a5085f6b14dd516df34e3ae9fb94d96da0fa3d33e651cc244b0275a24ab0753b5c01eac2f8f0d700c587bbd6d8aeb6a4e99e1a9372655";
    bignum_from_string(&priv, str2, 128);
    char str3[] = "45462476f31c3dfde5ac5fde4862d33d917f52255d80555b543584a32b71762a1fc719a341c0e925e9fff02a657764ae78b143d324cfc8892695c55801237885";
    bignum_from_string(&v2Dec, str3, 128);
    char r2ms[] = "47395beb0ae85106f9f8548040a9b165d9a37499d0d98a14a5bcd0b943d0549be18b2ced65bfc42db40331f3ec67faf9cccf19e51d3ef7a09e03ebb1855d5e5e";
    bignum_from_string(&r2m, r2ms, 128);

    int nBits = bignum_numbits(&n512);
    printf("n512 bits = %d\n", nBits);

    // テスト1: montMult(v2Dec, r2m, n512) を両実装で比較
    // (modExp内部で最初に行われる「Montgomery領域への変換」と同じ演算)
    struct bn out_bit;
    bignum_init(&out_bit);
    montMult_bitserial(&v2Dec, &r2m, &n512, nBits, &out_bit);

    uint32_t mprime = mont_word_compute_mprime(n512.array[0]);
    printf("mprime = %08x\n", mprime);

    uint32_t out_words[MW_NWORDS];
    montMult_words(v2Dec.array, r2m.array, n512.array, mprime, out_words);

    print_words("bitserial", out_bit.array, MW_NWORDS);
    print_words("words    ", out_words, MW_NWORDS);

    int match1 = memcmp(out_bit.array, out_words, MW_NWORDS * sizeof(uint32_t)) == 0;
    printf("Test1 (x*y montMult) match: %s\n", match1 ? "PASS" : "FAIL");

    // テスト2: montMult(priv, priv, n512) (二乗パターン、modExp内のtm*parr[1]相当)
    struct bn out_bit2;
    bignum_init(&out_bit2);
    montMult_bitserial(&priv, &priv, &n512, nBits, &out_bit2);
    uint32_t out_words2[MW_NWORDS];
    montMult_words(priv.array, priv.array, n512.array, mprime, out_words2);
    int match2 = memcmp(out_bit2.array, out_words2, MW_NWORDS * sizeof(uint32_t)) == 0;
    printf("Test2 (priv^2 montMult) match: %s\n", match2 ? "PASS" : "FAIL");

    // テスト3: montMult(out_bit, one, n512) (Montgomery領域から戻す変換)
    struct bn one;
    bignum_from_int(&one, 1);
    struct bn out_bit3;
    bignum_init(&out_bit3);
    montMult_bitserial(&out_bit, &one, &n512, nBits, &out_bit3);
    uint32_t out_words3[MW_NWORDS];
    montMult_words(out_words, one.array, n512.array, mprime, out_words3);
    int match3 = memcmp(out_bit3.array, out_words3, MW_NWORDS * sizeof(uint32_t)) == 0;
    printf("Test3 (from-mont montMult) match: %s\n", match3 ? "PASS" : "FAIL");

    printf("\nOVERALL: %s\n", (match1 && match2 && match3) ? "ALL PASS" : "SOME FAILED");
    return (match1 && match2 && match3) ? 0 : 1;
}
