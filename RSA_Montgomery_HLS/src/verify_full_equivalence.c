// verify_full_equivalence.c
// 元のビット単位modExp(R=2^mBits)と、語単位CIOSのmodExp_words(R=2^512)を
// 同じ入力(Test 2, 512bit)で実行し、両方が同じ最終結果(RSA演算そのものの
// 正しい答え)を出すことを確認する。内部のMontgomery表現(R)が異なっても、
// 最終的な復号結果は数学的に同じでなければならない。
#include <stdio.h>
#include <string.h>
#include "bn.h"
#include "mont_word.h"

// ---- 元のビット単位実装(RSA_Montgomery_orig.c より) ----
static void montMult_bitserial(struct bn *x, struct bn *y, struct bn *m, int mBits, struct bn *out)
{
    struct bn t;
    bignum_init(&t);
    for (int i = mBits; i > 0; i--)
    {
        int t0Bit = bignum_getbit(&t, 0);
        int xiBit = bignum_getbit(x, mBits - i);
        int y0Bit = bignum_getbit(y, 0);
        int op = t0Bit + (xiBit * y0Bit);
        if (xiBit == 1) bignum_add(&t, y, &t);
        if (op == 1) bignum_add(&t, m, &t);
        bignum_rshift(&t, &t, 1);
    }
    if (bignum_cmp(&t, m) >= 0) bignum_sub(&t, m, &t);
    bignum_assign(out, &t);
}

static void modExp_bitserial(struct bn *x, struct bn *e, int eBits, struct bn *m, int mBits,
                              struct bn *r2m, struct bn *out)
{
    struct bn z, one;
    struct bn parr[3], zarr[3];
    bignum_from_int(&z, 1);
    montMult_bitserial(&z, r2m, m, mBits, &zarr[1]);
    montMult_bitserial(x, r2m, m, mBits, &parr[1]);
    struct bn tm;
    for (int i = 0; i < eBits; i++)
    {
        bignum_assign(&tm, &parr[1]);
        montMult_bitserial(&tm, &parr[1], m, mBits, &parr[2]);
        if (bignum_getbit(e, i) == 1)
            montMult_bitserial(&zarr[1], &parr[1], m, mBits, &zarr[2]);
        else
            bignum_assign(&zarr[2], &zarr[1]);
        bignum_assign(&parr[1], &parr[2]);
        bignum_assign(&zarr[1], &zarr[2]);
    }
    bignum_from_int(&one, 1);
    montMult_bitserial(&zarr[1], &one, m, mBits, out);
}

// ---- 新しい語単位CIOS実装 ----
static void modExp_words(const uint32_t x[MW_NWORDS], struct bn *e, int eBits,
                          const uint32_t m[MW_NWORDS], uint32_t mprime,
                          const uint32_t r2m[MW_NWORDS], uint32_t out[MW_NWORDS])
{
    uint32_t one[MW_NWORDS] = {0};
    one[0] = 1;
    uint32_t zarr1[MW_NWORDS], zarr2[MW_NWORDS];
    uint32_t parr1[MW_NWORDS], parr2[MW_NWORDS];
    montMult_words(one, r2m, m, mprime, zarr1);
    montMult_words(x, r2m, m, mprime, parr1);
    for (int i = 0; i < eBits; i++)
    {
        uint32_t tm[MW_NWORDS];
        memcpy(tm, parr1, sizeof(tm));
        montMult_words(tm, parr1, m, mprime, parr2);
        if (bignum_getbit(e, i) == 1)
            montMult_words(zarr1, parr1, m, mprime, zarr2);
        else
            memcpy(zarr2, zarr1, sizeof(zarr2));
        memcpy(parr1, parr2, sizeof(parr1));
        memcpy(zarr1, zarr2, sizeof(zarr1));
    }
    montMult_words(zarr1, one, m, mprime, out);
}

static void print_words(const char *label, const uint32_t *w, unsigned n)
{
    printf("%s: ", label);
    for (int i = (int)n - 1; i >= 0; i--) printf("%08x", w[i]);
    printf("\n");
}

int main(void)
{
    struct bn n512, priv, v2Dec, r2m_orig, r2m_512;
    char str1[] = "758463d46999c11496449db8dddd1e407de2e9a8f33612f454866acddd759da8173d4e3fe8c4eaf121f86f87ac8e1d58f54e2c6a80bcf8c404884795252224ad";
    bignum_from_string(&n512, str1, 128);
    char str2[] = "68827b718d1452d4e72a5085f6b14dd516df34e3ae9fb94d96da0fa3d33e651cc244b0275a24ab0753b5c01eac2f8f0d700c587bbd6d8aeb6a4e99e1a9372655";
    bignum_from_string(&priv, str2, 128);
    char str3[] = "45462476f31c3dfde5ac5fde4862d33d917f52255d80555b543584a32b71762a1fc719a341c0e925e9fff02a657764ae78b143d324cfc8892695c55801237885";
    bignum_from_string(&v2Dec, str3, 128);
    char r2ms[] = "47395beb0ae85106f9f8548040a9b165d9a37499d0d98a14a5bcd0b943d0549be18b2ced65bfc42db40331f3ec67faf9cccf19e51d3ef7a09e03ebb1855d5e5e";
    bignum_from_string(&r2m_orig, r2ms, 128);
    char r2m512s[] = "31dca803586dc1f2bb58168f46ec89166ac7ff155cfa0269ede66d495456171f57b21735c5753ad48c1be8c05883b13548a00ebf7381ecfa6eff1f9bcb31301e";
    bignum_from_string(&r2m_512, r2m512s, 128);

    int nBits = bignum_numbits(&n512);
    int dBits = bignum_numbits(&priv);
    uint32_t mprime = mont_word_compute_mprime(n512.array[0]);

    struct bn out_orig;
    bignum_init(&out_orig);
    modExp_bitserial(&v2Dec, &priv, dBits, &n512, nBits, &r2m_orig, &out_orig);

    uint32_t out_words[MW_NWORDS];
    modExp_words(v2Dec.array, &priv, dBits, n512.array, mprime, r2m_512.array, out_words);

    print_words("original bitserial modExp", out_orig.array, MW_NWORDS);
    print_words("new CIOS words modExp    ", out_words, MW_NWORDS);

    int match = memcmp(out_orig.array, out_words, MW_NWORDS * sizeof(uint32_t)) == 0;
    printf("\nFULL EQUIVALENCE: %s\n", match ? "PASS" : "FAIL");
    return match ? 0 : 1;
}
