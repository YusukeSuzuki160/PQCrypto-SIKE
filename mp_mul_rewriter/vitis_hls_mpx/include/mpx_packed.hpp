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
      Big A = 0;
      // MAX_NWORDS まで固定ループ（HLSで展開・パイプライン可能）
      for (unsigned i = 0; i < MAX_NWORDS; ++i)
      {
#pragma HLS PIPELINE II = 1
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
      // 最大ループ回数を明示的に指定（MAX_NWORDS * 2 = 16）
      for (unsigned i = 0; i < MAX_NWORDS * 2; ++i)
      {
#pragma HLS PIPELINE II = 1
        if (i < out_words)
        {
          ap_uint<W> w = P.range((i + 1) * W - 1, i * W);
          const unsigned dst =
              LSW_FIRST ? i : (out_words - 1u - i);
          y[dst] = (Digit)w;
        }
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
      Big A = pack(a, nwords);
      Big B = pack(b, nwords);
      Big2 P = (Big)A * (Big)B;
      unpack(P, c, 2 * nwords);
    }

    static void sqr(const Digit *a, Digit *c, unsigned nwords)
    {
      Big A = pack(a, nwords);
      Big2 P = (Big)A * (Big)A;
      unpack(P, c, 2 * nwords);
    }
  };

} // namespace mpx
