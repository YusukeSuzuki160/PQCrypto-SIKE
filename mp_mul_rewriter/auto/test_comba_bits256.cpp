// test_comba_configurable.cpp
// 計算ビット数（CHUNK_BITS）を変更可能なComba乗算テスト

#include <ap_int.h>
#include <climits>
#include <cstdint>
#include <iostream>
#include <cstring>

// 計算チャンクのビット数を変更可能
#define MPX_CHUNK_BITS 256 // 8/16/32/64/128/256などに変更可能

using digit_t = uint64_t;
static const unsigned MAX_NWORDS = 8;
static const int LSW_FIRST = 1;

namespace mpx
{
    constexpr unsigned ceil_div_u(unsigned x, unsigned y)
    {
        return (x + y - 1) / y;
    }

    constexpr unsigned clog2_constexpr(unsigned x)
    {
        return (x <= 1u) ? 0u : 1u + clog2_constexpr((x + 1u) >> 1u);
    }

    template <class Digit, unsigned MAX_NWORDS>
    struct PackedOps
    {
        static constexpr unsigned W = CHAR_BIT * sizeof(Digit);
        static constexpr unsigned CHUNK_BITS = MPX_CHUNK_BITS;
        static_assert(CHUNK_BITS >= 1 && CHUNK_BITS <= 256, "MPX_CHUNK_BITS must be in 1..256");

        using chunk_t = ap_uint<CHUNK_BITS>;
        using prod_t = ap_uint<2 * CHUNK_BITS>;

        // 各対角の最大加算項数
        static constexpr unsigned NMAX_CHUNKS = ceil_div_u(MAX_NWORDS * W, CHUNK_BITS);
        // 加算器幅（安全側）
        static constexpr unsigned ACC_BITS = (2 * CHUNK_BITS) + clog2_constexpr(NMAX_CHUNKS ? NMAX_CHUNKS : 1) + 2;

        using Big = ap_uint<W * MAX_NWORDS>;
        using Big2 = ap_uint<2 * W * MAX_NWORDS>;

        // ビット位置からチャンクを抽出
        static inline chunk_t get_bits_as_chunk(const Digit *arr, unsigned nwords, unsigned bitpos)
        {
#pragma HLS INLINE
            const unsigned NEED_WORDS = ceil_div_u(CHUNK_BITS, W);
            chunk_t out = 0;
            unsigned filled = 0;

            constexpr unsigned GET_WORDS_MAX = (CHUNK_BITS + W - 1) / W;
            for (unsigned w = 0; w < NEED_WORDS; ++w)
            {
#pragma HLS PIPELINE II = 1
#pragma HLS LOOP_TRIPCOUNT min = 1 max = GET_WORDS_MAX
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
            return out;
        }

        // チャンクを単語にパック
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
#pragma HLS LOOP_TRIPCOUNT min = 1 max = 4
                    const unsigned space = W - used;
                    const unsigned take = (remaining < space) ? remaining : space;

                    chunk_t maskC;
                    if (take == 0)
                    {
                        maskC = (chunk_t)0;
                    }
                    else if (take >= CHUNK_BITS)
                    {
                        maskC = (chunk_t)(-1);
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

        // メイン乗算関数
        static void mul(const Digit *a, const Digit *b, Digit *c, unsigned nwords)
        {
#pragma HLS INLINE off
            // 出力クリア
            for (unsigned i = 0; i < 2 * nwords; ++i)
            {
#pragma HLS PIPELINE II = 1
                c[i] = 0;
            }

            const unsigned A_BITS = nwords * W;
            const unsigned B_BITS = nwords * W;

            const unsigned N_A = ceil_div_u(A_BITS, CHUNK_BITS);
            const unsigned N_B = ceil_div_u(B_BITS, CHUNK_BITS);
            const unsigned N_OUT = N_A + N_B;

            // HLSのための定数
            constexpr unsigned NMAX_CHUNKS = MAX_NWORDS * 2; // 安全な上限

            ChunkPacker pack;
            pack.init(c, 2 * nwords);

            ap_uint<ACC_BITS> carry = 0;

            // Comba（対角ごとの和）
            for (unsigned t = 0; t < N_OUT; ++t)
            {
#pragma HLS PIPELINE II = 1
#pragma HLS LOOP_TRIPCOUNT min = 1 max = NMAX_CHUNKS
                const unsigned j_start = (t < (N_B - 1)) ? 0 : (t - (N_B - 1));
                const unsigned j_end = (t < (N_A - 1)) ? t : (N_A - 1);

                ap_uint<ACC_BITS> sum = carry;

                for (unsigned j = j_start; j <= j_end; ++j)
                {
#pragma HLS PIPELINE II = 1
#pragma HLS LOOP_TRIPCOUNT min = 1 max = NMAX_CHUNKS
                    const unsigned ia = j;
                    const unsigned ib = t - j;
                    const unsigned a_bitpos = ia * CHUNK_BITS;
                    const unsigned b_bitpos = ib * CHUNK_BITS;

                    const chunk_t aj = get_bits_as_chunk(a, nwords, a_bitpos);
                    const chunk_t bj = get_bits_as_chunk(b, nwords, b_bitpos);

                    const prod_t p = (prod_t)aj * (prod_t)bj;
                    sum += (ap_uint<ACC_BITS>)p;
                }

                const chunk_t out = (chunk_t)(sum & ((chunk_t)(-1)));
                pack.push(out);

                carry = (ap_uint<ACC_BITS>)(sum >> CHUNK_BITS);
            }

            pack.push((chunk_t)carry);
            pack.flush();
        }
    };
}

// Comba法を使用した乗算
void mp_mul_comba_configurable(const digit_t *a, const digit_t *b, digit_t *c, const unsigned nwords)
{
    mpx::PackedOps<digit_t, MAX_NWORDS>::mul(a, b, c, nwords);
}

// HLS トップ関数（簡易版）
void test_mul_comba_configurable(const digit_t a[8], const digit_t b[8], digit_t c[16])
{
#pragma HLS INTERFACE bram port = a
#pragma HLS INTERFACE bram port = b
#pragma HLS INTERFACE bram port = c
#pragma HLS INTERFACE s_axilite port = return bundle = control
    mp_mul_comba_configurable(a, b, c, 8);
}

// C シミュレーション用
#ifndef __SYNTHESIS__
int main()
{
    digit_t a[8] = {1, 2, 3, 4, 5, 6, 7, 8};
    digit_t b[8] = {9, 10, 11, 12, 13, 14, 15, 16};
    digit_t c[16] = {0};

    mp_mul_comba_configurable(a, b, c, 8);

    std::cout << "Comba (configurable CHUNK_BITS=" << MPX_CHUNK_BITS << ") multiplication result:\n";
    for (int i = 0; i < 16; i++)
    {
        std::cout << "c[" << i << "] = " << c[i] << "\n";
    }

    return 0;
}
#endif
