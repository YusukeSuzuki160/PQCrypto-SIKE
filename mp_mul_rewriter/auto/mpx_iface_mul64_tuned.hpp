// mpx_iface_mul64_tuned.hpp
// Tuned 64-bit block schoolbook multiply with the original interface preserved.
#pragma once
#include <ap_int.h>
#include <type_traits>
#include <climits>
#include <cstdint>

#ifndef MPX_MUL64_UNROLL
#define MPX_MUL64_UNROLL 2  // Increase if you have spare DSP/LUT (try 2 or 4)
#endif

namespace mpx {

constexpr unsigned mpx_ceil_log2_u(unsigned x) {
    return (x <= 1) ? 0 : 1 + mpx_ceil_log2_u((x + 1) >> 1);
}

template <class Digit, unsigned MAX_NWORDS, bool LSW_FIRST = true>
struct PackedOps
{
    static_assert(std::is_unsigned<Digit>::value, "Digit must be unsigned integral type");
    static constexpr unsigned W = sizeof(Digit) * CHAR_BIT;
    static_assert(W == 64, "This tuned header expects Digit to be 64-bit.");

    using Big  = ap_uint<W * MAX_NWORDS>;
    using Big2 = ap_uint<2 * W * MAX_NWORDS>;

    static constexpr unsigned SUM_EXCESS = mpx_ceil_log2_u(MAX_NWORDS) + 2;
    using Col = ap_uint<128 + SUM_EXCESS>;

    static Big pack(const Digit *x, unsigned nwords)
    {
        Big A = 0;
        for (unsigned i = 0; i < nwords && i < MAX_NWORDS; ++i) {
        #pragma HLS loop_tripcount min=1 max=MAX_NWORDS
            if (LSW_FIRST) A.range((i + 1) * W - 1, i * W) = x[i];
            else           A.range((MAX_NWORDS - i) * W - 1, (MAX_NWORDS - 1 - i) * W) = x[i];
        }
        return A;
    }

    static void unpack(const Big& A, Digit *x, unsigned nwords)
    {
        for (unsigned i = 0; i < nwords && i < MAX_NWORDS; ++i) {
        #pragma HLS loop_tripcount min=1 max=MAX_NWORDS
            if (LSW_FIRST) x[i] = A.range((i + 1) * W - 1, i * W);
            else           x[i] = A.range((MAX_NWORDS - i) * W - 1, (MAX_NWORDS - 1 - i) * W);
        }
    }

    static void mul(const Digit *a, const Digit *b, Digit *c, unsigned nwords)
    {
    #pragma HLS INLINE off
        Big A = pack(a, nwords);
        Big B = pack(b, nwords);

        const unsigned total_bits = nwords * W;
        const unsigned A_BITS = W * MAX_NWORDS;
        const unsigned start_bit = LSW_FIRST ? 0u : (A_BITS - total_bits);
        const unsigned nblocks   = (total_bits + 64 - 1) / 64;

        Col S[2 * MAX_NWORDS + 1];
    #pragma HLS ARRAY_PARTITION variable=S cyclic factor=2 dim=1

        for (unsigned k = 0; k < 2 * MAX_NWORDS + 1; ++k) {
        #pragma HLS UNROLL factor=2
            S[k] = 0;
        }

        for (unsigned i = 0; i < nblocks; ++i) {
        #pragma HLS loop_tripcount min=1 max=MAX_NWORDS
            ap_uint<64> ai = 0;
            unsigned lo_i = start_bit + i * 64;
            if (lo_i < A_BITS) {
                unsigned hi_i = lo_i + 63;
                if (hi_i >= A_BITS) hi_i = A_BITS - 1;
                ai = A.range(hi_i, lo_i);
            }

            for (unsigned j = 0; j < nblocks; ++j) {
            #pragma HLS PIPELINE II=1
            #pragma HLS UNROLL factor=MPX_MUL64_UNROLL
                ap_uint<64> bj = 0;
                unsigned lo_j = start_bit + j * 64;
                if (lo_j < A_BITS) {
                    unsigned hi_j = lo_j + 63;
                    if (hi_j >= A_BITS) hi_j = A_BITS - 1;
                    bj = B.range(hi_j, lo_j);
                }

                ap_uint<128> prod = (ap_uint<128>)ai * (ap_uint<128>)bj;
            #pragma HLS RESOURCE variable=prod core=DSP48

                unsigned k0 = i + j;
                S[k0]     = (Col)S[k0]     + (Col)prod.range(63, 0);
                S[k0 + 1] = (Col)S[k0 + 1] + (Col)prod.range(127, 64);
            }
        }

        ap_uint<64> carry = 0;
        for (unsigned k = 0; k < 2 * nblocks; ++k) {
        #pragma HLS PIPELINE II=1
            ap_uint<128 + SUM_EXCESS + 64> t = (ap_uint<128 + SUM_EXCESS + 64>)S[k] + (ap_uint<128 + SUM_EXCESS + 64>)carry;
            ap_uint<64> word = (ap_uint<64>)t;
            carry = (ap_uint<64>)(t >> 64);
            if (k < 2 * nwords) {
                if (LSW_FIRST) c[k] = (Digit)word;
                else            c[2 * nwords - 1 - k] = (Digit)word;
            }
        }
        for (unsigned k = 2 * nblocks; k < 2 * nwords; ++k) {
        #pragma HLS PIPELINE II=1
            if (LSW_FIRST) c[k] = 0;
            else           c[2 * nwords - 1 - k] = 0;
        }
    }
};

} // namespace mpx
