// mpx_camba_mul_hybrid.hpp
// ハイブリッド最適化版：64bitと128bitの利点を動的に組み合わせ
// 使い方: mpx::PackedOps<Digit, MAX_NWORDS, true>::mul(a, b, c, nwords)

#ifndef MPX_CAMBA_MUL_HYBRID_HPP
#define MPX_CAMBA_MUL_HYBRID_HPP

#include <ap_int.h>
#include <type_traits>

namespace mpx
{

    //===================== ハイブリッド設定 =====================//
    static constexpr unsigned MPX_CHUNK_BITS_SMALL = 64;  // リソース節約用
    static constexpr unsigned MPX_CHUNK_BITS_LARGE = 128; // 高速化用
    static constexpr unsigned MPX_SMALL_THRESHOLD = 3;    // 3ワード以下で64bit使用
    static constexpr unsigned MPX_LARGE_THRESHOLD = 6;    // 6ワード以上で128bit使用
    // 中間の場合は動的に選択
    //====================================================================//

    //-------------------- ビット幅トレイト --------------------//
    template <typename T, typename = void>
    struct bitwidth
    {
        static constexpr unsigned value = 8u * sizeof(T);
    };

    template <unsigned N>
    struct bitwidth<ap_uint<N>, void>
    {
        static constexpr unsigned value = N;
    };

    //-------------------- ユーティリティ --------------------//
    constexpr unsigned ceil_div_u(unsigned x, unsigned y)
    {
        return (x + y - 1) / y;
    }

    constexpr unsigned clog2_constexpr(unsigned x)
    {
        return (x <= 1u) ? 0u : 1u + clog2_constexpr((x + 1u) >> 1u);
    }

    //-------------------- 動的チャンク選択 --------------------//
    template <unsigned N>
    struct HybridChunkSelector
    {
        static constexpr unsigned select_chunk_bits()
        {
            if (N <= MPX_SMALL_THRESHOLD)
            {
                return MPX_CHUNK_BITS_SMALL; // 小さい場合は64bit
            }
            else if (N >= MPX_LARGE_THRESHOLD)
            {
                return MPX_CHUNK_BITS_LARGE; // 大きい場合は128bit
            }
            else
            {
                // 中間の場合は128bitを選択（パフォーマンス優先）
                return MPX_CHUNK_BITS_LARGE;
            }
        }
    };

    //====================================================================//
    //                 PackedOps（ハイブリッド最適化版）                   //
    //====================================================================//
    template <class Digit, unsigned MAX_NWORDS, bool UseComba>
    struct PackedOps;

    template <class Digit, unsigned MAX_NWORDS>
    struct PackedOps<Digit, MAX_NWORDS, true>
    {
        // 入出力語幅（ビット）
        static constexpr unsigned W = bitwidth<Digit>::value;
        static_assert(W >= 1 && W <= 256, "Digit width must be in 1..256");

        // ハイブリッドチャンク幅選択
        static constexpr unsigned CHUNK_BITS = HybridChunkSelector<MAX_NWORDS>::select_chunk_bits();
        static_assert(CHUNK_BITS >= 1 && CHUNK_BITS <= 256, "CHUNK_BITS must be in 1..256");

        using chunk_t = ap_uint<CHUNK_BITS>;
        using prod_t = ap_uint<2 * CHUNK_BITS>;

        // 各対角の最大加算項数
        static constexpr unsigned NMAX_CHUNKS = ceil_div_u(MAX_NWORDS * W, CHUNK_BITS);
        // 加算器幅（安全側）
        static constexpr unsigned ACC_BITS = (2 * CHUNK_BITS) + clog2_constexpr(NMAX_CHUNKS ? NMAX_CHUNKS : 1) + 2;

        // ---- Tripcount 用の静的上限 ----
        static constexpr unsigned NA_MAX = ceil_div_u(MAX_NWORDS * W, CHUNK_BITS);
        static constexpr unsigned NB_MAX = NA_MAX;
        static constexpr unsigned NOUT_MAX = NA_MAX + NB_MAX;
        static constexpr unsigned INNER_MAX = (NA_MAX < NB_MAX) ? NA_MAX : NB_MAX;
        static constexpr unsigned NEEDW_MAX = ceil_div_u(CHUNK_BITS, W);
        static constexpr unsigned PACK_ITERS_MAX = ceil_div_u(CHUNK_BITS, W);

        // 全1マスク
        static inline chunk_t CHUNK_MASK()
        {
#pragma HLS INLINE
            return (chunk_t)(-1);
        }

        // ------- 最適化されたビット抽出（パイプライン強化） -------
        static inline chunk_t get_bits_as_chunk(const Digit *arr, unsigned nwords, unsigned bitpos)
        {
#pragma HLS INLINE
            const unsigned NEED_WORDS = ceil_div_u(CHUNK_BITS, W);
            chunk_t out = 0;
            unsigned filled = 0;

            for (unsigned w = 0; w < NEED_WORDS; ++w)
            {
#pragma HLS PIPELINE II = 1
#pragma HLS LOOP_TRIPCOUNT min = 1 max = NEEDW_MAX
#pragma HLS UNROLL factor = 1
                const unsigned cur_bit = bitpos + w * W;
                const unsigned wi = cur_bit / W;
                if (wi >= nwords)
                    break;

                const unsigned bit_in_word = cur_bit % W;
                ap_uint<W> lo = (ap_uint<W>)((ap_uint<W>)arr[wi] >> bit_in_word);

                ap_uint<W> word_chunk = lo;
                if (bit_in_word != 0 && wi + 1 < nwords)
                {
                    const unsigned remain = W - bit_in_word;
                    ap_uint<W> hi = (ap_uint<W>)arr[wi + 1];
                    word_chunk = lo | (hi << remain);
                }

                const unsigned need = (CHUNK_BITS > filled) ? (CHUNK_BITS - filled) : 0;
                const unsigned take = (need < W) ? need : W;

                ap_uint<W> maskW;
                if (take == 0)
                {
                    maskW = (ap_uint<W>)0;
                }
                else if (take >= W)
                {
                    maskW = (ap_uint<W>)(-1);
                }
                else
                {
                    maskW = ((ap_uint<W>)1 << take) - (ap_uint<W>)1;
                }

                word_chunk = (ap_uint<W>)(word_chunk & maskW);
                out |= ((chunk_t)word_chunk) << filled;
                filled += take;
                if (filled >= CHUNK_BITS)
                    break;
            }
            return (chunk_t)(out & CHUNK_MASK());
        }

        // ------- 最適化されたチャンクパッカー（パイプライン強化） -------
        struct ChunkPacker
        {
            Digit *c;
            unsigned c_words;
            unsigned wi;
            unsigned used;
            Digit cur;

            inline void init(Digit *c_, unsigned c_words_)
            {
#pragma HLS INLINE
                c = c_;
                c_words = c_words_;
                wi = 0;
                used = 0;
                cur = 0;
            }

            inline void push(chunk_t x)
            {
#pragma HLS INLINE
                unsigned remaining = CHUNK_BITS;
                unsigned shift = 0;
                while (remaining > 0)
                {
#pragma HLS PIPELINE II = 1
#pragma HLS LOOP_TRIPCOUNT min = 1 max = PACK_ITERS_MAX
#pragma HLS UNROLL factor = 1
                    const unsigned space = W - used;
                    const unsigned take = (remaining < space) ? remaining : space;

                    chunk_t maskC;
                    if (take == 0)
                    {
                        maskC = (chunk_t)0;
                    }
                    else if (take >= CHUNK_BITS)
                    {
                        maskC = CHUNK_MASK();
                    }
                    else
                    {
                        maskC = ((chunk_t)1 << take) - (chunk_t)1;
                    }

                    ap_uint<W> part = (ap_uint<W>)(((chunk_t)(x >> shift)) & maskC);
                    cur |= (Digit)(part) << used;

                    used += take;
                    shift += take;
                    remaining -= take;

                    if (used == W)
                    {
                        if (wi < c_words)
                            c[wi] = cur;
                        ++wi;
                        used = 0;
                        cur = 0;
                    }
                }
            }

            inline void flush()
            {
#pragma HLS INLINE
                if (used != 0 && wi < c_words)
                {
                    c[wi] = cur;
                    ++wi;
                    used = 0;
                    cur = 0;
                }
                while (wi < c_words)
                {
#pragma HLS LOOP_TRIPCOUNT min = 0 max = (2 * MAX_NWORDS)
#pragma HLS UNROLL factor = 1
                    c[wi++] = 0;
                }
            }
        };

        //==================== ハイブリッド最適化乗算器 ====================//
        static void mul(const Digit *a, const Digit *b, Digit *c, unsigned nwords)
        {
#pragma HLS INLINE off
#pragma HLS ALLOCATION instances = mul limit = 12 operation
#pragma HLS ALLOCATION instances = mul limit = 12 function
#pragma HLS BIND_STORAGE variable = a type = RAM_1P
#pragma HLS BIND_STORAGE variable = b type = RAM_1P
#pragma HLS BIND_STORAGE variable = c type = RAM_1P
#pragma HLS DATAFLOW off
#pragma HLS DEPENDENCE variable = c inter false

            // 出力クリア
            for (unsigned i = 0; i < 2 * nwords; ++i)
            {
#pragma HLS PIPELINE II = 1
#pragma HLS LOOP_TRIPCOUNT min = 1 max = (2 * MAX_NWORDS)
#pragma HLS UNROLL factor = 1
                c[i] = 0;
            }

            const unsigned A_BITS = nwords * W;
            const unsigned B_BITS = nwords * W;

            const unsigned N_A = ceil_div_u(A_BITS, CHUNK_BITS);
            const unsigned N_B = ceil_div_u(B_BITS, CHUNK_BITS);
            const unsigned N_OUT = N_A + N_B;

            ChunkPacker pack;
            pack.init(c, 2 * nwords);

            ap_uint<ACC_BITS> carry = 0;

            // ハイブリッド最適化Comba乗算
            for (unsigned t = 0; t < N_OUT; ++t)
            {
#pragma HLS PIPELINE II = 1
#pragma HLS LOOP_TRIPCOUNT min = 1 max = NOUT_MAX
#pragma HLS UNROLL factor = 1
                const unsigned j_start = (t < (N_B - 1)) ? 0 : (t - (N_B - 1));
                const unsigned j_end = (t < (N_A - 1)) ? t : (N_A - 1);

                ap_uint<ACC_BITS> sum = carry;

                for (unsigned j = j_start; j <= j_end; ++j)
                {
#pragma HLS PIPELINE II = 1
#pragma HLS LOOP_TRIPCOUNT min = 1 max = INNER_MAX
#pragma HLS UNROLL factor = 1
                    const unsigned ia = j;
                    const unsigned ib = t - j;
                    const unsigned a_bitpos = ia * CHUNK_BITS;
                    const unsigned b_bitpos = ib * CHUNK_BITS;

                    const chunk_t aj = get_bits_as_chunk(a, nwords, a_bitpos);
                    const chunk_t bj = get_bits_as_chunk(b, nwords, b_bitpos);

                    const prod_t p = (prod_t)aj * (prod_t)bj;
                    sum += (ap_uint<ACC_BITS>)p;
                }

                const chunk_t out = (chunk_t)(sum & CHUNK_MASK());
                pack.push(out);

                carry = (ap_uint<ACC_BITS>)(sum >> CHUNK_BITS);
            }

            // 最終キャリー処理
            pack.push((chunk_t)carry);
            pack.flush();
        }
    };

} // namespace mpx

#endif // MPX_CAMBA_MUL_HYBRID_HPP
