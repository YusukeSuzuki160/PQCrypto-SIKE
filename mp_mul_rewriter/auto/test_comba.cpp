// test_comba.cpp
// Comba乗算を使用するテスト
#include <ap_int.h>
#include <climits>
#include <cstdint>
#include <iostream>
#include <cstring>

using digit_t = uint64_t;
static const unsigned MAX_NWORDS = 8;
static const int LSW_FIRST = 1;

namespace mpx
{
    // 簡易Comba実装（チェック用）
    template <class Digit, unsigned MAX_NWORDS>
    struct PackedOps
    {
        static constexpr unsigned W = CHAR_BIT * sizeof(Digit);
        using Big = ap_uint<W * MAX_NWORDS>;
        using Big2 = ap_uint<2 * W * MAX_NWORDS>;

        static Big pack(const Digit *x, unsigned nwords)
        {
#pragma HLS INLINE
            Big A = 0;
            for (unsigned i = 0; i < nwords && i < MAX_NWORDS; ++i)
            {
#pragma HLS PIPELINE II = 1
                A.range((i + 1) * W - 1, i * W) = x[i];
            }
            return A;
        }

        static void unpack(const Big &P, Digit *x, unsigned nwords)
        {
#pragma HLS INLINE
            for (unsigned i = 0; i < nwords && i < 2 * MAX_NWORDS; ++i)
            {
#pragma HLS PIPELINE II = 1
                x[i] = (Digit)P.range((i + 1) * W - 1, i * W);
            }
        }

        static void mul(const Digit *a, const Digit *b, Digit *c, unsigned nwords)
        {
#pragma HLS INLINE off
            // 結果クリア
            for (unsigned i = 0; i < 2 * nwords; ++i)
            {
#pragma HLS PIPELINE II = 1
                c[i] = 0;
            }

            Big A = pack(a, nwords);
            Big B = pack(b, nwords);
            Big2 ACC = A * B;

            unpack(ACC, c, 2 * nwords);
        }
    };
}

// Comba法を使用した乗算
void mp_mul_comba(const digit_t *a, const digit_t *b, digit_t *c, const unsigned nwords)
{
    mpx::PackedOps<digit_t, MAX_NWORDS, LSW_FIRST>::mul(a, b, c, nwords);
}

// HLS トップ関数（簡易版）
void test_mul_comba(const digit_t a[8], const digit_t b[8], digit_t c[16])
{
#pragma HLS INTERFACE bram port = a
#pragma HLS INTERFACE bram port = b
#pragma HLS INTERFACE bram port = c
#pragma HLS INTERFACE s_axilite port = return bundle = control
    mp_mul_comba(a, b, c, 8);
}

// C シミュレーション用
#ifndef __SYNTHESIS__
int main()
{
    digit_t a[8] = {1, 2, 3, 4, 5, 6, 7, 8};
    digit_t b[8] = {9, 10, 11, 12, 13, 14, 15, 16};
    digit_t c[16] = {0};

    mp_mul_comba(a, b, c, 8);

    std::cout << "Comba multiplication result:\n";
    for (int i = 0; i < 16; i++)
    {
        std::cout << "c[" << i << "] = " << c[i] << "\n";
    }

    return 0;
}
#endif
