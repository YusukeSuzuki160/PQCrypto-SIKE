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
#pragma HLS UNROLL
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
#pragma HLS UNROLL
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

  private:
    template <unsigned WORDS, unsigned BASE_WORDS = 2>
    struct KMul
    {
      using U = ap_uint<WORDS * W>;
      using U2 = ap_uint<2 * WORDS * W>;
      static U2 mul(U a, U b)
      {
#pragma HLS INLINE
#pragma HLS ALLOCATION instances = mul limit = 1 operation
#pragma HLS RESOURCE variable = a core = RAM_1P
#pragma HLS RESOURCE variable = b core = RAM_1P
        if constexpr (WORDS <= BASE_WORDS)
        {
          return (U2)a * (U2)b;
        }
        else
        {
          constexpr unsigned L = WORDS / 2;
          constexpr unsigned H = WORDS - L; // H >= L

          using UL = ap_uint<L * W>;
          using UH = ap_uint<H * W>;
          using U2L = ap_uint<2 * L * W>;
          using U2H = ap_uint<2 * H * W>;

          UL a0 = (UL)a;
          UL b0 = (UL)b;
          UH a1 = (UH)(a >> (L * W));
          UH b1 = (UH)(b >> (L * W));

          U2L z0 = KMul<L, BASE_WORDS>::mul(a0, b0);
          U2H z2 = KMul<H, BASE_WORDS>::mul(a1, b1);

          // ---- 修正点：z1 の幅設計と再帰停止 ----
          // 和の最大幅は H ワード + 1
          constexpr unsigned SUMW = H + 1;
          using US = ap_uint<SUMW * W>;
          using U2S = ap_uint<2 * SUMW * W>;

          US sa = (US)a0 + (US)a1;
          US sb = (US)b0 + (US)b1;

          U2S t;
          if constexpr (SUMW <= BASE_WORDS)
          {
            // しきい値以下はそのまま乗算
            t = (U2S)sa * (U2S)sb;
          }
          else if constexpr (SUMW < WORDS)
          {
            // サイズが確実に縮む場合のみ Karatsuba 再帰
            t = KMul<SUMW, BASE_WORDS>::mul(sa, sb);
          }
          else
          {
            // SUMW == WORDS（例: WORDS=3）の自己再帰を回避
            t = (U2S)sa * (U2S)sb;
          }

          U2S z0e = (U2S)z0;
          U2S z2e = (U2S)z2;
          U2S z1e = t - z0e - z2e;

          using U2Full = U2;
          U2Full res = (U2Full)z0;
          res += ((U2Full)z1e) << (L * W);
          res += ((U2Full)z2) << (2 * L * W);
          return res;
        }
      }
    };

    template <unsigned NWORDS>
    static void mul_k_fixed(const Digit *a, const Digit *b, Digit *c)
    {
#pragma HLS INLINE
#pragma HLS ALLOCATION instances = mul limit = 1 operation
#pragma HLS RESOURCE variable = a core = RAM_1P
#pragma HLS RESOURCE variable = b core = RAM_1P
#pragma HLS RESOURCE variable = c core = RAM_1P
      using BigN = ap_uint<NWORDS * W>;
      using Big2N = ap_uint<2 * NWORDS * W>;
      BigN A = (BigN)pack(a, NWORDS);
      BigN B = (BigN)pack(b, NWORDS);
      Big2N P = KMul<NWORDS>::mul(A, B);
      unpack<Big2N>(P, c, 2 * NWORDS);
    }

  public:
    // 学校式→Karatsuba へ差し替え（公開シグネチャは完全同一）
    static void mul(const Digit *a, const Digit *b,
                    Digit *c, unsigned nwords)
    {
#pragma HLS INLINE off
#pragma HLS ALLOCATION instances = mul limit = 1 operation
#pragma HLS RESOURCE variable = a core = RAM_1P
#pragma HLS RESOURCE variable = b core = RAM_1P
#pragma HLS RESOURCE variable = c core = RAM_1P
      // 実行時 nwords を固定幅テンプレートへディスパッチ
      switch (nwords)
      {
      case 0:
        return;
      case 1:
        mul_k_fixed<1>(a, b, c);
        return;
      case 2:
        mul_k_fixed<2>(a, b, c);
        return;
      case 3:
        mul_k_fixed<3>(a, b, c);
        return;
      case 4:
        mul_k_fixed<4>(a, b, c);
        return;
      case 5:
        mul_k_fixed<5>(a, b, c);
        return;
      case 6:
        mul_k_fixed<6>(a, b, c);
        return;
      case 7:
        mul_k_fixed<7>(a, b, c);
        return;
      case 8:
        mul_k_fixed<8>(a, b, c);
        return;
      default:
        return;
      }
    }

    static void sqr(const Digit *a, Digit *c, unsigned nwords)
    {
      // 一貫性のために Karatsuba を利用（公開シグネチャはそのまま）
#pragma HLS INLINE off
      switch (nwords)
      {
      case 0:
        return;
      case 1:
      {
        using BigN = ap_uint<1 * W>;
        using Big2N = ap_uint<2 * 1 * W>;
        BigN A = (BigN)pack(a, 1);
        Big2N P = KMul<1>::mul(A, A);
        unpack<Big2N>(P, c, 2 * 1);
        return;
      }
      case 2:
      {
        using BigN = ap_uint<2 * W>;
        using Big2N = ap_uint<2 * 2 * W>;
        BigN A = (BigN)pack(a, 2);
        Big2N P = KMul<2>::mul(A, A);
        unpack<Big2N>(P, c, 2 * 2);
        return;
      }
      case 3:
      {
        using BigN = ap_uint<3 * W>;
        using Big2N = ap_uint<2 * 3 * W>;
        BigN A = (BigN)pack(a, 3);
        Big2N P = KMul<3>::mul(A, A);
        unpack<Big2N>(P, c, 2 * 3);
        return;
      }
      case 4:
      {
        using BigN = ap_uint<4 * W>;
        using Big2N = ap_uint<2 * 4 * W>;
        BigN A = (BigN)pack(a, 4);
        Big2N P = KMul<4>::mul(A, A);
        unpack<Big2N>(P, c, 2 * 4);
        return;
      }
      case 5:
      {
        using BigN = ap_uint<5 * W>;
        using Big2N = ap_uint<2 * 5 * W>;
        BigN A = (BigN)pack(a, 5);
        Big2N P = KMul<5>::mul(A, A);
        unpack<Big2N>(P, c, 2 * 5);
        return;
      }
      case 6:
      {
        using BigN = ap_uint<6 * W>;
        using Big2N = ap_uint<2 * 6 * W>;
        BigN A = (BigN)pack(a, 6);
        Big2N P = KMul<6>::mul(A, A);
        unpack<Big2N>(P, c, 2 * 6);
        return;
      }
      case 7:
      {
        using BigN = ap_uint<7 * W>;
        using Big2N = ap_uint<2 * 7 * W>;
        BigN A = (BigN)pack(a, 7);
        Big2N P = KMul<7>::mul(A, A);
        unpack<Big2N>(P, c, 2 * 7);
        return;
      }
      case 8:
      {
        using BigN = ap_uint<8 * W>;
        using Big2N = ap_uint<2 * 8 * W>;
        BigN A = (BigN)pack(a, 8);
        Big2N P = KMul<8>::mul(A, A);
        unpack<Big2N>(P, c, 2 * 8);
        return;
      }
      default:
        // フォールバック（元の学校式と同等）
        // {
        //   Big A = pack(a, nwords);
        //   Big2 P = (Big)A * (Big)A;
        //   unpack(P, c, 2 * nwords);
        // }
        return;
      }
    }
  };

} // namespace mpx
