// mont_hls_p503_orig.cpp — SIKEp503 実装(mp_mul+rdc_mont)そのままのHLSトップ
// 「変換前」ベースライン。p503 の実定数を使用 (N=8, W=64)。

#include <cstdint>
#include "../include/mont_ops_p503_orig.hpp"

typedef uint64_t digit_t;
static constexpr unsigned NWORDS = 8;

using namespace mont_p503_orig;

extern "C" void mont_mul_p503_orig(const digit_t a[NWORDS], const digit_t b[NWORDS],
                                    digit_t c[NWORDS], const digit_t modp1[NWORDS])
{
#pragma HLS INLINE off
    MontOps_P503_Orig<digit_t, NWORDS, 3>::mul(a, b, c, modp1);
}
