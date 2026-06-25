// mpx_packed_64bit.hpp
// 64ビット学校式乗算用のPackedOpsクラス

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
    struct PackedOps
    {
        static_assert(std::is_unsigned<Digit>::value, "Digit must be unsigned integral type");
        static constexpr unsigned W = sizeof(Digit) * CHAR_BIT;

        using Wide2 = ap_uint<2 * W>;
        using Wide4 = ap_uint<4 * W>;

        // ---- パック/アンパック ----
        static ap_uint<W * MAX_NWORDS> pack(const Digit *x, unsigned nwords)
        {
            ap_uint<W * MAX_NWORDS> A = 0;
            for (unsigned i = 0; i < nwords && i < MAX_NWORDS; ++i)
            {
#pragma HLS loop_tripcount min = 1 max = 8
                if (LSW_FIRST)
                {
                    A.range((i + 1) * W - 1, i * W) = x[i];
                }
                else
                {
                    A.range((MAX_NWORDS - i) * W - 1, (MAX_NWORDS - 1 - i) * W) = x[i];
                }
            }
            return A;
        }

        static void unpack(const ap_uint<W * MAX_NWORDS> &A, Digit *x, unsigned nwords)
        {
            for (unsigned i = 0; i < nwords && i < MAX_NWORDS; ++i)
            {
#pragma HLS loop_tripcount min = 1 max = 8
                if (LSW_FIRST)
                {
                    x[i] = A.range((i + 1) * W - 1, i * W);
                }
                else
                {
                    x[i] = A.range((MAX_NWORDS - i) * W - 1, (MAX_NWORDS - 1 - i) * W);
                }
            }
        }

        // ---- 学校式乗算（64ビット単位 = 2×32ビット） -------
        static void mul(const Digit *a, const Digit *b, Digit *c, unsigned nwords)
        {
            // 0-initialize result
            for (unsigned i = 0; i < 2 * nwords; ++i)
            {
#pragma HLS loop_tripcount min = 1 max = 16
                c[i] = 0;
            }

            // Pairwise 64-bit × 64-bit schoolbook accumulation
            for (unsigned i = 0; i < nwords; i += 2)
            {
#pragma HLS loop_tripcount min = 1 max = 4
#pragma HLS PIPELINE II = 1
                ap_uint<64> a64;
                if (i + 1 < nwords)
                {
                    a64 = ((ap_uint<64>)a[i + 1] << 32) | (ap_uint<64>)a[i];
                }
                else
                {
                    a64 = (ap_uint<64>)a[i];
                }

                for (unsigned j = 0; j < nwords; j += 2)
                {
#pragma HLS UNROLL
                    ap_uint<64> b64;
                    if (j + 1 < nwords)
                    {
                        b64 = ((ap_uint<64>)b[j + 1] << 32) | (ap_uint<64>)b[j];
                    }
                    else
                    {
                        b64 = (ap_uint<64>)b[j];
                    }

                    // 64x64 -> 128 product
                    ap_uint<128> prod = a64 * b64;
                    ap_uint<32> limb0 = prod.range(31, 0);
                    ap_uint<32> limb1 = prod.range(63, 32);
                    ap_uint<32> limb2 = prod.range(95, 64);
                    ap_uint<32> limb3 = prod.range(127, 96);

                    unsigned pos = i + j;

                    // Add into c[pos .. pos+3] with carry propagation
                    ap_uint<32> limbs[4];
                    limbs[0] = limb0;
                    limbs[1] = limb1;
                    limbs[2] = limb2;
                    limbs[3] = limb3;

                    ap_uint<32> carry = 0;
                    for (int k = 0; k < 4; ++k)
                    {
                        if (pos + (unsigned)k >= 2 * nwords)
                            break;
                        ap_uint<64> sum = (ap_uint<64>)c[pos + (unsigned)k] + limbs[k] + (ap_uint<64>)carry;
                        c[pos + (unsigned)k] = (Digit)sum.range(31, 0);
                        carry = (ap_uint<32>)sum.range(63, 32);
                    }
                    unsigned k = 4;
                    while (carry && pos + k < 2 * nwords)
                    {
                        ap_uint<64> sum = (ap_uint<64>)c[pos + k] + (ap_uint<64>)carry;
                        c[pos + k] = (Digit)sum.range(31, 0);
                        carry = (ap_uint<32>)sum.range(63, 32);
                        ++k;
                    }
                }
            }
        }

        // ---- 加算 ----
        static void add(Digit *x, const Digit *y, unsigned nwords)
        {
            const unsigned W = sizeof(Digit) * CHAR_BIT;
            using Big = ap_uint<W * MAX_NWORDS>;
            Big A = pack(x, nwords);
            Big B = pack(y, nwords);
            Big S = A + B;
            unpack(S, x, nwords);
        }

        // ---- 減算 (A -= B, 借りの有無を返す) ----
        static unsigned sub(Digit *a, const Digit *b, unsigned nwords)
        {
            const unsigned W = sizeof(Digit) * CHAR_BIT;
            using Big = ap_uint<W * MAX_NWORDS>;
            Big A = pack(a, nwords);
            Big B = pack(b, nwords);
            Big D = A - B; // 借り発生時はMSBが1になる
            unpack(D, a, nwords);

            // 借りの検出
            bool borrow = false;
            if (nwords < MAX_NWORDS)
            {
                // 使用するワード数がMAX_NWORDSより少ない場合、その位置のビットをチェック
                borrow = D[W * nwords];
            }
            else
            {
                // 使用するワード数がMAX_NWORDSの場合、最上位ビットをチェック
                borrow = D[W * MAX_NWORDS];
            }
            return (unsigned)borrow;
        }
    };

} // namespace mpx
