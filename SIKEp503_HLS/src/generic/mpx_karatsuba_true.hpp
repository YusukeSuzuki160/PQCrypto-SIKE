// mpx_karatsuba_true.hpp  (真のKaratsuba法による乗算実装)
// 使い方: mpx::PackedOps<Digit, MAX_NWORDS, true>::mul(a, b, c, nwords)

#ifndef MPX_KARATSUBA_TRUE_HPP
#define MPX_KARATSUBA_TRUE_HPP

#include <ap_int.h>
#include <type_traits>

namespace mpx
{

    //===================== 設定（必要に応じて変更） =====================//
    static constexpr unsigned MPX_CHUNK_BITS = 64; // ★内部digit幅：8/16/32/64/128/256 等
    //====================================================================//

    //-------------------- ビット幅トレイト --------------------//
    // 既定：組み込み整数型など → sizeof(T)*8
    template <typename T, typename = void>
    struct bitwidth
    {
        static constexpr unsigned value = 8u * sizeof(T);
    };

    // ap_uint<N> 専用：テンプレート実引数 N を採用
    template <unsigned N>
    struct bitwidth<ap_uint<N>, void>
    {
        static constexpr unsigned value = N;
    };

    //-------------------- ユーティリティ（名前空間スコープ） --------------------//
    constexpr unsigned ceil_div_u(unsigned x, unsigned y)
    {
        return (x + y - 1) / y;
    }

    // Ceil(log2(x))（x>=1）
    constexpr unsigned clog2_constexpr(unsigned x)
    {
        return (x <= 1u) ? 0u : 1u + clog2_constexpr((x + 1u) >> 1u);
    }

    //====================================================================//
    //                 PackedOps（UseComba = true）                       //
    //====================================================================//
    template <class Digit, unsigned MAX_NWORDS, bool UseComba>
    struct PackedOps;

    template <class Digit, unsigned MAX_NWORDS>
    struct PackedOps<Digit, MAX_NWORDS, true>
    {
        // 入出力語幅（ビット）
        static constexpr unsigned W = bitwidth<Digit>::value;
        static_assert(W >= 1 && W <= 256, "Digit width must be in 1..256");

        // 内部計算のチャンク幅（コンパイル時定数）
        static constexpr unsigned CHUNK_BITS = MPX_CHUNK_BITS;
        static_assert(CHUNK_BITS >= 1 && CHUNK_BITS <= 256, "MPX_CHUNK_BITS must be in 1..256");

        using chunk_t = ap_uint<CHUNK_BITS>;
        using prod_t = ap_uint<2 * CHUNK_BITS>;

        // Karatsuba法の閾値（これより小さい場合は基本乗算を使用）
        static constexpr unsigned KARATSUBA_THRESHOLD = 2;

        // ---- Tripcount 用の静的上限 ----
        static constexpr unsigned MAX_NWORDS_POW2 = 1u << clog2_constexpr(MAX_NWORDS);
        static constexpr unsigned MAX_RECURSION_DEPTH = clog2_constexpr(MAX_NWORDS_POW2);

        // 全1マスク（ap_uint はリテラルでないため関数で返す）
        static inline chunk_t CHUNK_MASK()
        {
#pragma HLS INLINE
            return (chunk_t)(-1);
        }

        // ------- 基本乗算（小さい場合の直接計算） -------
        static void basic_mul(const Digit *a, const Digit *b, Digit *c, unsigned nwords)
        {
#pragma HLS INLINE
            // 出力クリア
            for (unsigned i = 0; i < 2 * nwords; ++i)
            {
#pragma HLS PIPELINE II = 1
#pragma HLS LOOP_TRIPCOUNT min = 1 max = (2 * MAX_NWORDS)
                c[i] = 0;
            }

            // 基本のO(n^2)乗算
            for (unsigned i = 0; i < nwords; ++i)
            {
#pragma HLS PIPELINE II = 1
#pragma HLS LOOP_TRIPCOUNT min = 1 max = MAX_NWORDS
                Digit carry = 0;
                for (unsigned j = 0; j < nwords; ++j)
                {
#pragma HLS PIPELINE II = 1
#pragma HLS LOOP_TRIPCOUNT min = 1 max = MAX_NWORDS
                    const unsigned k = i + j;
                    if (k < 2 * nwords)
                    {
                        // 型安全な乗算
                        ap_uint<W> ai = (ap_uint<W>)a[i];
                        ap_uint<W> bj = (ap_uint<W>)b[j];
                        ap_uint<2 * W> product = (ap_uint<2 * W>)ai * (ap_uint<2 * W>)bj;

                        ap_uint<2 * W> sum = (ap_uint<2 * W>)c[k] + (ap_uint<2 * W>)carry + product;
                        c[k] = (Digit)(sum & ((ap_uint<2 * W>)(-1) >> W));
                        carry = (Digit)(sum >> W);
                    }
                }
                if (i + nwords < 2 * nwords)
                {
                    c[i + nwords] = carry;
                }
            }
        }

        // ------- 配列の加算 -------
        static void add_arrays(const Digit *a, const Digit *b, Digit *c, unsigned nwords)
        {
#pragma HLS INLINE
            Digit carry = 0;
            for (unsigned i = 0; i < nwords; ++i)
            {
#pragma HLS PIPELINE II = 1
#pragma HLS LOOP_TRIPCOUNT min = 1 max = MAX_NWORDS
                ap_uint<W> ai = (ap_uint<W>)a[i];
                ap_uint<W> bi = (ap_uint<W>)b[i];
                ap_uint<W + 1> sum = (ap_uint<W + 1>)ai + (ap_uint<W + 1>)bi + (ap_uint<W + 1>)carry;
                c[i] = (Digit)(sum & ((ap_uint<W + 1>)(-1) >> 1));
                carry = (Digit)(sum >> W);
            }
        }

        // ------- 配列の減算 -------
        static void sub_arrays(const Digit *a, const Digit *b, Digit *c, unsigned nwords)
        {
#pragma HLS INLINE
            Digit borrow = 0;
            for (unsigned i = 0; i < nwords; ++i)
            {
#pragma HLS PIPELINE II = 1
#pragma HLS LOOP_TRIPCOUNT min = 1 max = MAX_NWORDS
                ap_uint<W> ai = (ap_uint<W>)a[i];
                ap_uint<W> bi = (ap_uint<W>)b[i];

                // ボローを先に計算
                if (ai < bi + borrow)
                {
                    ap_uint<W + 1> diff = (ap_uint<W + 1>)((ap_uint<W + 1>)1 << W) + (ap_uint<W + 1>)ai - (ap_uint<W + 1>)bi - (ap_uint<W + 1>)borrow;
                    c[i] = (Digit)(diff & ((ap_uint<W + 1>)(-1) >> 1));
                    borrow = 1;
                }
                else
                {
                    ap_uint<W + 1> diff = (ap_uint<W + 1>)ai - (ap_uint<W + 1>)bi - (ap_uint<W + 1>)borrow;
                    c[i] = (Digit)(diff & ((ap_uint<W + 1>)(-1) >> 1));
                    borrow = 0;
                }
            }
        }

        // ------- 配列の加算（結果を別配列に格納、キャリー対応） -------
        static void add_arrays_with_carry(const Digit *a, const Digit *b, Digit *c, unsigned nwords, unsigned &result_words)
        {
#pragma HLS INLINE
            Digit carry = 0;
            for (unsigned i = 0; i < nwords; ++i)
            {
#pragma HLS PIPELINE II = 1
#pragma HLS LOOP_TRIPCOUNT min = 1 max = MAX_NWORDS
                ap_uint<W> ai = (ap_uint<W>)a[i];
                ap_uint<W> bi = (ap_uint<W>)b[i];
                ap_uint<W + 1> sum = (ap_uint<W + 1>)ai + (ap_uint<W + 1>)bi + (ap_uint<W + 1>)carry;
                c[i] = (Digit)(sum & ((ap_uint<W + 1>)(-1) >> 1));
                carry = (Digit)(sum >> W);
            }
            result_words = nwords;
            if (carry != 0 && nwords < MAX_NWORDS)
            {
                c[nwords] = carry;
                result_words = nwords + 1;
            }
        }

        // ------- 配列の加算（結果を別配列に格納、キャリー対応、サイズ指定） -------
        static void add_arrays_with_carry_sized(const Digit *a, const Digit *b, Digit *c, unsigned nwords_a, unsigned nwords_b, unsigned &result_words)
        {
#pragma HLS INLINE
            const unsigned max_words = (nwords_a > nwords_b) ? nwords_a : nwords_b;
            Digit carry = 0;

            for (unsigned i = 0; i < max_words; ++i)
            {
#pragma HLS PIPELINE II = 1
#pragma HLS LOOP_TRIPCOUNT min = 1 max = MAX_NWORDS
                ap_uint<W> ai = (i < nwords_a) ? (ap_uint<W>)a[i] : (ap_uint<W>)0;
                ap_uint<W> bi = (i < nwords_b) ? (ap_uint<W>)b[i] : (ap_uint<W>)0;
                ap_uint<W + 1> sum = (ap_uint<W + 1>)ai + (ap_uint<W + 1>)bi + (ap_uint<W + 1>)carry;
                c[i] = (Digit)(sum & ((ap_uint<W + 1>)(-1) >> 1));
                carry = (Digit)(sum >> W);
            }

            result_words = max_words;
            if (carry != 0 && max_words < MAX_NWORDS)
            {
                c[max_words] = carry;
                result_words = max_words + 1;
            }
        }

        // ------- 配列の減算（結果を別配列に格納、サイズ指定） -------
        static void sub_arrays_sized(const Digit *a, const Digit *b, Digit *c, unsigned nwords_a, unsigned nwords_b)
        {
#pragma HLS INLINE
            const unsigned max_words = (nwords_a > nwords_b) ? nwords_a : nwords_b;
            Digit borrow = 0;

            for (unsigned i = 0; i < max_words; ++i)
            {
#pragma HLS PIPELINE II = 1
#pragma HLS LOOP_TRIPCOUNT min = 1 max = MAX_NWORDS
                ap_uint<W> ai = (i < nwords_a) ? (ap_uint<W>)a[i] : (ap_uint<W>)0;
                ap_uint<W> bi = (i < nwords_b) ? (ap_uint<W>)b[i] : (ap_uint<W>)0;

                // ボローを先に計算
                if (ai < bi + borrow)
                {
                    ap_uint<W + 1> diff = (ap_uint<W + 1>)((ap_uint<W + 1>)1 << W) + (ap_uint<W + 1>)ai - (ap_uint<W + 1>)bi - (ap_uint<W + 1>)borrow;
                    c[i] = (Digit)(diff & ((ap_uint<W + 1>)(-1) >> 1));
                    borrow = 1;
                }
                else
                {
                    ap_uint<W + 1> diff = (ap_uint<W + 1>)ai - (ap_uint<W + 1>)bi - (ap_uint<W + 1>)borrow;
                    c[i] = (Digit)(diff & ((ap_uint<W + 1>)(-1) >> 1));
                    borrow = 0;
                }
            }
        }

        // ------- Karatsuba乗算の再帰実装（真のKaratsuba法） -------
        static void karatsuba_mul(const Digit *a, const Digit *b, Digit *c, unsigned nwords)
        {
#pragma HLS INLINE off
            // 閾値以下の場合は基本乗算を使用
            if (nwords <= KARATSUBA_THRESHOLD)
            {
                basic_mul(a, b, c, nwords);
                return;
            }

            // 出力クリア
            for (unsigned i = 0; i < 2 * nwords; ++i)
            {
#pragma HLS PIPELINE II = 1
#pragma HLS LOOP_TRIPCOUNT min = 1 max = (2 * MAX_NWORDS)
                c[i] = 0;
            }

            // 分割点を計算（半分に分割）
            const unsigned m = nwords / 2;
            const unsigned n = nwords - m;

            // 一時配列の準備（スタック上に配置、サイズ制限）
            const unsigned MAX_TEMP_SIZE = 2 * MAX_NWORDS;
            Digit temp_c[MAX_TEMP_SIZE];
            Digit temp_d[MAX_TEMP_SIZE];
            Digit temp_e[MAX_TEMP_SIZE];
            Digit temp_f[MAX_NWORDS];
            Digit temp_g[MAX_NWORDS];

            // 配列をクリア
            for (unsigned i = 0; i < MAX_NWORDS; ++i)
            {
                temp_f[i] = temp_g[i] = 0;
            }
            for (unsigned i = 0; i < MAX_TEMP_SIZE; ++i)
            {
                temp_c[i] = temp_d[i] = temp_e[i] = 0;
            }

            // a = a1 * 2^(m*W) + a0, b = b1 * 2^(m*W) + b0
            const Digit *a0 = a;
            const Digit *a1 = a + m;
            const Digit *b0 = b;
            const Digit *b1 = b + m;

            // 1. z0 = a0 * b0
            karatsuba_mul(a0, b0, temp_c, m);
            for (unsigned i = 0; i < 2 * m; ++i)
            {
                c[i] = temp_c[i];
            }

            // 2. z2 = a1 * b1
            karatsuba_mul(a1, b1, temp_d, n);
            for (unsigned i = 0; i < 2 * n; ++i)
            {
                c[2 * m + i] = temp_d[i];
            }

            // 3. a0 + a1, b0 + b1 を計算
            unsigned sum_a_words, sum_b_words;
            add_arrays_with_carry_sized(a0, a1, temp_f, m, n, sum_a_words);
            add_arrays_with_carry_sized(b0, b1, temp_g, m, n, sum_b_words);

            // 4. z1 = (a0 + a1) * (b0 + b1)
            const unsigned sum_words = (sum_a_words > sum_b_words) ? sum_a_words : sum_b_words;
            karatsuba_mul(temp_f, temp_g, temp_e, sum_words);

            // 5. z1 = z1 - z0 - z2
            // z1からz0を引く
            sub_arrays_sized(temp_e, temp_c, temp_e, 2 * sum_words, 2 * m);
            // z1からz2を引く
            sub_arrays_sized(temp_e, temp_d, temp_e, 2 * sum_words, 2 * n);

            // 6. 結果の組み立て: c = z2 * 2^(2m*W) + z1 * 2^(m*W) + z0
            // z1をm*Wビット左シフトして加算
            Digit carry = 0;
            for (unsigned i = 0; i < 2 * n && (m + i) < 2 * nwords; ++i)
            {
                ap_uint<W> ci = (ap_uint<W>)c[m + i];
                ap_uint<W> ei = (ap_uint<W>)temp_e[i];
                ap_uint<W + 1> sum = (ap_uint<W + 1>)ci + (ap_uint<W + 1>)ei + (ap_uint<W + 1>)carry;
                c[m + i] = (Digit)(sum & ((ap_uint<W + 1>)(-1) >> 1));
                carry = (Digit)(sum >> W);
            }

            // 残りのキャリーを処理
            for (unsigned i = m + 2 * n; i < 2 * nwords && carry != 0; ++i)
            {
                ap_uint<W> ci = (ap_uint<W>)c[i];
                ap_uint<W + 1> sum = (ap_uint<W + 1>)ci + (ap_uint<W + 1>)carry;
                c[i] = (Digit)(sum & ((ap_uint<W + 1>)(-1) >> 1));
                carry = (Digit)(sum >> W);
            }
        }

        //==================== 外部公開：mul ====================//
        static void mul(const Digit *a, const Digit *b, Digit *c, unsigned nwords)
        {
#pragma HLS INLINE off
            karatsuba_mul(a, b, c, nwords);
        }
    };

} // namespace mpx

#endif // MPX_KARATSUBA_TRUE_HPP
