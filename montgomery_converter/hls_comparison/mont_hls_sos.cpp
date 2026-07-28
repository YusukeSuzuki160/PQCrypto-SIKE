// mont_hls_sos.cpp — SOS (Separated Operand Scanning) HLS top
// 256-bit: T=uint64_t, NWORDS=4

#include <cstdint>
#include "../include/mont_ops_sos.hpp"

typedef uint64_t digit_t;
static constexpr unsigned NWORDS = 4;

using namespace mont_sos;

extern "C" void mont_mul_sos(const digit_t a[NWORDS], const digit_t b[NWORDS],
                             digit_t c[NWORDS], const digit_t mod[NWORDS],
                             digit_t mprime)
{
#pragma HLS INLINE off
    MontOps_SOS<digit_t, NWORDS>::mul(a, b, c, mod, mprime);
}
