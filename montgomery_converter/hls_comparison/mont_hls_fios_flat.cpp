// mont_hls_fios_flat.cpp — FIOS 外側ループ完全展開版 HLS top
// 外側ループを PIPELINE の代わりに UNROLL することで、HLS が全 N 反復の
// データ依存を一括把握し、より積極的なスケジューリングを期待する。

#include <cstdint>
#include "../include/mont_ops_fios_flat.hpp"

typedef uint64_t digit_t;
static constexpr unsigned NWORDS = 4;

using namespace mont_fios_flat;

extern "C" void mont_mul_fios_flat(const digit_t a[NWORDS], const digit_t b[NWORDS],
                                   digit_t c[NWORDS], const digit_t mod[NWORDS],
                                   digit_t mprime)
{
#pragma HLS INLINE off
    MontOps_FIOS_Flat<digit_t, NWORDS>::mul(a, b, c, mod, mprime);
}
