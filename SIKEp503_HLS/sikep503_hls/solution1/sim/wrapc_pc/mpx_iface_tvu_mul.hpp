// mpx_iface_optimized_mul.hpp
// LUT削減 + 速度維持の最適化版
// - 可変シフト/巨大幅加算を廃してLUT削減
// - 乗算はDSPへ誘導
// - パイプライン最適化で速度維持
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
        using Block = ap_uint<BLOCK_BITS>;

        static Big pack(const Digit *x, unsigned nwords)
        {
            Big A = 0;
            for (unsigned i = 0; i < nwords && i < MAX_NWORDS; ++i)
            {
#pragma HLS loop_tripcount min = 1 max = MAX_NWORDS
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
                if (LSW_FIRST)
                    x[i] = A.range((i + 1) * W - 1, i * W);
                else
                    x[i] = A.range((MAX_NWORDS - i) * W - 1, (MAX_NWORDS - 1 - i) * W);
            }
        }

        static void mul(const Digit *a, const Digit *b, Digit *c, unsigned nwords)
        {
#pragma HLS INLINE off
            // Zero result
            for (unsigned i = 0; i < 2 * nwords; ++i)
            {
#pragma HLS loop_tripcount min = 1 max = (2 * MAX_NWORDS)
                c[i] = 0;
            }

            const unsigned total_bits = nwords * W;
            const unsigned A_BITS = W * MAX_NWORDS;
            const unsigned nblocks = (total_bits + BLOCK_BITS - 1) / BLOCK_BITS;

            Big A = pack(a, nwords);
            Big B = pack(b, nwords);

            // LSW/MSW 配列に合わせた開始位置
            const unsigned start_bit = LSW_FIRST ? 0u : (A_BITS - total_bits);

            // アキュムレータ配列（LUT削減のため固定サイズ）
            const unsigned ACC_SIZE = 2 * MAX_NWORDS + 4; // 固定サイズに変更
            Block acc[ACC_SIZE];
#pragma HLS bind_storage variable = acc type = ram_2p impl = bram
#pragma HLS array_partition variable = acc cyclic factor = 2 dim = 1

            // クリア
            for (unsigned k = 0; k < ACC_SIZE; ++k)
            {
#pragma HLS UNROLL factor = 2
                acc[k] = 0;
            }

            // ブロック学校式乗算（LUT削減版）
            for (unsigned i = 0; i < nblocks; ++i)
            {
#pragma HLS loop_tripcount min = 1 max = ((W * MAX_NWORDS + BLOCK_BITS - 1) / BLOCK_BITS)
                // a の i番目ブロック
                Block ai = 0;
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
#pragma HLS loop_tripcount min = 1 max = ((W * MAX_NWORDS + BLOCK_BITS - 1) / BLOCK_BITS)
#pragma HLS PIPELINE II = 1

                    // b の j番目ブロック
                    Block bj = 0;
                    unsigned lo_j = start_bit + j * BLOCK_BITS;
                    if (lo_j < A_BITS)
                    {
                        unsigned hi_j = lo_j + BLOCK_BITS - 1;
                        if (hi_j >= A_BITS)
                            hi_j = A_BITS - 1;
                        bj = B.range(hi_j, lo_j);
                    }

                    // BLOCK_BITS x BLOCK_BITS -> 2*BLOCK_BITS
                    ap_uint<2 * BLOCK_BITS> prod = (ap_uint<2 * BLOCK_BITS>)ai * (ap_uint<2 * BLOCK_BITS>)bj;
#pragma HLS bind_op op = mul impl = DSP

                    // 位置合わせ（可変シフト廃止）: k = i + j
                    add_prod_to_acc(prod, acc, i + j, ACC_SIZE);
                }
            }

            // 基数変換: 2^BLOCK_BITS -> 2^W
            convert_blocks_to_digits(acc, c, nwords, ACC_SIZE);
        }

    private:
        // 部分積をアキュムレータに加算（LUT削減版）
        static void add_prod_to_acc(ap_uint<2 * BLOCK_BITS> prod, Block *acc, unsigned k, unsigned acc_size)
        {
#pragma HLS INLINE
            if (k >= acc_size)
                return;

            Block lo = prod.range(BLOCK_BITS - 1, 0);
            Block hi = prod.range(2 * BLOCK_BITS - 1, BLOCK_BITS);

            // acc[k] += lo
            ap_uint<BLOCK_BITS + 1> s0 = (ap_uint<BLOCK_BITS + 1>)acc[k] + (ap_uint<BLOCK_BITS + 1>)lo;
            acc[k] = s0.range(BLOCK_BITS - 1, 0);
            ap_uint<1> carry0 = s0[BLOCK_BITS];

            // acc[k+1] += hi + carry0
            if (k + 1 < acc_size)
            {
                ap_uint<BLOCK_BITS + 1> s1 = (ap_uint<BLOCK_BITS + 1>)acc[k + 1] + (ap_uint<BLOCK_BITS + 1>)hi + (ap_uint<BLOCK_BITS + 1>)carry0;
                acc[k + 1] = s1.range(BLOCK_BITS - 1, 0);
                ap_uint<1> carry1 = s1[BLOCK_BITS];

                // キャリー伝播（1段のみ、LUT削減）
                if (carry1 && (k + 2 < acc_size))
                {
                    acc[k + 2] = acc[k + 2] + 1;
                }
            }
        }

        // 基数変換: 2^BLOCK_BITS -> 2^W
        static void convert_blocks_to_digits(Block *acc, Digit *c, unsigned nwords, unsigned acc_size)
        {
#pragma HLS INLINE off
            const unsigned OUT = 2 * nwords;
            const unsigned TOTAL_OUT_BITS = OUT * W;

            // ビットバッファ（LUT削減のため固定サイズ）
            const int BUF_BITS = 128; // 十分な幅
            ap_uint<BUF_BITS> bitbuf = 0;
            unsigned buf_bits = 0;
            unsigned out_cnt = 0;

            // 初期化
            for (unsigned i = 0; i < OUT; ++i)
            {
#pragma HLS UNROLL factor = 2
                c[i] = 0;
            }

            if (LSW_FIRST)
            {
                // LSW-first: 下位から処理
                for (unsigned k = 0; k < acc_size && out_cnt < OUT; ++k)
                {
#pragma HLS PIPELINE II = 1
                    // ブロックをバッファに追加
                    bitbuf |= ((ap_uint<BUF_BITS>)acc[k]) << buf_bits;
                    buf_bits += BLOCK_BITS;

                    // ワードを抽出
                    while (buf_bits >= W && out_cnt < OUT)
                    {
                        c[out_cnt++] = (Digit)bitbuf.range(W - 1, 0);
                        bitbuf >>= W;
                        buf_bits -= W;
                    }
                }
            }
            else
            {
                // MSW-first: 上位から処理
                for (int k = (int)acc_size - 1; k >= 0 && out_cnt < OUT; --k)
                {
#pragma HLS PIPELINE II = 1
                    // ブロックをバッファに追加
                    bitbuf |= ((ap_uint<BUF_BITS>)acc[k]) << buf_bits;
                    buf_bits += BLOCK_BITS;

                    // ワードを抽出（逆順）
                    while (buf_bits >= W && out_cnt < OUT)
                    {
                        c[OUT - 1 - out_cnt] = (Digit)bitbuf.range(W - 1, 0);
                        out_cnt++;
                        bitbuf >>= W;
                        buf_bits -= W;
                    }
                }
            }

            // 残りを処理
            while (buf_bits >= W && out_cnt < OUT)
            {
                if (LSW_FIRST)
                {
                    c[out_cnt++] = (Digit)bitbuf.range(W - 1, 0);
                }
                else
                {
                    c[OUT - 1 - out_cnt] = (Digit)bitbuf.range(W - 1, 0);
                    out_cnt++;
                }
                bitbuf >>= W;
                buf_bits -= W;
            }
        }
    };
} // namespace mpx