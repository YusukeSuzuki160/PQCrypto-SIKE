// mpx_karatsuba_simple.hpp  (簡易版Karatsuba法による乗算実装)
// 使い方: mpx::PackedOps<Digit, MAX_NWORDS, true>::mul(a, b, c, nwords)

#ifndef MPX_KARATSUBA_SIMPLE_HPP
#define MPX_KARATSUBA_SIMPLE_HPP

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

        // 各対角の最大加算項数：ceil(MAX_NWORDS*W / CHUNK_BITS)
        static constexpr unsigned NMAX_CHUNKS = ceil_div_u(MAX_NWORDS * W, CHUNK_BITS);
        // 加算器幅（安全側）
        static constexpr unsigned ACC_BITS = (2 * CHUNK_BITS) + clog2_constexpr(NMAX_CHUNKS ? NMAX_CHUNKS : 1) + 2;

        // ---- Tripcount 用の静的上限 ----
        static constexpr unsigned NA_MAX = ceil_div_u(MAX_NWORDS * W, CHUNK_BITS);
        static constexpr unsigned NB_MAX = NA_MAX;
        static constexpr unsigned NOUT_MAX = NA_MAX + NB_MAX;
        static constexpr unsigned INNER_MAX = (NA_MAX < NB_MAX) ? NA_MAX : NB_MAX;
        static constexpr unsigned NEEDW_MAX = ceil_div_u(CHUNK_BITS, W);      // get_bits_as_chunk の最大語数
        static constexpr unsigned PACK_ITERS_MAX = ceil_div_u(CHUNK_BITS, W); // ChunkPacker::push の最大分割回数

        // 全1マスク（ap_uint はリテラルでないため関数で返す）
        static inline chunk_t CHUNK_MASK()
        {
#pragma HLS INLINE
            return (chunk_t)(-1);
        }

        // ------- 任意bit幅チャンク抽出（Digit 配列 → chunk_t） -------
        // arr: Digit配列, nwords: 要素数, bitpos: LSB基準の開始bit
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
                const unsigned cur_bit = bitpos + w * W;
                const unsigned wi = cur_bit / W;
                if (wi >= nwords)
                    break;

                const unsigned bit_in_word = cur_bit % W;
                // arr[wi] は組込み型の可能性あり → ap_uint<W> による正規化
                ap_uint<W> lo = (ap_uint<W>)((ap_uint<W>)arr[wi] >> bit_in_word);

                ap_uint<W> word_chunk = lo;
                if (bit_in_word != 0 && wi + 1 < nwords)
                {
                    const unsigned remain = W - bit_in_word;
                    ap_uint<W> hi = (ap_uint<W>)arr[wi + 1];
                    word_chunk = lo | (hi << remain);
                }

                // 取り込むビット数
                const unsigned need = (CHUNK_BITS > filled) ? (CHUNK_BITS - filled) : 0;
                const unsigned take = (need < W) ? need : W;

                // ★ 三項演算子を使わず if/else で明確に同型化
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

        // ------- chunk_t を Digit 配列（Wbit語）に順次パック -------
        struct ChunkPacker
        {
            Digit *c;
            unsigned c_words; // = 2*nwords
            unsigned wi;      // 書き込み中の語 index
            unsigned used;    // 現語の使用ビット数 [0..W]
            Digit cur;        // 現語の作業レジスタ

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
                    const unsigned space = W - used;
                    const unsigned take = (remaining < space) ? remaining : space;

                    // ★ 三項演算子を使わず if/else で明確に同型化
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
                    c[wi++] = 0;
                }
            }
        };

        //==================== 外部公開：mul ====================//
        static void mul(const Digit *a, const Digit *b, Digit *c, unsigned nwords)
        {
#pragma HLS INLINE off
            // 出力クリア
            for (unsigned i = 0; i < 2 * nwords; ++i)
            {
#pragma HLS PIPELINE II = 1
#pragma HLS LOOP_TRIPCOUNT min = 1 max = (2 * MAX_NWORDS)
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

            // Comba（対角ごとの和）
            for (unsigned t = 0; t < N_OUT; ++t)
            {
#pragma HLS PIPELINE II = 1
#pragma HLS LOOP_TRIPCOUNT min = 1 max = NOUT_MAX
                const unsigned j_start = (t < (N_B - 1)) ? 0 : (t - (N_B - 1));
                const unsigned j_end = (t < (N_A - 1)) ? t : (N_A - 1);

                ap_uint<ACC_BITS> sum = carry;

                for (unsigned j = j_start; j <= j_end; ++j)
                {
#pragma HLS PIPELINE II = 1
#pragma HLS LOOP_TRIPCOUNT min = 1 max = INNER_MAX
                    const unsigned ia = j;
                    const unsigned ib = t - j;
                    const unsigned a_bitpos = ia * CHUNK_BITS;
                    const unsigned b_bitpos = ib * CHUNK_BITS;

                    const chunk_t aj = get_bits_as_chunk(a, nwords, a_bitpos);
                    const chunk_t bj = get_bits_as_chunk(b, nwords, b_bitpos);

                    const prod_t p = (prod_t)aj * (prod_t)bj; // 常に CHUNK_BITS×CHUNK_BITS
                    sum += (ap_uint<ACC_BITS>)p;
                }

                const chunk_t out = (chunk_t)(sum & CHUNK_MASK());
                pack.push(out);

                carry = (ap_uint<ACC_BITS>)(sum >> CHUNK_BITS);
            }

            // 条件分岐を避け、常に1チャンク分押し出す（latency 見積りの安定化）
            pack.push((chunk_t)carry);

            pack.flush();
        }
    };

} // namespace mpx

#endif // MPX_KARATSUBA_SIMPLE_HPP
