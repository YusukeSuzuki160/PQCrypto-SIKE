// mpx_packed_optimized.hpp
// DSP使用量を削減した最適化版
#pragma once
#include <ap_int.h>
#include <type_traits>
#include <climits>
#include <cstdint>

namespace mpx
{

    // LSW_FIRST = true: a[0]が最下位ワード（通常の学校式）
    // false: a[0]が最上位ワード（MSW-first）
    template <class Digit, unsigned MAX_NWORDS, bool LSW_FIRST = true>
    struct PackedOpsOptimized
    {
        static_assert(std::is_unsigned<Digit>::value,
                      "Digit must be an unsigned integer type.");
        static constexpr unsigned W = CHAR_BIT * sizeof(Digit);
        static_assert(W >= 8, "Digit width must be >= 8 bits.");

        using Big = ap_uint<W * MAX_NWORDS>;
        using Big2 = ap_uint<2 * W * MAX_NWORDS>;

        // ---- pack / unpack -------------------------------------------------
        static Big pack(const Digit *x, unsigned nwords)
        {
#pragma HLS INLINE
            Big A = 0;
            // MAX_NWORDS まで固定ループ（HLSで展開・パイプライン可能）
            for (unsigned i = 0; i < MAX_NWORDS; ++i)
            {
#pragma HLS PIPELINE II = 1
                if (i < nwords)
                {
                    const unsigned src =
                        LSW_FIRST ? i : (nwords - 1u - i);
                    ap_uint<W> w = (ap_uint<W>)x[src];
                    A |= (Big)w << (i * W);
                }
            }
            return A;
        }

        template <class Wide> // Big または Big2
        static void unpack(const Wide &P, Digit *y, unsigned out_words)
        {
#pragma HLS INLINE
            for (unsigned i = 0; i < out_words; ++i)
            {
#pragma HLS PIPELINE II = 1
                ap_uint<W> w = P.range((i + 1) * W - 1, i * W);
                const unsigned dst =
                    LSW_FIRST ? i : (out_words - 1u - i);
                y[dst] = (Digit)w;
            }
        }

        // ---- add / sub (元の実装と同じ) ----------------------------------------
        static unsigned add(const Digit *a, const Digit *b,
                            Digit *c, unsigned nwords)
        {
            Big A = pack(a, nwords);
            Big B = pack(b, nwords);
            ap_uint<W * MAX_NWORDS + 1> S = A + B;
            Big result = S.range(W * MAX_NWORDS - 1, 0);
            unpack(result, c, nwords);
            ap_uint<1> carry = 0;
            if (nwords < MAX_NWORDS)
            {
                carry = S[W * nwords];
            }
            else
            {
                carry = S[W * MAX_NWORDS];
            }
            return (unsigned)carry;
        }

        static unsigned sub(const Digit *a, const Digit *b,
                            Digit *c, unsigned nwords)
        {
            Big A = pack(a, nwords);
            Big B = pack(b, nwords);
            ap_uint<W * MAX_NWORDS + 1> D = A - B;
            Big result = D.range(W * MAX_NWORDS - 1, 0);
            unpack(result, c, nwords);
            ap_uint<1> borrow = 0;
            if (nwords < MAX_NWORDS)
            {
                borrow = D[W * nwords];
            }
            else
            {
                borrow = D[W * MAX_NWORDS];
            }
            return (unsigned)borrow;
        }

        // ---- 最適化された乗算器（DSP使用量削減） --------------------------------
        static void mul(const Digit *a, const Digit *b,
                        Digit *c, unsigned nwords)
        {
            // DSP使用量を削減するため、大きな乗算を小さな部分に分割
            // 64ビット×64ビットの乗算を基本単位として使用

            // 結果配列を初期化
            for (unsigned i = 0; i < 2 * nwords; i++)
            {
#pragma HLS PIPELINE II = 1
                c[i] = 0;
            }

            // 学校式乗算アルゴリズム（Schoolbook multiplication）
            for (unsigned i = 0; i < nwords; i++)
            {
                for (unsigned j = 0; j < nwords; j++)
                {
#pragma HLS PIPELINE II = 1
#pragma HLS DEPENDENCE variable = c inter false
                    // 64ビット×64ビット乗算（DSP使用量を制限）
                    ap_uint<W> ai = (ap_uint<W>)a[i];
                    ap_uint<W> bj = (ap_uint<W>)b[j];
                    ap_uint<2 * W> product = ai * bj;

                    // 結果を適切な位置に加算
                    unsigned pos = i + j;
                    if (pos < 2 * nwords)
                    {
                        // 下位64ビット
                        ap_uint<W> low = product.range(W - 1, 0);
                        ap_uint<W> high = product.range(2 * W - 1, W);

                        // キャリー付き加算
                        ap_uint<W> sum = c[pos] + low;
                        c[pos] = sum;

                        // 上位ビットのキャリー処理
                        if (pos + 1 < 2 * nwords)
                        {
                            ap_uint<W> carry = (sum < c[pos]) ? 1 : 0;
                            c[pos + 1] += high + carry;
                        }
                    }
                }
            }
        }

        // ---- 最適化された平方演算 ----------------------------------------------
        static void sqr(const Digit *a, Digit *c, unsigned nwords)
        {
            // 平方演算は乗算の特殊ケースとして実装
            mul(a, a, c, nwords);
        }
    };

} // namespace mpx
