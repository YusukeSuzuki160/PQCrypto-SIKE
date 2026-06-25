// mpx_packed_karatsuba.hpp
// 設定可能な Karatsuba 多倍長乗算（HLS 向け・非再帰）
//
// インクルード前にマクロで上書き可能:
//   MPX_KARA_BASE_WORDS  … この語数以下で直接乗算に切替（分割の打切り幅・既定 4）
//   MPX_MUL_BITS         … 直接乗算器のビット幅（既定: W * MPX_KARA_BASE_WORDS）
#pragma once
#ifndef AP_INT_MAX_W
#define AP_INT_MAX_W 2048
#endif
#include <ap_int.h>
#include <type_traits>
#include <climits>
#include <cstdint>

#ifndef MPX_KARA_BASE_WORDS
#define MPX_KARA_BASE_WORDS 4
#endif

#ifndef MPX_MUL_BITS
#define MPX_MUL_BITS 0
#endif

namespace mpx
{
  namespace detail_kara
  {

    template <class Digit, unsigned MAX_NWORDS>
    struct PackedOpsLSW
    {
      static_assert(std::is_unsigned<Digit>::value,
                    "Digit must be an unsigned integer type.");
      static constexpr unsigned W = CHAR_BIT * sizeof(Digit);
      static_assert(W >= 8, "Digit width must be >= 8 bits.");

      static constexpr unsigned BASE_WORDS = MPX_KARA_BASE_WORDS;
      static constexpr unsigned MUL_BITS =
          (MPX_MUL_BITS > 0) ? (unsigned)MPX_MUL_BITS : (BASE_WORDS * W);

      static_assert(BASE_WORDS >= 1 && BASE_WORDS <= MAX_NWORDS,
                    "MPX_KARA_BASE_WORDS must be in 1..MAX_NWORDS");
      static_assert(MUL_BITS >= W && MUL_BITS <= W * MAX_NWORDS,
                    "MPX_MUL_BITS must be in W..W*MAX_NWORDS");

      using MulIn = ap_uint<MUL_BITS>;
      using MulOut = ap_uint<2 * MUL_BITS>;

      static unsigned add_same_radix(const Digit *xa, unsigned na,
                                     const Digit *xb, unsigned nb,
                                     Digit *dst)
      {
#pragma HLS INLINE
        const unsigned n = na > nb ? na : nb;
        ap_uint<W + 1> carry = 0;
        for (unsigned i = 0; i < n; ++i)
        {
#pragma HLS PIPELINE II = 1
          ap_uint<W> av = (i < na) ? (ap_uint<W>)xa[i] : (ap_uint<W>)0;
          ap_uint<W> bv = (i < nb) ? (ap_uint<W>)xb[i] : (ap_uint<W>)0;
          ap_uint<W + 2> s = (ap_uint<W + 2>)av + (ap_uint<W + 2>)bv + (ap_uint<W + 2>)carry;
          dst[i] = (Digit)s.range(W - 1, 0);
          carry = s.range(W + 1, W);
        }
        dst[n] = (Digit)(unsigned)carry;
        return carry ? (n + 1) : n;
      }

      static void mul_direct(const Digit *a, const Digit *b, Digit *c, unsigned nwords)
      {
#pragma HLS INLINE
        MulIn A = 0, B = 0;
        const unsigned max_words = (MUL_BITS + W - 1) / W;
        for (unsigned i = 0; i < nwords && i < max_words; ++i)
        {
#pragma HLS PIPELINE II = 1
          A.range((i + 1) * W - 1, i * W) = (ap_uint<W>)a[i];
          B.range((i + 1) * W - 1, i * W) = (ap_uint<W>)b[i];
        }
        MulOut P = (MulIn)A * (MulIn)B;
        for (unsigned i = 0; i < 2 * nwords; ++i)
        {
#pragma HLS PIPELINE II = 1
          c[i] = (Digit)P.range((i + 1) * W - 1, i * W);
        }
      }

      static void karatsuba_combine(unsigned nwords, unsigned n_lo,
                                    const Digit *z0, const Digit *z2, const Digit *z1,
                                    unsigned n_z1, Digit *c)
      {
#pragma HLS INLINE
        static constexpr int ACC_BITS = (int)(2 * W * MAX_NWORDS + 32);
        using AccT = ap_int<ACC_BITS>;

        AccT W0 = 0, W2 = 0, W1v = 0;
        for (unsigned i = 0; i < 2 * n_lo; ++i)
        {
#pragma HLS PIPELINE II = 1
          W0 += (AccT)(ap_uint<W>)z0[i] << (int)(i * W);
          W2 += (AccT)(ap_uint<W>)z2[i] << (int)(i * W);
        }
        for (unsigned i = 0; i < 2 * n_z1; ++i)
        {
#pragma HLS PIPELINE II = 1
          W1v += (AccT)(ap_uint<W>)z1[i] << (int)(i * W);
        }

        const AccT mid = W1v - W0 - W2;
        const AccT Pacc =
            W0 + (mid << (int)(n_lo * W)) + (W2 << (int)(2 * n_lo * W));

        for (unsigned i = 0; i < 2 * nwords; ++i)
        {
#pragma HLS PIPELINE II = 1
          ap_int<W + 2> limb = Pacc.range((int)((i + 1) * W - 1), (int)(i * W));
          c[i] = (Digit)(ap_uint<W>)limb;
        }
      }

      // 再帰テンプレートはすべてインライン化し、手書き平坦版と同様に 1 関数へ統合させる
      template <unsigned MaxN>
      static void mul_sized(const Digit *a, const Digit *b, Digit *c, unsigned nwords)
      {
#pragma HLS INLINE
        if (nwords == 0)
          return;
        if (nwords <= BASE_WORDS || MaxN <= BASE_WORDS)
        {
          mul_direct(a, b, c, nwords);
          return;
        }

        static constexpr unsigned HALF = (MaxN + 1) / 2;
        static constexpr unsigned Z1_WORDS = MaxN + 2;

        const unsigned n_lo = nwords / 2;
        const unsigned n_hi = nwords - n_lo;

        Digit Al[HALF], Ah[HALF], Bl[HALF], Bh[HALF];
#pragma HLS ARRAY_PARTITION variable = Al complete dim = 1
#pragma HLS ARRAY_PARTITION variable = Ah complete dim = 1
#pragma HLS ARRAY_PARTITION variable = Bl complete dim = 1
#pragma HLS ARRAY_PARTITION variable = Bh complete dim = 1

        Digit z0[MaxN], z2[MaxN], z1[Z1_WORDS];
        Digit Sal[HALF + 2], Sbl[HALF + 2];
#pragma HLS ARRAY_PARTITION variable = Sal complete dim = 1
#pragma HLS ARRAY_PARTITION variable = Sbl complete dim = 1

        for (unsigned i = 0; i < n_lo; ++i)
        {
#pragma HLS PIPELINE II = 1
          Al[i] = a[i];
          Bl[i] = b[i];
        }
        for (unsigned i = 0; i < n_hi; ++i)
        {
#pragma HLS PIPELINE II = 1
          Ah[i] = a[n_lo + i];
          Bh[i] = b[n_lo + i];
        }

        mul_sized<(MaxN + 1) / 2>(Al, Bl, z0, n_lo);
        mul_sized<(MaxN + 1) / 2>(Ah, Bh, z2, n_hi);
        const unsigned n_sal = add_same_radix(Al, n_lo, Ah, n_hi, Sal);
        const unsigned n_sbl = add_same_radix(Bl, n_lo, Bh, n_hi, Sbl);
        const unsigned n_mul = n_sal > n_sbl ? n_sal : n_sbl;
        mul_sized<(MaxN + 1) / 2>(Sal, Sbl, z1, n_mul);
        karatsuba_combine(nwords, n_lo, z0, z2, z1, n_mul, c);
      }

      static void mul(const Digit *a, const Digit *b, Digit *c, unsigned nwords)
      {
#pragma HLS INLINE off
        mul_sized<MAX_NWORDS>(a, b, c, nwords);
      }
    };

  } // namespace detail_kara

  template <class Digit, unsigned MAX_NWORDS, bool LSW_FIRST>
  struct PackedOps
  {
    static void mul(const Digit *a, const Digit *b, Digit *c, unsigned nwords)
    {
#pragma HLS INLINE off
      if (LSW_FIRST)
      {
        detail_kara::PackedOpsLSW<Digit, MAX_NWORDS>::mul(a, b, c, nwords);
        return;
      }

      static constexpr unsigned W = CHAR_BIT * sizeof(Digit);
      Digit la[MAX_NWORDS], lb[MAX_NWORDS], lc[2 * MAX_NWORDS];
      for (unsigned i = 0; i < MAX_NWORDS; ++i)
      {
#pragma HLS PIPELINE II = 1
        la[i] = a[nwords - 1u - i];
        lb[i] = b[nwords - 1u - i];
      }
      for (unsigned i = 0; i < 2 * MAX_NWORDS; ++i)
      {
#pragma HLS UNROLL
        lc[i] = 0;
      }
      detail_kara::PackedOpsLSW<Digit, MAX_NWORDS>::mul(la, lb, lc, nwords);
      for (unsigned i = 0; i < 2 * nwords; ++i)
      {
#pragma HLS PIPELINE II = 1
        c[i] = lc[2 * nwords - 1u - i];
      }
    }
  };

} // namespace mpx
