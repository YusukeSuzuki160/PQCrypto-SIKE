// mpx_packed_mul32.hpp
// BLOCK_BITS = 32
// PackedOps<Digit, MAX_NWORDS, LSW_FIRST> : mul() だけを公開（関数名は統一）
// 方式: BLOCK_BITS 学校式 × 固定幅アキュムレータ（データ依存 while 無し）
//
// 使い方例:
//   using Digit = ap_uint<64>;
//   using Ops = mpx::PackedOps<Digit, 8, true>;  // 64bit×8 = 512bit
//   Ops::mul(a, b, c, nwords); // 結果 c は 2*nwords words
//
// (c) 2025
#pragma once
#include <ap_int.h>
#include <type_traits>
#include <climits>
#include <cstdint>

namespace mpx {

template <class Digit, unsigned MAX_NWORDS, bool LSW_FIRST = true>
struct PackedOps
{
    static_assert(std::is_unsigned<Digit>::value, "Digit must be unsigned integral type");
    static constexpr unsigned W = sizeof(Digit) * CHAR_BIT;
    static constexpr unsigned BLOCK_BITS = 32;

    using Big  = ap_uint<W * MAX_NWORDS>;
    using Big2 = ap_uint<2 * W * MAX_NWORDS>;

    // ---- pack/unpack ----
    static Big pack(const Digit *x, unsigned nwords)
    {
        Big A = 0;
        for (unsigned i = 0; i < nwords && i < MAX_NWORDS; ++i) {
        #pragma HLS loop_tripcount min=1 max=MAX_NWORDS
            if (LSW_FIRST) {
                A.range((i + 1) * W - 1, i * W) = x[i];
            } else {
                A.range((MAX_NWORDS - i) * W - 1, (MAX_NWORDS - 1 - i) * W) = x[i];
            }
        }
        return A;
    }

    static void unpack(const Big& A, Digit *x, unsigned nwords)
    {
        for (unsigned i = 0; i < nwords && i < MAX_NWORDS; ++i) {
        #pragma HLS loop_tripcount min=1 max=MAX_NWORDS
            if (LSW_FIRST) {
                x[i] = A.range((i + 1) * W - 1, i * W);
            } else {
                x[i] = A.range((MAX_NWORDS - i) * W - 1, (MAX_NWORDS - 1 - i) * W);
            }
        }
    }

    // ---- mul (BLOCK_BITS 固定) ----
    static void mul(const Digit *a, const Digit *b, Digit *c, unsigned nwords)
    {
        constexpr unsigned A_BITS = W * MAX_NWORDS;
        constexpr unsigned NBLOCKS_MAX = (A_BITS + BLOCK_BITS - 1) / BLOCK_BITS;

        const unsigned total_bits = nwords * W;
        const unsigned nblocks    = (total_bits + BLOCK_BITS - 1) / BLOCK_BITS;

        Big A = pack(a, nwords);
        Big B = pack(b, nwords);
        Big2 ACC = 0;

        const unsigned start_bit = LSW_FIRST ? 0u : (A_BITS - total_bits);

        for (unsigned i = 0; i < nblocks; ++i) {
        #pragma HLS loop_tripcount min=1 max=NBLOCKS_MAX
            ap_uint<BLOCK_BITS> ai = 0;
            unsigned lo_i = start_bit + i * BLOCK_BITS;
            if (lo_i < A_BITS) {
                unsigned hi_i = lo_i + BLOCK_BITS - 1;
                if (hi_i >= A_BITS) hi_i = A_BITS - 1;
                ai = A.range(hi_i, lo_i);
            }

            for (unsigned j = 0; j < nblocks; ++j) {
            #pragma HLS loop_tripcount min=1 max=NBLOCKS_MAX
            #pragma HLS PIPELINE II=1
                ap_uint<BLOCK_BITS> bj = 0;
                unsigned lo_j = start_bit + j * BLOCK_BITS;
                if (lo_j < A_BITS) {
                    unsigned hi_j = lo_j + BLOCK_BITS - 1;
                    if (hi_j >= A_BITS) hi_j = A_BITS - 1;
                    bj = B.range(hi_j, lo_j);
                }

                ap_uint<2 * BLOCK_BITS> prod = (ap_uint<2 * BLOCK_BITS>)ai * (ap_uint<2 * BLOCK_BITS>)bj;

                unsigned shift = 2 * start_bit + (i + j) * BLOCK_BITS;
                if (shift < 2 * A_BITS) {
                    Big2 term = (Big2)prod;
                    term <<= shift;
                    ACC += term;
                }
            }
        }

        if (LSW_FIRST) {
            for (unsigned t = 0; t < 2 * nwords; ++t) {
            #pragma HLS loop_tripcount min=1 max=(2*MAX_NWORDS)
                c[t] = (Digit)ACC.range((t + 1) * W - 1, t * W);
            }
        } else {
            for (unsigned t = 0; t < 2 * nwords; ++t) {
            #pragma HLS loop_tripcount min=1 max=(2*MAX_NWORDS)
                unsigned hi = 2 * A_BITS - 1 - t * W;
                unsigned lo = 2 * A_BITS - (t + 1) * W;
                c[t] = (Digit)ACC.range(hi, lo);
            }
        }
    }

    // （必要なら add/sub も統一名ヘッダに含められます）
};

} // namespace mpx
