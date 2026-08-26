// mont_hls_csa_square_n8.cpp — 平方専用コア (N=8, p503実サイズ) HLSトップ

#include <cstdint>
#include "../include/mont_ops_fios_csa_square.hpp"

typedef uint64_t digit_t;
static constexpr unsigned NWORDS = 8;

using namespace mont_fios_csa_square;

extern "C" void mont_sqr_csa_square_n8(const digit_t a[NWORDS], digit_t c[NWORDS],
                                    const digit_t mod[NWORDS], digit_t mprime)
{
#pragma HLS INLINE off
    MontOps_FIOS_CSA_Square<digit_t, NWORDS>::mul(a, c, mod, mprime);
}
