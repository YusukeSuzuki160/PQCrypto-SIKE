// mpx_iface_mul64_lutopt.hpp
#pragma once
#include <ap_int.h>
#include <type_traits>
#include <climits>
#include <cstdint>

#ifndef MPX_MUL64_UNROLL
#define MPX_MUL64_UNROLL 1
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
    static_assert(W == 64, "This LUT-optimized header expects Digit to be 64-bit.");

    static constexpr unsigned EXCESS = mpx_ceil_log2_u(MAX_NWORDS) + 1;
    using Col64Sum = ap_uint<64 + EXCESS>;

    static void mul(const Digit *a, const Digit *b, Digit *c, unsigned nwords)
    {
    #pragma HLS INLINE off
        const unsigned nblocks = nwords;

        Col64Sum S_lo[2 * MAX_NWORDS + 1];
        Col64Sum S_hi[2 * MAX_NWORDS + 2];
    #pragma HLS RESOURCE variable=S_lo core=RAM_2P_BRAM
    #pragma HLS RESOURCE variable=S_hi core=RAM_2P_BRAM

        for (unsigned k = 0; k < 2 * MAX_NWORDS + 1; ++k) {
        #pragma HLS PIPELINE II=1
            S_lo[k] = 0;
        }
        for (unsigned k = 0; k < 2 * MAX_NWORDS + 2; ++k) {
        #pragma HLS PIPELINE II=1
            S_hi[k] = 0;
        }

        for (unsigned i = 0; i < nblocks; ++i) {
        #pragma HLS PIPELINE II=1
            ap_uint<64> ai = 0;
            if (LSW_FIRST) ai = (i < nwords) ? (ap_uint<64>)a[i] : (ap_uint<64>)0;
            else           ai = (i < nwords) ? (ap_uint<64>)a[nwords - 1 - i] : (ap_uint<64>)0;

            for (unsigned j = 0; j < nblocks; ++j) {
            #pragma HLS PIPELINE II=1
            #pragma HLS UNROLL factor=MPX_MUL64_UNROLL
                ap_uint<64> bj = 0;
                if (LSW_FIRST) bj = (j < nwords) ? (ap_uint<64>)b[j] : (ap_uint<64>)0;
                else           bj = (j < nwords) ? (ap_uint<64>)b[nwords - 1 - j] : (ap_uint<64>)0;

                ap_uint<128> prod = (ap_uint<128>)ai * (ap_uint<128>)bj;
            #pragma HLS RESOURCE variable=prod core=DSP48

                unsigned k0 = i + j;
                Col64Sum slo = S_lo[k0];
                Col64Sum shi = S_hi[k0 + 1];
                slo = (Col64Sum)slo + (Col64Sum)prod.range(63, 0);
                shi = (Col64Sum)shi + (Col64Sum)prod.range(127, 64);
                S_lo[k0]     = slo;
                S_hi[k0 + 1] = shi;
            }
        }

        ap_uint<64> carry = 0;
        for (unsigned k = 0; k < 2 * nblocks; ++k) {
        #pragma HLS PIPELINE II=1
            ap_uint<64 + EXCESS + 64> t = (ap_uint<64 + EXCESS + 64>)S_lo[k] + (ap_uint<64 + EXCESS + 64>)carry;
            ap_uint<64> word = (ap_uint<64>)t;
            carry = (ap_uint<64>)(t >> 64);
            carry = (ap_uint<64>)((ap_uint<65>)carry + (ap_uint<65>)S_hi[k]);

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
