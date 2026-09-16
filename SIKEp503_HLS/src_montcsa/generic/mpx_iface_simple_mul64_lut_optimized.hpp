// mpx_iface_simple_mul64_lut_optimized.hpp
// LUT使用量を削減した最適化版（既存のインターフェースを維持）
// BLOCK_BITS = 64
// Interface:
//   template <class Digit, unsigned MAX_NWORDS, bool LSW_FIRST=true>
//   struct PackedOps { static void mul(const Digit* a,const Digit* b,Digit* c,unsigned nwords); }
//
// Implementation outline:
//   1) pack(a), pack(b) -> Big
//   2) block schoolbook (BLOCK_BITS) with a fixed-width accumulator Big2
//   3) unpack Big2 -> c (2*nwords words)
#pragma once
#include <ap_int.h>
#include <type_traits>
#include <climits>
#include <cstdint>

namespace mpx
{
    template <class Digit, unsigned MAX_NWORDS, bool LSW_FIRST = true>
    struct PackedOps
    {
        static_assert(std::is_unsigned<Digit>::value, "Digit must be unsigned integral type");
        static constexpr unsigned W = sizeof(Digit) * CHAR_BIT;
        static constexpr unsigned BLOCK_BITS = 64;

        using Big = ap_uint<W * MAX_NWORDS>;
        using Big2 = ap_uint<2 * W * MAX_NWORDS>;

        static Big pack(const Digit *x, unsigned nwords)
        {
            Big A = 0;
            for (unsigned i = 0; i < nwords && i < MAX_NWORDS; ++i)
            {
#pragma HLS loop_tripcount min = 1 max = MAX_NWORDS
#pragma HLS UNROLL factor = 1
                if (LSW_FIRST)
                    A.range((i + 1) * W - 1, i * W) = x[i];
                else
                    A.range((MAX_NWORDS - i) * W - 1, (MAX_NWORDS - 1 - i) * W) = x[i];
            }
            return A;
        }

        static void unpack(const Big &A, Digit *x, unsigned nwords)
        {
            for (unsigned i = 0; i < nwords && i < MAX_NWORDS; ++i)
            {
#pragma HLS loop_tripcount min = 1 max = MAX_NWORDS
#pragma HLS UNROLL factor = 1
                if (LSW_FIRST)
                    x[i] = A.range((i + 1) * W - 1, i * W);
                else
                    x[i] = A.range((MAX_NWORDS - i) * W - 1, (MAX_NWORDS - 1 - i) * W);
            }
        }

        static void mul(const Digit *a, const Digit *b, Digit *c, unsigned nwords)
        {
#pragma HLS INLINE off
#pragma HLS ALLOCATION instances = mul limit = 1 operation
#pragma HLS ALLOCATION instances = mul limit = 1 function
#pragma HLS RESOURCE variable = a core = RAM_1P
#pragma HLS RESOURCE variable = b core = RAM_1P
#pragma HLS RESOURCE variable = c core = RAM_1P
#pragma HLS BIND_STORAGE variable = a type = RAM_1P
#pragma HLS BIND_STORAGE variable = b type = RAM_1P
#pragma HLS BIND_STORAGE variable = c type = RAM_1P
#pragma HLS RESOURCE core = Mul_LUT
#pragma HLS DATAFLOW off
#pragma HLS DEPENDENCE variable = c inter false
            // Zero result
            for (unsigned i = 0; i < 2 * nwords; ++i)
            {
#pragma HLS loop_tripcount min = 1 max = (2 * MAX_NWORDS)
#pragma HLS UNROLL factor = 1
                c[i] = 0;
            }

            const unsigned total_bits = nwords * W;
            const unsigned A_BITS = W * MAX_NWORDS;

            Big A = pack(a, nwords);
            Big B = pack(b, nwords);
            Big2 ACC = 0;

            // LSW/MSW 配列に合わせた開始位置
            const unsigned start_bit = LSW_FIRST ? 0u : (A_BITS - total_bits);
            const unsigned nblocks = (total_bits + BLOCK_BITS - 1) / BLOCK_BITS;

            // LUT使用量を削減するため、DSP使用を最大化し、LUT使用を最小化
            for (unsigned i = 0; i < nblocks; ++i)
            {
#pragma HLS loop_tripcount min = 1 max = ((W * MAX_NWORDS + 64 - 1) / 64)
                // a の i番目ブロック
                ap_uint<BLOCK_BITS> ai = 0;
                unsigned lo_i = start_bit + i * BLOCK_BITS;
                if (lo_i < A_BITS)
                {
                    unsigned hi_i = lo_i + BLOCK_BITS - 1;
                    if (hi_i >= A_BITS)
                        hi_i = A_BITS - 1;
                    ai = A.range(hi_i, lo_i);
                }

                for (unsigned j = 0; j < nblocks; ++j)
                {
#pragma HLS loop_tripcount min = 1 max = ((W * MAX_NWORDS + 64 - 1) / 64)
#pragma HLS PIPELINE II = 1
#pragma HLS DEPENDENCE variable = c inter false

                    // b の j番目ブロック
                    ap_uint<BLOCK_BITS> bj = 0;
                    unsigned lo_j = start_bit + j * BLOCK_BITS;
                    if (lo_j < A_BITS)
                    {
                        unsigned hi_j = lo_j + BLOCK_BITS - 1;
                        if (hi_j >= A_BITS)
                            hi_j = A_BITS - 1;
                        bj = B.range(hi_j, lo_j);
                    }

                    // BLOCK_BITS x BLOCK_BITS -> 2*BLOCK_BITS (DSP使用を最大化)
                    ap_uint<128> prod = (ap_uint<128>)ai * (ap_uint<128>)bj;

                    // 位置合わせしてACCに加算（LUT使用を最小化）
                    unsigned shift = 2 * start_bit + (i + j) * BLOCK_BITS;
                    if (shift < 2 * A_BITS)
                    {
                        Big2 term = (Big2)prod;
                        term <<= shift;
                        ACC += term;
                    }
                }
            }

            // 書き戻し（LUT使用を最小化）
            if (LSW_FIRST)
            {
                for (unsigned t = 0; t < 2 * nwords; ++t)
                {
#pragma HLS loop_tripcount min = 1 max = (2 * MAX_NWORDS)
#pragma HLS UNROLL factor = 1
                    c[t] = (Digit)ACC.range((t + 1) * W - 1, t * W);
                }
            }
            else
            {
                for (unsigned t = 0; t < 2 * nwords; ++t)
                {
#pragma HLS loop_tripcount min = 1 max = (2 * MAX_NWORDS)
#pragma HLS UNROLL factor = 1
                    unsigned hi = 2 * A_BITS - 1 - t * W;
                    unsigned lo = 2 * A_BITS - (t + 1) * W;
                    c[t] = (Digit)ACC.range(hi, lo);
                }
            }
        }
    };
} // namespace mpx
