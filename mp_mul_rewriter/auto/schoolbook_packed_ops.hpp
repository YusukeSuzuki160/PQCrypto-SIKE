// schoolbook_packed_ops.hpp
// 異なるビット幅の学校式乗算を提供するPackedOpsクラス

#ifndef SCHOOLBOOK_PACKED_OPS_HPP
#define SCHOOLBOOK_PACKED_OPS_HPP

#include <ap_int.h>
#include <climits>
#include <type_traits>

namespace mpx
{

    // 学校式乗算用のPackedOpsクラステンプレート
    template <typename Digit, unsigned MAX_NWORDS, unsigned MUL_BITS, bool LSW_FIRST>
    class SchoolbookPackedOps
    {
    public:
        static constexpr unsigned W = sizeof(Digit) * 8;
        static constexpr unsigned MAX_BITS = W * MAX_NWORDS;

        using Big = ap_uint<MAX_BITS>;

        // パック関数
        static Big pack(const Digit *a, unsigned nwords)
        {
            Big result = 0;
            for (unsigned i = 0; i < nwords && i < MAX_NWORDS; ++i)
            {
                if (LSW_FIRST)
                {
                    result |= ((Big)a[i]) << (i * W);
                }
                else
                {
                    result |= ((Big)a[i]) << ((MAX_NWORDS - 1 - i) * W);
                }
            }
            return result;
        }

        // アンパック関数
        static void unpack(const Big &a, Digit *c, unsigned nwords)
        {
            for (unsigned i = 0; i < nwords && i < MAX_NWORDS; ++i)
            {
                if (LSW_FIRST)
                {
                    c[i] = a.range((i + 1) * W - 1, i * W);
                }
                else
                {
                    c[i] = a.range((MAX_NWORDS - i) * W - 1, (MAX_NWORDS - 1 - i) * W);
                }
            }
        }

        // 学校式乗算関数
        static void mul(const Digit *a, const Digit *b, Digit *c, unsigned nwords)
        {
            // 結果配列を初期化
            for (unsigned i = 0; i < 2 * nwords; ++i)
            {
#pragma HLS loop_tripcount min = 1 max = 16
                c[i] = 0;
            }

            // 学校式乗算アルゴリズム（指定されたビット幅で）
            for (unsigned i = 0; i < nwords; ++i)
            {
#pragma HLS loop_tripcount min = 1 max = 8
                for (unsigned j = 0; j < nwords; ++j)
                {
#pragma HLS loop_tripcount min = 1 max = 8
                    // 指定されたビット幅での乗算
                    if (MUL_BITS == 16)
                    {
                        // 16ビット×16ビットの乗算
                        ap_uint<32> product = (ap_uint<16>)a[i] * (ap_uint<16>)b[j];
                        ap_uint<16> low = product.range(15, 0);
                        ap_uint<16> high = product.range(31, 16);

                        // 現在の位置に加算
                        ap_uint<32> sum = c[i + j] + low;
                        c[i + j] = sum.range(15, 0);
                        ap_uint<16> carry = sum.range(31, 16);

                        // キャリーを次の位置に伝播
                        unsigned int pos = i + j + 1;
                        while (carry > 0 && pos < 2 * nwords)
                        {
#pragma HLS loop_tripcount min = 0 max = 8
                            ap_uint<32> next_sum = c[pos] + carry;
                            c[pos] = next_sum.range(15, 0);
                            carry = next_sum.range(31, 16);
                            pos++;
                        }

                        // 上位ビットを加算
                        if (i + j + 1 < 2 * nwords)
                        {
                            ap_uint<32> high_sum = c[i + j + 1] + high;
                            c[i + j + 1] = high_sum.range(15, 0);
                            ap_uint<16> high_carry = high_sum.range(31, 16);

                            // 上位ビットのキャリーも伝播
                            pos = i + j + 2;
                            while (high_carry > 0 && pos < 2 * nwords)
                            {
#pragma HLS loop_tripcount min = 0 max = 8
                                ap_uint<32> next_sum = c[pos] + high_carry;
                                c[pos] = next_sum.range(15, 0);
                                high_carry = next_sum.range(31, 16);
                                pos++;
                            }
                        }
                    }
                    else if (MUL_BITS == 32)
                    {
                        // 32ビット×32ビットの乗算
                        ap_uint<64> product = (ap_uint<32>)a[i] * (ap_uint<32>)b[j];
                        ap_uint<32> low = product.range(31, 0);
                        ap_uint<32> high = product.range(63, 32);

                        // 現在の位置に加算
                        ap_uint<64> sum = c[i + j] + low;
                        c[i + j] = sum.range(31, 0);
                        ap_uint<32> carry = sum.range(63, 32);

                        // キャリーを次の位置に伝播
                        unsigned int pos = i + j + 1;
                        while (carry > 0 && pos < 2 * nwords)
                        {
#pragma HLS loop_tripcount min = 0 max = 8
                            ap_uint<64> next_sum = c[pos] + carry;
                            c[pos] = next_sum.range(31, 0);
                            carry = next_sum.range(63, 32);
                            pos++;
                        }

                        // 上位ビットを加算
                        if (i + j + 1 < 2 * nwords)
                        {
                            ap_uint<64> high_sum = c[i + j + 1] + high;
                            c[i + j + 1] = high_sum.range(31, 0);
                            ap_uint<32> high_carry = high_sum.range(63, 32);

                            // 上位ビットのキャリーも伝播
                            pos = i + j + 2;
                            while (high_carry > 0 && pos < 2 * nwords)
                            {
#pragma HLS loop_tripcount min = 0 max = 8
                                ap_uint<64> next_sum = c[pos] + high_carry;
                                c[pos] = next_sum.range(31, 0);
                                high_carry = next_sum.range(63, 32);
                                pos++;
                            }
                        }
                    }
                    else if (MUL_BITS == 64)
                    {
                        // 64ビット×64ビットの乗算
                        ap_uint<128> product = (ap_uint<64>)a[i] * (ap_uint<64>)b[j];
                        ap_uint<64> low = product.range(63, 0);
                        ap_uint<64> high = product.range(127, 64);

                        // 現在の位置に加算
                        ap_uint<128> sum = c[i + j] + low;
                        c[i + j] = sum.range(63, 0);
                        ap_uint<64> carry = sum.range(127, 64);

                        // キャリーを次の位置に伝播
                        unsigned int pos = i + j + 1;
                        while (carry > 0 && pos < 2 * nwords)
                        {
#pragma HLS loop_tripcount min = 0 max = 8
                            ap_uint<128> next_sum = c[pos] + carry;
                            c[pos] = next_sum.range(63, 0);
                            carry = next_sum.range(127, 64);
                            pos++;
                        }

                        // 上位ビットを加算
                        if (i + j + 1 < 2 * nwords)
                        {
                            ap_uint<128> high_sum = c[i + j + 1] + high;
                            c[i + j + 1] = high_sum.range(63, 0);
                            ap_uint<64> high_carry = high_sum.range(127, 64);

                            // 上位ビットのキャリーも伝播
                            pos = i + j + 2;
                            while (high_carry > 0 && pos < 2 * nwords)
                            {
#pragma HLS loop_tripcount min = 0 max = 8
                                ap_uint<128> next_sum = c[pos] + high_carry;
                                c[pos] = next_sum.range(63, 0);
                                high_carry = next_sum.range(127, 64);
                                pos++;
                            }
                        }
                    }
                }
            }
        }

        // 平方関数（乗算と同じ実装）
        static void sqr(const Digit *a, Digit *c, unsigned nwords)
        {
            mul(a, a, c, nwords);
        }
    };

} // namespace mpx

#endif // SCHOOLBOOK_PACKED_OPS_HPP
