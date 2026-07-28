// mont_hls_karatsuba.cpp — 2-way Karatsuba + REDC HLS top
// 256-bit: T=uint64_t, NWORDS=4 (HALF=2)

#include <cstdint>
#include "../include/mont_ops_karatsuba.hpp"

typedef uint64_t digit_t;
static constexpr unsigned NWORDS = 4;

using namespace mont_karatsuba;

extern "C" void mont_mul_karatsuba(const digit_t a[NWORDS], const digit_t b[NWORDS],
                                   digit_t c[NWORDS], const digit_t mod[NWORDS],
                                   digit_t mprime)
{
#pragma HLS INLINE off
    MontOps_Karatsuba<digit_t, NWORDS>::mul(a, b, c, mod, mprime);
}
