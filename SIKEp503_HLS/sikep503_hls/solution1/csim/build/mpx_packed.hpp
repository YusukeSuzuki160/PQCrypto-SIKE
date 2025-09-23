// mpx_packed.hpp
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
    static_assert(std::is_unsigned<Digit>::value,
                  "Digit must be an unsigned integer type.");
    static constexpr unsigned W = CHAR_BIT * sizeof(Digit);
    static_assert(W >= 8, "Digit width must be >= 8 bits.");

    using Big = ap_uint<W * MAX_NWORDS>;
    using Big2 = ap_uint<2 * W * MAX_NWORDS>;

    // ---- pack / unpack -------------------------------------------------
    static Big pack(const Digit *x, unsigned nwords)
    {
      Big A = 0;
      // MAX_NWORDS まで固定ループ（HLSで展開・パイプライン可能）
      for (unsigned i = 0; i < MAX_NWORDS; ++i)
      {
#pragma HLS UNROLL factor = 1
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
      for (unsigned i = 0; i < out_words; ++i)
      {
        ap_uint<W> w = P.range((i + 1) * W - 1, i * W);
        const unsigned dst =
            LSW_FIRST ? i : (out_words - 1u - i);
        y[dst] = (Digit)w;
      }
    }

    // ---- add / sub / mul / sqr ----------------------------------------
    // 戻り値: addはcarry-out(0/1)、subはborrow(0/1) を返す
    static unsigned add(const Digit *a, const Digit *b,
                        Digit *c, unsigned nwords)
    {
      Big A = pack(a, nwords);
      Big B = pack(b, nwords);
      // キャリーを正しく計算するために、より大きなビット幅で計算
      ap_uint<W * MAX_NWORDS + 1> S = A + B;
      // 結果をBigにキャストしてアンパック（最上位ビットを除く）
      Big result = S.range(W * MAX_NWORDS - 1, 0);
      unpack(result, c, nwords);
      // キャリーを計算：実際に使用するワード数に基づいて
      ap_uint<1> carry = 0;
      if (nwords < MAX_NWORDS)
      {
        // 使用するワード数がMAX_NWORDSより少ない場合、その位置のビットをチェック
        carry = S[W * nwords];
      }
      else
      {
        // 使用するワード数がMAX_NWORDSの場合、最上位ビットをチェック
        carry = S[W * MAX_NWORDS];
      }
      return (unsigned)carry;
    }

    static unsigned sub(const Digit *a, const Digit *b,
                        Digit *c, unsigned nwords)
    {
      Big A = pack(a, nwords);
      Big B = pack(b, nwords);
      // ボローを正しく計算するために、より大きなビット幅で計算
      ap_uint<W * MAX_NWORDS + 1> D = A - B;
      // 結果をBigにキャストしてアンパック（最上位ビットを除く）
      Big result = D.range(W * MAX_NWORDS - 1, 0);
      unpack(result, c, nwords);
      // ボローを計算：実際に使用するワード数に基づいて
      ap_uint<1> borrow = 0;
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

    static void mul(const Digit *a, const Digit *b,
                    Digit *c, unsigned nwords)
    {
      // 大きな乗算を避けて、小さな乗算に分割
      for (unsigned i = 0; i < 2 * nwords; ++i)
      {
        c[i] = 0;
      }

      // 学校式乗算アルゴリズム
      for (unsigned i = 0; i < nwords; ++i)
      {
        for (unsigned j = 0; j < nwords; ++j)
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
              ap_uint<128> next_sum = c[pos] + high_carry;
              c[pos] = next_sum.range(63, 0);
              high_carry = next_sum.range(127, 64);
              pos++;
            }
          }
        }
      }
    }

    static void sqr(const Digit *a, Digit *c, unsigned nwords)
    {
      // 大きな乗算を避けて、小さな乗算に分割
      for (unsigned i = 0; i < 2 * nwords; ++i)
      {
        c[i] = 0;
      }

      // 学校式平方アルゴリズム
      for (unsigned i = 0; i < nwords; ++i)
      {
        for (unsigned j = 0; j < nwords; ++j)
        {
          // 64ビット×64ビットの乗算
          ap_uint<128> product = (ap_uint<64>)a[i] * (ap_uint<64>)a[j];
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
              ap_uint<128> next_sum = c[pos] + high_carry;
              c[pos] = next_sum.range(63, 0);
              high_carry = next_sum.range(127, 64);
              pos++;
            }
          }
        }
      }
    }
  };

} // namespace mpx
