// mont_hls_fios_csa_flat.cpp — FIOS-CSA 外側ループ完全展開版 HLS top
// Pre-sum 最適化 (carry chain ≈5ns/step) + 外側ループ UNROLL の組み合わせ。

#include <cstdint>
#include "../include/mont_ops_fios_csa_flat.hpp"

typedef uint64_t digit_t;
static constexpr unsigned NWORDS = 4;

using namespace mont_fios_csa_flat;

extern "C" void mont_mul_fios_csa_flat(const digit_t a[NWORDS], const digit_t b[NWORDS],
                                       digit_t c[NWORDS], const digit_t mod[NWORDS],
                                       digit_t mprime)
{
#pragma HLS INLINE off
    MontOps_FIOS_CSA_Flat<digit_t, NWORDS>::mul(a, b, c, mod, mprime);
}
