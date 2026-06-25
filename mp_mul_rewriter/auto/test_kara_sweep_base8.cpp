#ifndef MPX_KARA_BASE_WORDS
#define MPX_KARA_BASE_WORDS 8
#endif
#ifndef MPX_MUL_BITS
#define MPX_MUL_BITS 512
#endif
#include "mpx_packed_karatsuba.hpp"
#include <ap_int.h>
#include <climits>
#include <cstdint>

using digit_t = uint64_t;

void mp_mul_kara(const digit_t *a, const digit_t *b, digit_t *c, const unsigned nwords)
{
  mpx::PackedOps<digit_t, 8, true>::mul(a, b, c, nwords);
}

void test_mul_karatsuba_configurable(const digit_t a[8], const digit_t b[8], digit_t c[16])
{
#pragma HLS INTERFACE bram port = a
#pragma HLS INTERFACE bram port = b
#pragma HLS INTERFACE bram port = c
#pragma HLS INTERFACE s_axilite port = return bundle = control
  mp_mul_kara(a, b, c, 8);
}
