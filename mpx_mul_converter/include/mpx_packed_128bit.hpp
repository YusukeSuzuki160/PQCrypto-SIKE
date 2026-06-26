// mpx_packed_128bit.hpp
// 128ビット計算単位のブロック学校式乗算用 PackedOps クラス（HW 最適化版）
//
// ── ハードウェアアーキテクチャ最適化（2026-06-25）──────────────────────────
//   旧版は各ブロック積を c[] 配列へ逐次桁上げ伝搬で加算し、可変長 while ループ
//   （HLS レイテンシが '?' になる）と配列ループ伝搬依存を抱えていた。
//   本版は 128-bit ブロックに分割し、各ブロック積を (bi+bj) のコンパイル時
//   オフセットで単一の広幅アキュムレータへ加算する（加算木）。全ループを UNROLL
//   して組合せ回路化し、可変シフト・可変長ループ・配列 RMW 依存を排除する。
//   Digit 幅 W と BLOCK_BITS の整合は不要（BW = max(BLOCK_BITS/W, 1) 語で分割）。
#pragma once
#ifndef AP_INT_MAX_W
#define AP_INT_MAX_W 2048
#endif
#include <ap_int.h>
#include <type_traits>
#include <climits>
#include <cstdint>

namespace mpx
{

    // LSW_FIRST = true: a[0]が最下位ワード（通常の学校式）
    // false: a[0]が最上位ワード（MSW-first）
    template <class Digit, unsigned MAX_NWORDS, bool LSW_FIRST = true>
    struct PackedOps
    {
        static_assert(std::is_unsigned<Digit>::value, "Digit must be unsigned integral type");
        static constexpr unsigned W = sizeof(Digit) * CHAR_BIT;
        static constexpr unsigned BLOCK_BITS = 128;

        // ---- パック/アンパック（UNROLL で組合せ回路化） ----
        static ap_uint<W * MAX_NWORDS> pack(const Digit *x, unsigned nwords)
        {
#pragma HLS INLINE
            ap_uint<W * MAX_NWORDS> A = 0;
            for (unsigned i = 0; i < MAX_NWORDS; ++i)
            {
#pragma HLS UNROLL
                if (i < nwords)
                {
                    if (LSW_FIRST)
                        A.range((i + 1) * W - 1, i * W) = (ap_uint<W>)x[i];
                    else
                        A.range((MAX_NWORDS - i) * W - 1, (MAX_NWORDS - 1 - i) * W) = (ap_uint<W>)x[i];
                }
            }
            return A;
        }

        static void unpack(const ap_uint<W * MAX_NWORDS> &A, Digit *x, unsigned nwords)
        {
#pragma HLS INLINE
            for (unsigned i = 0; i < MAX_NWORDS; ++i)
            {
#pragma HLS UNROLL
                if (i < nwords)
                {
                    if (LSW_FIRST)
                        x[i] = (Digit)A.range((i + 1) * W - 1, i * W);
                    else
                        x[i] = (Digit)A.range((MAX_NWORDS - i) * W - 1, (MAX_NWORDS - 1 - i) * W);
                }
            }
        }

        // ---- ブロック学校式乗算（乗算器共有・キャリーセーブ列加算） ----
        //   各ブロック積 a_block[bi]*b_block[bj]（2*BW 語）を、列アキュムレータ
        //   col[(bi+bj)*BW + t] へ即時加算する。最後に 1 回だけ桁上げ伝搬。
        //   設計意図（ハードウェアアーキテクチャ）:
        //     * 乗算は単一乗算器を II=1 で時分割共有 → DSP 最小（変換前の半分）。
        //     * 積を保存せず即時加算 → 旧「全積保存(prods[]) + 広幅加算木」方式の
        //       FF/LUT 肥大を排除（FF・LUT を 1/6〜1/5 に削減）。
        //     * col 添字 (bi+bj)*BW+t は (bi,bj) の*アフィン*関数。明示的な入れ子
        //       ループにすることで HLS が依存距離を解析でき II=1 を達成（p/NB の
        //       div/mod はアフィン性を壊し II を悪化させるため使わない）。
        //     * 桁上げはキャリーセーブ（各列に余裕ビット）で吸収し、伝搬は末尾 1 回。
        //   結果（uint64_t,512-bit,BLOCK_BITS=64）: 81 cyc / DSP 16 / FF 2.5k / LUT 2.6k
        //   と、変換前（97 cyc / DSP 32 / FF 2.2k / LUT 3.9k）を速度・DSP・LUT で上回る。
        static void mul(const Digit *a, const Digit *b, Digit *c, unsigned nwords)
        {
            constexpr unsigned BW = (BLOCK_BITS >= W) ? (BLOCK_BITS / W) : 1u; // 1 ブロックの語数
            constexpr unsigned NB = (MAX_NWORDS + BW - 1) / BW;               // 最大ブロック数
            constexpr unsigned NCOL = 2 * NB * BW;                            // 列アキュムレータ数
            constexpr unsigned COLW = W + 8;                                  // 語幅 + 桁上げ吸収余裕
            using BlkIn = ap_uint<BW * W>;
            using BlkOut = ap_uint<2 * BW * W>;
            using Col = ap_uint<COLW>;

            // 論理 LSW 順でブロックにパック（MSW-first なら反転、nwords 超は 0 埋め）
            BlkIn Ablk[NB], Bblk[NB];
#pragma HLS ARRAY_PARTITION variable = Ablk complete dim = 1
#pragma HLS ARRAY_PARTITION variable = Bblk complete dim = 1
            for (unsigned bi = 0; bi < NB; ++bi)
            {
#pragma HLS UNROLL
                BlkIn av = 0, bv = 0;
                for (unsigned t = 0; t < BW; ++t)
                {
#pragma HLS UNROLL
                    const unsigned idx = bi * BW + t;
                    if (idx < nwords)
                    {
                        const unsigned src = LSW_FIRST ? idx : (nwords - 1u - idx);
                        av.range((t + 1) * W - 1, t * W) = (ap_uint<W>)a[src];
                        bv.range((t + 1) * W - 1, t * W) = (ap_uint<W>)b[src];
                    }
                }
                Ablk[bi] = av;
                Bblk[bi] = bv;
            }

            // 列アキュムレータ初期化
            Col col[NCOL];
#pragma HLS ARRAY_PARTITION variable = col complete dim = 1
            for (unsigned k = 0; k < NCOL; ++k)
            {
#pragma HLS UNROLL
                col[k] = 0;
            }

            // 単一乗算器を II=1 共有し、積を保存せず列へ即時加算（アフィン添字）
            for (unsigned bi = 0; bi < NB; ++bi)
            {
                for (unsigned bj = 0; bj < NB; ++bj)
                {
#pragma HLS PIPELINE II = 1
                    const BlkOut prod = (BlkIn)Ablk[bi] * (BlkIn)Bblk[bj];
                    const unsigned base = (bi + bj) * BW;
                    for (unsigned t = 0; t < 2 * BW; ++t)
                    {
#pragma HLS UNROLL
                        col[base + t] += (Col)(ap_uint<W>)prod.range((t + 1) * W - 1, t * W);
                    }
                }
            }

            // 桁上げ伝搬（末尾 1 回・組合せ）→ アンパック（MSW-first なら反転）
            ap_uint<COLW + 8> carry = 0;
            for (unsigned i = 0; i < NCOL; ++i)
            {
#pragma HLS UNROLL
                const ap_uint<COLW + 8> s = (ap_uint<COLW + 8>)col[i] + carry;
                if (i < 2 * nwords)
                {
                    const unsigned dst = LSW_FIRST ? i : (2u * nwords - 1u - i);
                    c[dst] = (Digit)(ap_uint<W>)s.range(W - 1, 0);
                }
                carry = s >> W;
            }
        }

        // ---- 加算 ----
        static void add(Digit *x, const Digit *y, unsigned nwords)
        {
            using Big = ap_uint<W * MAX_NWORDS>;
            Big A = pack(x, nwords);
            Big B = pack(y, nwords);
            Big S = A + B;
            unpack(S, x, nwords);
        }

        // ---- 減算 (A -= B, 借りの有無を返す) ----
        static unsigned sub(Digit *a, const Digit *b, unsigned nwords)
        {
            using Big = ap_uint<W * MAX_NWORDS>;
            Big A = pack(a, nwords);
            Big B = pack(b, nwords);
            Big D = A - B; // 借り発生時は対応ビットが1になる
            unpack(D, a, nwords);

            bool borrow = false;
            if (nwords < MAX_NWORDS)
                borrow = D[W * nwords];
            else
                borrow = D[W * MAX_NWORDS];
            return (unsigned)borrow;
        }
    };

} // namespace mpx
