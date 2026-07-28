// mont_hls_fios.cpp — FIOS (Finely Integrated Operand Scanning) HLS top
// 256-bit: T=uint64_t, NWORDS=4 (W=64, N=4 — current best config from sweep)

#include <cstdint>
#include "../include/mont_ops_fios.hpp"

typedef uint64_t digit_t;
static constexpr unsigned NWORDS = 4;  // 256-bit

using namespace mont_fios;

extern "C" void mont_mul_fios(const digit_t a[NWORDS], const digit_t b[NWORDS],
                              digit_t c[NWORDS], const digit_t mod[NWORDS],
                              digit_t mprime)
{
#pragma HLS INLINE off
    MontOps_FIOS<digit_t, NWORDS>::mul(a, b, c, mod, mprime);
}
