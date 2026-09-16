// verify_modexp_words.c
// montMult_words(語単位CIOS)を使ったmodExpが、元のmodExp(ビット単位
// montMult)と同じ数学的結果(RSA演算そのものの正しさ)を出すことを、
// Pythonのpow()によるクロスチェック済み期待値と比較して検証する。
#include <stdio.h>
#include <string.h>
#include "bn.h"
#include "mont_word.h"

// 語単位CIOSを使うmodExp。元のmodExp()とアルゴリズム構造(ビット順、
// 二乗と乗算のタイミング)は完全に同一、montMult呼び出しだけを
// montMult_wordsへ置き換えている。
static void modExp_words(const uint32_t x[MW_NWORDS], struct bn *e, int eBits,
                          const uint32_t m[MW_NWORDS], uint32_t mprime,
                          const uint32_t r2m[MW_NWORDS], uint32_t out[MW_NWORDS])
{
    uint32_t one[MW_NWORDS] = {0};
    one[0] = 1;

    uint32_t zarr1[MW_NWORDS], zarr2[MW_NWORDS];
    uint32_t parr1[MW_NWORDS], parr2[MW_NWORDS];

    montMult_words(one, r2m, m, mprime, zarr1);   // zarr1 = MontForm(1)
    montMult_words(x, r2m, m, mprime, parr1);     // parr1 = MontForm(x)

    for (int i = 0; i < eBits; i++)
    {
        uint32_t tm[MW_NWORDS];
        memcpy(tm, parr1, sizeof(tm));
        montMult_words(tm, parr1, m, mprime, parr2);   // parr2 = parr1^2

        if (bignum_getbit(e, i) == 1)
        {
            montMult_words(zarr1, parr1, m, mprime, zarr2);
        }
        else
        {
            memcpy(zarr2, zarr1, sizeof(zarr2));
        }

        memcpy(parr1, parr2, sizeof(parr1));
        memcpy(zarr1, zarr2, sizeof(zarr1));
    }

    montMult_words(zarr1, one, m, mprime, out);   // out = FromMont(zarr1)
}

static void print_words(const char *label, const uint32_t *w, unsigned n)
{
    printf("%s: ", label);
    for (int i = (int)n - 1; i >= 0; i--) printf("%08x", w[i]);
    printf("\n");
}

int main(void)
{
    struct bn n512, priv, v2Dec;
    char str1[] = "758463d46999c11496449db8dddd1e407de2e9a8f33612f454866acddd759da8173d4e3fe8c4eaf121f86f87ac8e1d58f54e2c6a80bcf8c404884795252224ad";
    bignum_from_string(&n512, str1, 128);
    char str2[] = "68827b718d1452d4e72a5085f6b14dd516df34e3ae9fb94d96da0fa3d33e651cc244b0275a24ab0753b5c01eac2f8f0d700c587bbd6d8aeb6a4e99e1a9372655";
    bignum_from_string(&priv, str2, 128);
    char str3[] = "45462476f31c3dfde5ac5fde4862d33d917f52255d80555b543584a32b71762a1fc719a341c0e925e9fff02a657764ae78b143d324cfc8892695c55801237885";
    bignum_from_string(&v2Dec, str3, 128);

    // R=2^512 用に事前計算したr2m (Pythonでクロスチェック済み: R^2 mod n)
    struct bn r2m_512;
    char r2m512s[] = "31dca803586dc1f2bb58168f46ec89166ac7ff155cfa0269ede66d495456171f57b21735c5753ad48c1be8c05883b13548a00ebf7381ecfa6eff1f9bcb31301e";
    bignum_from_string(&r2m_512, r2m512s, 128);

    uint32_t mprime = mont_word_compute_mprime(n512.array[0]);
    int dBits = bignum_numbits(&priv);
    printf("dBits = %d\n", dBits);

    uint32_t result[MW_NWORDS];
    modExp_words(v2Dec.array, &priv, dBits, n512.array, mprime, r2m_512.array, result);

    print_words("modExp_words result", result, MW_NWORDS);

    // Python pow(v2dec, priv, n) の期待値: 0x9107f695023f
    uint32_t expected[MW_NWORDS] = {0};
    expected[0] = 0xf695023fu;
    expected[1] = 0x00009107u;
    print_words("expected (python)  ", expected, MW_NWORDS);

    int match = memcmp(result, expected, MW_NWORDS * sizeof(uint32_t)) == 0;
    printf("\nRESULT: %s\n", match ? "PASS (matches Python pow() reference)" : "FAIL");
    return match ? 0 : 1;
}
