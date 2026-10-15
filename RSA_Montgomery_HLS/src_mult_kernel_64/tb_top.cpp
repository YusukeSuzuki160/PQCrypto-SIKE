// tb_top.cpp (64bit語版) — kernel_top(montMult_words単体)の正当性検証。
// MontForm往復変換(c→MontForm(c)→戻すとc)で外部参照値なしに検証する。
#include <cstdio>
#include <cstring>
#include "kernel_top.h"

static void hex_to_words_le(const char *hex, uint64_t out[MW_NWORDS])
{
    // hexは128文字(64バイト、512bit)のビッグエンディアン16進文字列。
    // out[0]がLSW(最下位語)になるよう変換する(64bit語=16進16桁/語)。
    int len = (int)strlen(hex);
    for (unsigned w = 0; w < MW_NWORDS; w++)
    {
        uint64_t v = 0;
        for (int b = 0; b < 16; b++)
        {
            int pos = len - (int)(w * 16) - b - 1;
            char ch = (pos >= 0) ? hex[pos] : '0';
            unsigned nib = (ch >= '0' && ch <= '9') ? (unsigned)(ch - '0')
                         : (ch >= 'a' && ch <= 'f') ? (unsigned)(ch - 'a' + 10)
                         : (ch >= 'A' && ch <= 'F') ? (unsigned)(ch - 'A' + 10)
                         : 0u;
            v |= (uint64_t)nib << (4 * b);
        }
        out[w] = v;
    }
}

int main()
{
    uint64_t m[MW_NWORDS], c[MW_NWORDS], r2m[MW_NWORDS], one[MW_NWORDS];

    hex_to_words_le("758463d46999c11496449db8dddd1e407de2e9a8f33612f454866acddd759da8173d4e3fe8c4eaf121f86f87ac8e1d58f54e2c6a80bcf8c404884795252224ad", m);
    hex_to_words_le("45462476f31c3dfde5ac5fde4862d33d917f52255d80555b543584a32b71762a1fc719a341c0e925e9fff02a657764ae78b143d324cfc8892695c55801237885", c);
    hex_to_words_le("31dca803586dc1f2bb58168f46ec89166ac7ff155cfa0269ede66d495456171f57b21735c5753ad48c1be8c05883b13548a00ebf7381ecfa6eff1f9bcb31301e", r2m);
    for (unsigned k = 0; k < MW_NWORDS; k++) one[k] = 0;
    one[0] = 1;

    uint64_t mprime = mont_word_compute_mprime(m[0]);

    uint64_t mont_c[MW_NWORDS], back[MW_NWORDS];
    kernel_top(c, r2m, m, mprime, mont_c);
    kernel_top(mont_c, one, m, mprime, back);

    int match = memcmp(back, c, sizeof(c)) == 0;

    printf("c:    "); for (int i = (int)MW_NWORDS - 1; i >= 0; i--) printf("%016lx", (unsigned long)c[i]); printf("\n");
    printf("back: "); for (int i = (int)MW_NWORDS - 1; i >= 0; i--) printf("%016lx", (unsigned long)back[i]); printf("\n");
    printf("%s\n", match ? "TEST PASSED" : "TEST FAILED");
    return match ? 0 : 1;
}
