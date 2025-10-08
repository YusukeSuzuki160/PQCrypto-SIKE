// mpx_packed_mul64_fast.hpp
// 高速版：64-bit リム配列に部分積を「オフセット付き」で加算していく方式
// BLOCK_BITS = 64
#pragma once
#include <ap_int.h>
#include <type_traits>
#include <climits>

namespace mpx {
template <class Digit, unsigned MAX_NWORDS, bool LSW_FIRST = true>
struct PackedOps
{
    static_assert(std::is_unsigned<Digit>::value, "Digit must be unsigned integral type");
    static constexpr unsigned W = sizeof(Digit) * CHAR_BIT;
    static constexpr unsigned BLOCK_BITS = 64;
    static constexpr unsigned MAX_ACC_LIMBS = 2*MAX_NWORDS + 3;

    using Big = ap_uint<W * MAX_NWORDS>;

    static Big pack(const Digit *x, unsigned nwords)
    {
        Big A = 0;
        for (unsigned i = 0; i < nwords && i < MAX_NWORDS; ++i) {
        #pragma HLS loop_tripcount min=1 max=MAX_NWORDS
            if (LSW_FIRST) A.range((i+1)*W-1, i*W) = x[i];
            else           A.range((MAX_NWORDS - i)*W - 1, (MAX_NWORDS - 1 - i)*W) = x[i];
        }
        return A;
    }

    static void unpack_limbs(const ap_uint<64>* acc, Digit* c, unsigned nwords)
    {
        if (LSW_FIRST) {
            for (unsigned t=0;t<2*nwords;++t){ 
            #pragma HLS loop_tripcount min=1 max=(2*MAX_NWORDS)
                ap_uint<64> w = acc[t];
                c[t] = (Digit)w;
            }
        } else {
            for (unsigned t=0;t<2*nwords;++t){ 
            #pragma HLS loop_tripcount min=1 max=(2*MAX_NWORDS)
                c[t] = (Digit)acc[2*nwords-1 - t];
            }
        }
    }

    static void mul(const Digit* a, const Digit* b, Digit* c, unsigned nwords)
    {
    #pragma HLS INLINE off
        ap_uint<64> acc[MAX_ACC_LIMBS];
    #pragma HLS ARRAY_PARTITION variable=acc cyclic factor=2 dim=1
        for (unsigned i=0;i<MAX_ACC_LIMBS;++i){ 
        #pragma HLS UNROLL factor=2
            acc[i]=0; 
        }

        const unsigned total_bits = nwords * W;
        const unsigned A_BITS = W * MAX_NWORDS;
        const unsigned start_bit = LSW_FIRST ? 0u : (A_BITS - total_bits);
        const unsigned nblocks = (total_bits + BLOCK_BITS - 1) / BLOCK_BITS;

        Big A = pack(a, nwords);
        Big B = pack(b, nwords);

        outer_i: for (unsigned i=0;i<nblocks;++i){
        #pragma HLS loop_tripcount min=1 max=MAX_NWORDS
            ap_uint<BLOCK_BITS> ai = 0;
            unsigned lo_i = start_bit + i*BLOCK_BITS;
            if (lo_i < A_BITS) {
                unsigned hi_i = lo_i + BLOCK_BITS - 1;
                if (hi_i >= A_BITS) hi_i = A_BITS - 1;
                ai = A.range(hi_i, lo_i);
            }

            inner_j: for (unsigned j=0;j<nblocks;++j){
            #pragma HLS PIPELINE II=1
                ap_uint<BLOCK_BITS> bj = 0;
                unsigned lo_j = start_bit + j*BLOCK_BITS;
                if (lo_j < A_BITS) {
                    unsigned hi_j = lo_j + BLOCK_BITS - 1;
                    if (hi_j >= A_BITS) hi_j = A_BITS - 1;
                    bj = B.range(hi_j, lo_j);
                }

                ap_uint<128> prod = (ap_uint<128>)ai * (ap_uint<128>)bj;
            #pragma HLS RESOURCE variable=prod core=DSP48

                unsigned base_shift = 2*start_bit + (i + j)*BLOCK_BITS;
                unsigned limb = base_shift >> 6;
                unsigned off  = base_shift & 63;

                ap_uint<64> part[3];
            #pragma HLS ARRAY_PARTITION variable=part complete dim=1
                part[0] = (ap_uint<64>)prod.range(63,0);
                    part[1] = (ap_uint<64>)prod.range(127,64);
                part[2] = 0;

                ap_uint<64> carry = 0;
                add_parts: for (unsigned k=0;k<3;++k){
                #pragma HLS UNROLL
                    if (limb + k >= MAX_ACC_LIMBS) break;
                    ap_uint<128> sum = (ap_uint<128>)acc[limb + k] 
                                     + ((ap_uint<128>)part[k] << off)
                                     + (ap_uint<128>)carry;
                    acc[limb + k] = (ap_uint<64>)sum;
                    carry = (ap_uint<64>)(sum >> 64);
                }
                if (carry && limb + 3 < MAX_ACC_LIMBS) {
                    ap_uint<128> sum = (ap_uint<128>)acc[limb + 3] + (ap_uint<128>)carry;
                    acc[limb + 3] = (ap_uint<64>)sum;
                }
            }
        }

        unpack_limbs(acc, c, nwords);
    }
};
} // namespace mpx
