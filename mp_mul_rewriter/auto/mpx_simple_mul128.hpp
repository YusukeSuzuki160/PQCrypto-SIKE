// mpx_simple_mul128.hpp
// Simple schoolbook multiplication using arrays of 128-bit blocks.
// BLOCK_BITS = 128
// a[0..n-1], b[0..n-1] are ap_uint<128>
// c[0..2n-1] is ap_uint<256>
//
// The algorithm is intentionally simple and readable:
//   for i in [0..n-1]:
//     carry = 0
//     for j in [0..n-1]:
//       sum = c[i+j] + a[i]*b[j] + carry
//       c[i+j] = lower(2*BLOCK_BITS) of sum
//       carry  = upper bits of sum
//     propagate remaining carry into c[i+n], c[i+n+1], ... as needed
//
// (c) 2025
#pragma once
#include <ap_int.h>
#include <cstddef>

namespace mpx {

template <unsigned N>
void mul(const ap_uint<128> a[N], const ap_uint<128> b[N],
         ap_uint<256> c[2*N])
{
#pragma HLS INLINE off
    // Zero-initialize result
    init: for (unsigned t = 0; t < 2*N; ++t) {
    #pragma HLS LOOP_TRIPCOUNT min=1 max=2*N
        c[t] = 0;
    }

    outer: for (unsigned i = 0; i < N; ++i) {
    #pragma HLS LOOP_TRIPCOUNT min=1 max=N
        ap_uint<256+1> carry = 0;

        inner: for (unsigned j = 0; j < N; ++j) {
        #pragma HLS LOOP_TRIPCOUNT min=1 max=N
            ap_uint<256> prod = (ap_uint<256>)a[i] * (ap_uint<256>)b[j];
            ap_uint<256+1> sum = (ap_uint<256+1>)c[i+j] + prod + carry;
            c[i+j] = (ap_uint<256>)sum;
            carry = sum >> 256;
        }

        // propagate any remaining carry
        unsigned k = i + N;
        while (carry != 0) {
            ap_uint<256+1> sum = (ap_uint<256+1>)c[k] + carry;
            c[k] = (ap_uint<256>)sum;
            carry = sum >> 256;
            ++k;
        }
    }
}

} // namespace mpx
