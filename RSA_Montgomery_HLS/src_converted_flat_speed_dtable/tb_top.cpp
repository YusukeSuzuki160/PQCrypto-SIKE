// tb_top.cpp
// rsa_modexp_hw のテストベンチ。EmbeddedMontgomeryRSA元リポジトリの
// Test 2(512bit)実データを使用し、Pythonのpow()でクロスチェック済みの
// 期待値(0x9107f695023f)と比較する。
#include <cstdio>
#include <cstring>
#include "rsa_modexp_hw.h"

static void hex_to_words_le(const char *hex, uint32_t out[MW_NWORDS])
{
    // hexは128文字(64バイト、512bit)のビッグエンディアン16進文字列。
    // out[0]がLSW(最下位語)になるよう変換する。
    int len = (int)strlen(hex);
    for (unsigned w = 0; w < MW_NWORDS; w++)
    {
        uint32_t v = 0;
        for (int b = 0; b < 8; b++)
        {
            int pos = len - (int)(w * 8) - b - 1;
            char ch = (pos >= 0) ? hex[pos] : '0';
            unsigned nib = (ch >= '0' && ch <= '9') ? (unsigned)(ch - '0')
                         : (ch >= 'a' && ch <= 'f') ? (unsigned)(ch - 'a' + 10)
                         : (ch >= 'A' && ch <= 'F') ? (unsigned)(ch - 'A' + 10)
                         : 0u;
            v |= nib << (4 * b);
        }
        out[w] = v;
    }
}

int main()
{
    uint32_t m[MW_NWORDS], d[MW_NWORDS], c[MW_NWORDS], r2m[MW_NWORDS];

    hex_to_words_le("758463d46999c11496449db8dddd1e407de2e9a8f33612f454866acddd759da8173d4e3fe8c4eaf121f86f87ac8e1d58f54e2c6a80bcf8c404884795252224ad", m);
    hex_to_words_le("68827b718d1452d4e72a5085f6b14dd516df34e3ae9fb94d96da0fa3d33e651cc244b0275a24ab0753b5c01eac2f8f0d700c587bbd6d8aeb6a4e99e1a9372655", d);
    hex_to_words_le("45462476f31c3dfde5ac5fde4862d33d917f52255d80555b543584a32b71762a1fc719a341c0e925e9fff02a657764ae78b143d324cfc8892695c55801237885", c);
    // R^2 mod m, R=2^512 (Pythonで事前計算・クロスチェック済み)
    hex_to_words_le("31dca803586dc1f2bb58168f46ec89166ac7ff155cfa0269ede66d495456171f57b21735c5753ad48c1be8c05883b13548a00ebf7381ecfa6eff1f9bcb31301e", r2m);

    uint32_t mprime = mont_word_compute_mprime(m[0]);

    uint32_t p[MW_NWORDS];
    rsa_modexp_hw(c, d, m, mprime, r2m, p);

    printf("result: ");
    for (int i = (int)MW_NWORDS - 1; i >= 0; i--) printf("%08x", p[i]);
    printf("\n");

    // 期待値: 0x9107f695023f (Python pow(v2dec, priv, n) でクロスチェック済み)
    uint32_t expected[MW_NWORDS];
    for (unsigned k = 0; k < MW_NWORDS; k++) expected[k] = 0;
    expected[0] = 0xf695023fu;
    expected[1] = 0x00009107u;

    int match = memcmp(p, expected, sizeof(expected)) == 0;
    printf("expected: ");
    for (int i = (int)MW_NWORDS - 1; i >= 0; i--) printf("%08x", expected[i]);
    printf("\n");

    printf("%s\n", match ? "TEST PASSED" : "TEST FAILED");
    return match ? 0 : 1;
}
