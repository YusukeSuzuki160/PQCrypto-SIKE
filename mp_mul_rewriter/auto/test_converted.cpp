// test_converted.cpp
// 変換後のmpx::PackedOpsを使用するテスト
#include <ap_int.h>
#include <climits>
#include <cstdint>
#include <iostream>
#include <cstring>
#include <type_traits>

namespace mpx {
    // LSW_FIRST = true: a[0]が最下位ワード（通常の学校式）
    template <class Digit, unsigned MAX_NWORDS, bool LSW_FIRST = true>
    struct PackedOps {
        static_assert(std::is_unsigned<Digit>::value,
                      "Digit must be an unsigned integer type.");
        static constexpr unsigned W = CHAR_BIT * sizeof(Digit);
        static_assert(W >= 8, "Digit width must be >= 8 bits.");

        using Big = ap_uint<W * MAX_NWORDS>;
        using Big2 = ap_uint<2 * W * MAX_NWORDS>;

        static Big pack(const Digit *x, unsigned nwords) {
#pragma HLS INLINE
            Big A = 0;
            for (unsigned i = 0; i < MAX_NWORDS; ++i) {
#pragma HLS PIPELINE II = 1
                if (i < nwords) {
                    const unsigned src = LSW_FIRST ? i : (nwords - 1u - i);
                    ap_uint<W> w = (ap_uint<W>)x[src];
                    A |= (Big)w << (i * W);
                }
            }
            return A;
        }

        template <class Wide>
        static void unpack(const Wide &P, Digit *y, unsigned out_words) {
#pragma HLS INLINE
            for (unsigned i = 0; i < out_words; ++i) {
#pragma HLS PIPELINE II = 1
                ap_uint<W> w = P.range((i + 1) * W - 1, i * W);
                const unsigned dst = LSW_FIRST ? i : (out_words - 1u - i);
                y[dst] = (Digit)w;
            }
        }

        static void mul(const Digit *a, const Digit *b, Digit *c, unsigned nwords) {
            Big A = pack(a, nwords);
            Big B = pack(b, nwords);
            Big2 P = (Big)A * (Big)B;
            unpack(P, c, 2 * nwords);
        }
    };
}

using digit_t = uint64_t;
static const unsigned MAX_NWORDS = 8;
static const int LSW_FIRST = 1;

// 変換後の乗算（PackedOpsを使用）
void mp_mul_converted(const digit_t *a, const digit_t *b, digit_t *c, const unsigned nwords)
{
    mpx::PackedOps<digit_t, MAX_NWORDS, LSW_FIRST>::mul(a, b, c, nwords);
}

// HLS トップ関数（簡易版）
void test_mul_converted(const digit_t a[8], const digit_t b[8], digit_t c[16])
{
#pragma HLS INTERFACE bram port = a
#pragma HLS INTERFACE bram port = b
#pragma HLS INTERFACE bram port = c
#pragma HLS INTERFACE s_axilite port = return bundle = control
    mp_mul_converted(a, b, c, 8);
}

// C シミュレーション用
#ifndef __SYNTHESIS__
int main()
{
    digit_t a[8] = {1, 2, 3, 4, 5, 6, 7, 8};
    digit_t b[8] = {9, 10, 11, 12, 13, 14, 15, 16};
    digit_t c[16] = {0};

    mp_mul_converted(a, b, c, 8);

    std::cout << "Converted multiplication result:\n";
    for (int i = 0; i < 16; i++)
    {
        std::cout << "c[" << i << "] = " << c[i] << "\n";
    }

    return 0;
}
#endif
