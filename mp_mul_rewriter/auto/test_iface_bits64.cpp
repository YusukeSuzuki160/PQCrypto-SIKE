// test_iface_configurable.cpp
// mpx_ifaceスタイルで計算ビット幅（BLOCK_BITS）を変更可能なテスト

#include <ap_int.h>
#include <climits>
#include <cstdint>
#include <iostream>
#include <cstring>

// 計算ブロックのビット数を変更可能
#define BLOCK_BITS 64 // 16/32/64/128/256などに変更可能

using digit_t = uint64_t;
static const unsigned MAX_NWORDS = 8;
static const int LSW_FIRST = 1;

namespace mpx
{
    template <class Digit, unsigned MAX_NWORDS, bool LSW_FIRST = true>
    struct PackedOps
    {
        static_assert(std::is_unsigned<Digit>::value, "Digit must be unsigned integral type");
        static constexpr unsigned W = sizeof(Digit) * CHAR_BIT;
        static constexpr unsigned BLOCK_BITS_VAR = BLOCK_BITS;

        using Big = ap_uint<W * MAX_NWORDS>;
        using Big2 = ap_uint<2 * W * MAX_NWORDS>;
        using Block = ap_uint<BLOCK_BITS_VAR>;
        using Block2 = ap_uint<2 * BLOCK_BITS_VAR>;

        static Big pack(const Digit *x, unsigned nwords)
        {
#pragma HLS INLINE
            Big A = 0;
            for (unsigned i = 0; i < nwords && i < MAX_NWORDS; ++i)
            {
#pragma HLS PIPELINE II = 1
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
#pragma HLS INLINE
            for (unsigned i = 0; i < nwords && i < MAX_NWORDS; ++i)
            {
#pragma HLS PIPELINE II = 1
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
#pragma HLS PIPELINE II = 1
#pragma HLS loop_tripcount min = 1 max = (2 * MAX_NWORDS)
                c[i] = 0;
            }

            const unsigned total_bits = nwords * W;
            const unsigned A_BITS = W * MAX_NWORDS;

            Big A = pack(a, nwords);
            Big B = pack(b, nwords);
            Big2 ACC = 0;

            // LSW/MSW配列に合わせた開始位置
            const unsigned start_bit = LSW_FIRST ? 0u : (A_BITS - total_bits);
            const unsigned nblocks = (total_bits + BLOCK_BITS_VAR - 1) / BLOCK_BITS_VAR;

            // 学校式（シンプル版）
            for (unsigned i = 0; i < nblocks; ++i)
            {
#pragma HLS loop_tripcount min = 1 max = ((W * MAX_NWORDS + BLOCK_BITS_VAR - 1) / BLOCK_BITS_VAR)
                // a の i番目ブロック
                Block ai = 0;
                unsigned lo_i = start_bit + i * BLOCK_BITS_VAR;
                if (lo_i < A_BITS)
                {
                    unsigned hi_i = lo_i + BLOCK_BITS_VAR - 1;
                    if (hi_i >= A_BITS)
                        hi_i = A_BITS - 1;
                    ai = A.range(hi_i, lo_i);
                }

                for (unsigned j = 0; j < nblocks; ++j)
                {
#pragma HLS loop_tripcount min = 1 max = ((W * MAX_NWORDS + BLOCK_BITS_VAR - 1) / BLOCK_BITS_VAR)
#pragma HLS PIPELINE II = 1

                    // b の j番目ブロック
                    Block bj = 0;
                    unsigned lo_j = start_bit + j * BLOCK_BITS_VAR;
                    if (lo_j < A_BITS)
                    {
                        unsigned hi_j = lo_j + BLOCK_BITS_VAR - 1;
                        if (hi_j >= A_BITS)
                            hi_j = A_BITS - 1;
                        bj = B.range(hi_j, lo_j);
                    }

                    // BLOCK_BITS x BLOCK_BITS -> 2*BLOCK_BITS
                    Block2 prod = (Block2)ai * (Block2)bj;

                    // 位置合わせしてACCに加算
                    unsigned shift = 2 * start_bit + (i + j) * BLOCK_BITS_VAR;
                    if (shift < 2 * A_BITS)
                    {
                        Big2 term = (Big2)prod;
                        term <<= shift;
                        ACC += term;
                    }
                }
            }

            // 書き戻し
            if (LSW_FIRST)
            {
                for (unsigned t = 0; t < 2 * nwords; ++t)
                {
#pragma HLS loop_tripcount min = 1 max = (2 * MAX_NWORDS)
                    c[t] = (Digit)ACC.range((t + 1) * W - 1, t * W);
                }
            }
            else
            {
                for (unsigned t = 0; t < 2 * nwords; ++t)
                {
#pragma HLS loop_tripcount min = 1 max = (2 * MAX_NWORDS)
                    unsigned hi = 2 * A_BITS - 1 - t * W;
                    unsigned lo = 2 * A_BITS - (t + 1) * W;
                    c[t] = (Digit)ACC.range(hi, lo);
                }
            }
        }
    };
}

// iface版を使用した乗算
void mp_mul_iface_configurable(const digit_t *a, const digit_t *b, digit_t *c, const unsigned nwords)
{
    mpx::PackedOps<digit_t, MAX_NWORDS, LSW_FIRST>::mul(a, b, c, nwords);
}

// HLS トップ関数（簡易版）
void test_mul_iface_configurable(const digit_t a[8], const digit_t b[8], digit_t c[16])
{
#pragma HLS INTERFACE bram port = a
#pragma HLS INTERFACE bram port = b
#pragma HLS INTERFACE bram port = c
#pragma HLS INTERFACE s_axilite port = return bundle = control
    mp_mul_iface_configurable(a, b, c, 8);
}

// C シミュレーション用
#ifndef __SYNTHESIS__
int main()
{
    digit_t a[8] = {1, 2, 3, 4, 5, 6, 7, 8};
    digit_t b[8] = {9, 10, 11, 12, 13, 14, 15, 16};
    digit_t c[16] = {0};

    mp_mul_iface_configurable(a, b, c, 8);

    std::cout << "Interface (configurable BLOCK_BITS=" << BLOCK_BITS << ") multiplication result:\n";
    for (int i = 0; i < 16; i++)
    {
        std::cout << "c[" << i << "] = " << c[i] << "\n";
    }

    return 0;
}
#endif
