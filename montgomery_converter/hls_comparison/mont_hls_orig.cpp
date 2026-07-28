// mont_hls_orig.cpp
//   HLS 合成用「変換前」トップ関数（手書き CIOS モンゴメリ乗算）。
//   ループにパイプライン指示が無いベースライン。run_mont_orig.tcl から合成する。

#include <cstdint>

typedef uint32_t digit_t;
typedef uint64_t wide_t;

#define NWORDS 8   // 256 ビット法（32 ビット語 × 8）

// 変換前: パイプライン指示なしの素朴な CIOS
extern "C" void mont_mul_top(const digit_t a[NWORDS], const digit_t b[NWORDS],
                             digit_t c[NWORDS], const digit_t mod[NWORDS],
                             digit_t mprime)
{
    const unsigned nwords = NWORDS;
    digit_t t[NWORDS + 2];
    for (unsigned k = 0; k < nwords + 2; k++) t[k] = 0;

    for (unsigned i = 0; i < nwords; i++) {
        wide_t C = 0;
        for (unsigned j = 0; j < nwords; j++) {
            wide_t p = (wide_t)t[j] + (wide_t)a[j] * b[i] + C;
            t[j] = (digit_t)p;
            C    = p >> 32;
        }
        wide_t s      = (wide_t)t[nwords] + C;
        t[nwords]     = (digit_t)s;
        t[nwords + 1] = (digit_t)(s >> 32);

        digit_t m  = (digit_t)((wide_t)t[0] * mprime);
        wide_t  p0 = (wide_t)t[0] + (wide_t)m * mod[0];
        C = p0 >> 32;
        for (unsigned j = 1; j < nwords; j++) {
            wide_t p = (wide_t)t[j] + (wide_t)m * mod[j] + C;
            t[j - 1] = (digit_t)p;
            C        = p >> 32;
        }
        wide_t s2     = (wide_t)t[nwords] + C;
        t[nwords - 1] = (digit_t)s2;
        t[nwords]     = (digit_t)((wide_t)t[nwords + 1] + (s2 >> 32));
    }

    digit_t u[NWORDS];
    wide_t borrow = 0;
    for (unsigned j = 0; j < nwords; j++) {
        wide_t d = (wide_t)t[j] - mod[j] - borrow;
        u[j]     = (digit_t)d;
        borrow   = (d >> 32) & 1;
    }
    digit_t keep_t = (digit_t)0 - (digit_t)(t[nwords] < (digit_t)borrow);
    for (unsigned j = 0; j < nwords; j++)
        c[j] = (t[j] & keep_t) | (u[j] & ~keep_t);
}
