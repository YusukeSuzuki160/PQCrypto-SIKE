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
#pragma HLS INLINE
#pragma HLS ALLOCATION instances = mul limit = 1 operation
#pragma HLS RESOURCE variable = x core = RAM_1P
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
#pragma HLS INLINE
#pragma HLS ALLOCATION instances = mul limit = 1 operation
#pragma HLS RESOURCE variable = y core = RAM_1P
      for (unsigned i = 0; i < out_words; ++i)
      {
#pragma HLS UNROLL factor = 1
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
#pragma HLS ALLOCATION instances = mul limit = 1 operation
#pragma HLS RESOURCE variable = a core = RAM_1P
#pragma HLS RESOURCE variable = b core = RAM_1P
#pragma HLS RESOURCE variable = c core = RAM_1P
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
#pragma HLS ALLOCATION instances = mul limit = 1 operation
#pragma HLS RESOURCE variable = a core = RAM_1P
#pragma HLS RESOURCE variable = b core = RAM_1P
#pragma HLS RESOURCE variable = c core = RAM_1P
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
#pragma HLS INLINE off
#pragma HLS ALLOCATION instances = mul limit = 1 operation
#pragma HLS ALLOCATION instances = mul limit = 1 function
#pragma HLS RESOURCE variable = a core = RAM_1P
#pragma HLS RESOURCE variable = b core = RAM_1P
#pragma HLS RESOURCE variable = c core = RAM_1P
#pragma HLS BIND_STORAGE variable = a type = RAM_1P
#pragma HLS BIND_STORAGE variable = b type = RAM_1P
#pragma HLS BIND_STORAGE variable = c type = RAM_1P
#pragma HLS RESOURCE core = Mul_LUT
#pragma HLS DATAFLOW off
      // 大きな乗算を避けて、小さな乗算に分割
      for (unsigned i = 0; i < 2 * nwords; ++i)
      {
        c[i] = 0;
      }

      for (unsigned i = 0; i < nwords; ++i)
      {
        for (unsigned j = 0; j < nwords; ++j)
        {
          // 64ビット×64ビットの乗算のみ
          ap_uint<128> product = (ap_uint<64>)a[i] * (ap_uint<64>)b[j];
          ap_uint<64> low = product.range(63, 0);
          ap_uint<64> high = product.range(127, 64);

          // 結果を加算
          ap_uint<64> sum = c[i + j] + low;
          c[i + j] = sum.range(63, 0);
          ap_uint<64> carry = sum.range(127, 64);

          if (i + j + 1 < 2 * nwords)
          {
            c[i + j + 1] += high + carry;
          }
        }
      }
    }

    static void sqr(const Digit *a, Digit *c, unsigned nwords)
    {
#pragma HLS ALLOCATION instances = mul limit = 1 operation
#pragma HLS RESOURCE variable = a core = RAM_1P
#pragma HLS RESOURCE variable = c core = RAM_1P
#pragma HLS RESOURCE core = Mul_LUT
#pragma HLS DATAFLOW off
      // 大きな乗算を避けて、小さな乗算に分割
      for (unsigned i = 0; i < 2 * nwords; ++i)
      {
        c[i] = 0;
      }

      for (unsigned i = 0; i < nwords; ++i)
      {
        for (unsigned j = 0; j < nwords; ++j)
        {
          // 64ビット×64ビットの乗算のみ
          ap_uint<128> product = (ap_uint<64>)a[i] * (ap_uint<64>)a[j];
          ap_uint<64> low = product.range(63, 0);
          ap_uint<64> high = product.range(127, 64);

          // 結果を加算
          ap_uint<64> sum = c[i + j] + low;
          c[i + j] = sum.range(63, 0);
          ap_uint<64> carry = sum.range(127, 64);

          if (i + j + 1 < 2 * nwords)
          {
            c[i + j + 1] += high + carry;
          }
        }
      }
    }
  };

} // namespace mpx
