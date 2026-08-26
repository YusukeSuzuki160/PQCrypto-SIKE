// mont_hls_fios_csa.cpp — FIOS + CSA inner loop HLS top (256-bit)
#include <cstdint>
#include "../include/mont_ops_fios_csa.hpp"

typedef uint64_t digit_t;
static constexpr unsigned NWORDS = 4;

using namespace mont_fios_csa;

extern "C" void mont_mul_fios_csa(const digit_t a[NWORDS], const digit_t b[NWORDS],
                                   digit_t c[NWORDS], const digit_t mod[NWORDS],
                                   digit_t mprime)
{
#pragma HLS INLINE off
    MontOps_FIOS_CSA<digit_t, NWORDS>::mul(a, b, c, mod, mprime);
}
