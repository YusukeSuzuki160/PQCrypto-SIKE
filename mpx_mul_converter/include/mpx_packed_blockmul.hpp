// mpx_packed_blockmul.hpp
// PackedOps に 16/32/64/256-bit 計算単位の乗算バージョンを追加
// - mul16 / mul32 / mul64 / mul256 を提供
// - 内部はテンプレート mul_block<BLOCK_BITS>() で実装
// - HLS でレイテンシが ? にならないよう、データ依存 while を排除し固定幅アキュムレータ方式
//
// 使い方:
//   using Ops = mpx::PackedOps<ap_uint<64>, 8, true>; // Digit=64bit, MAX_NWORDS=8（=512bit）
//   Ops::mul16(a, b, c, nwords); // 16bit 計算単位で学校式乗算（結果 c は 2*nwords）
//
// 注意:
//  * LSW_FIRST=true/false の両方をサポートします（pack/unpack と同一の並び規約を保持）。
//  * BLOCK_BITS と Digit 幅の整合性は不要（16/32 など Digit=64 と非整合でもOK）。
//  * nwords は 1..MAX_NWORDS。結果は 2*nwords words を書き込みます。
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
    static constexpr unsigned W = sizeof(Digit) * CHAR_BIT; // 例: Digit=ap_uint<64> -> W=64

    using Big    = ap_uint<W * MAX_NWORDS>;
    using Big2   = ap_uint<2 * W * MAX_NWORDS>;

    // ---- パック/アンパック（既存と同様） ----
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

    // ---- 加算/減算 ----
    static void add(Digit *x, const Digit *y, unsigned nwords)
    {
        Big A = pack(x, nwords);
        Big B = pack(y, nwords);
        Big S = A + B;
        unpack(S, x, nwords);
    }

    static unsigned sub(Digit *a, const Digit *b, unsigned nwords)
    {
        Big A = pack(a, nwords);
        Big B = pack(b, nwords);
        Big D = A - B;
        unpack(D, a, nwords);

        // 借り検出（簡易）
        bool borrow = false;
        if (nwords < MAX_NWORDS) {
            borrow = D[W * nwords];
        } else {
            borrow = D[W * MAX_NWORDS - 1];
        }
        return (unsigned)borrow;
    }

    // =====================================================================
    //  汎用：BLOCK_BITS 単位の学校式乗算（固定幅ACCに累算）
    // =====================================================================
    template <unsigned BLOCK_BITS>
    static void mul_block(const Digit *a, const Digit *b, Digit *c, unsigned nwords)
    {
        static_assert(BLOCK_BITS == 16 || BLOCK_BITS == 32 || BLOCK_BITS == 64 || BLOCK_BITS == 128 || BLOCK_BITS == 256,
                      "BLOCK_BITS must be one of {16,32,64,128,256}");

        constexpr unsigned A_BITS = W * MAX_NWORDS;
        constexpr unsigned NBLOCKS_MAX = (A_BITS + BLOCK_BITS - 1) / BLOCK_BITS; // ceil(A_BITS/BLOCK_BITS)

        // 入出力ビット幅
        const unsigned total_bits = nwords * W;
        const unsigned nblocks    = (total_bits + BLOCK_BITS - 1) / BLOCK_BITS; // ceil(total_bits/BLOCK_BITS)

        // 入力をパック
        Big A = pack(a, nwords);
        Big B = pack(b, nwords);

        // ACC は 2*A_BITS 幅で固定（上限で確保）
        Big2 ACC = 0;

        // LSW/MSW 配列レイアウトに応じて、実データの開始ビット（LSB側）を決定
        const unsigned start_bit = LSW_FIRST ? 0u : (A_BITS - total_bits);

        // ブロック学校式
        for (unsigned i = 0; i < nblocks; ++i) {
        #pragma HLS loop_tripcount min=1 max=NBLOCKS_MAX
            // A ブロック抽出（部分超過は0）
            ap_uint<BLOCK_BITS> ai = 0;
            {
                unsigned lo = start_bit + i * BLOCK_BITS;
                if (lo < A_BITS) {
                    unsigned hi = lo + BLOCK_BITS - 1;
                    if (hi >= A_BITS) hi = A_BITS - 1;
                    ai = A.range(hi, lo);
                }
            }

            for (unsigned j = 0; j < nblocks; ++j) {
            #pragma HLS loop_tripcount min=1 max=NBLOCKS_MAX
            #pragma HLS PIPELINE II=1

                ap_uint<BLOCK_BITS> bj = 0;
                {
                    unsigned lo = start_bit + j * BLOCK_BITS;
                    if (lo < A_BITS) {
                        unsigned hi = lo + BLOCK_BITS - 1;
                        if (hi >= A_BITS) hi = A_BITS - 1;
                        bj = B.range(hi, lo);
                    }
                }

                // BLOCK_BITS x BLOCK_BITS -> 2*BLOCK_BITS
                ap_uint<2 * BLOCK_BITS> prod = (ap_uint<2 * BLOCK_BITS>)ai * (ap_uint<2 * BLOCK_BITS>)bj;

                // シフト位置（両オペランドの先頭オフセット + ブロック位置和）
                unsigned shift = 2 * start_bit + (i + j) * BLOCK_BITS;
                if (shift < 2 * A_BITS) {
                    Big2 term = (Big2)prod;
                    term <<= shift;
                    ACC += term;
                }
            }
        }

        // 出力（2 * nwords words）
        if (LSW_FIRST) {
            for (unsigned t = 0; t < 2 * nwords; ++t) {
            #pragma HLS loop_tripcount min=1 max=(2*MAX_NWORDS)
                c[t] = (Digit)ACC.range((t + 1) * W - 1, t * W);
            }
        } else {
            // MSW-first: 上位側から並べる
            for (unsigned t = 0; t < 2 * nwords; ++t) {
            #pragma HLS loop_tripcount min=1 max=(2*MAX_NWORDS)
                unsigned hi = 2 * A_BITS - 1 - t * W;
                unsigned lo = 2 * A_BITS - (t + 1) * W;
                c[t] = (Digit)ACC.range(hi, lo);
            }
        }
    }

    // ---- ラッパ（要求の 4 種） ----
    static void mul16 (const Digit *a, const Digit *b, Digit *c, unsigned nwords) { mul_block<16 >(a, b, c, nwords); }
    static void mul32 (const Digit *a, const Digit *b, Digit *c, unsigned nwords) { mul_block<32 >(a, b, c, nwords); }
    static void mul64 (const Digit *a, const Digit *b, Digit *c, unsigned nwords) { mul_block<64 >(a, b, c, nwords); }
    static void mul256(const Digit *a, const Digit *b, Digit *c, unsigned nwords) { mul_block<256>(a, b, c, nwords); }

    // 参考: 既存の 128bit 単位も用意
    static void mul128(const Digit *a, const Digit *b, Digit *c, unsigned nwords) { mul_block<128>(a, b, c, nwords); }
};

} // namespace mpx
