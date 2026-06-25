// mpx_packed_karatsuba.hpp
// 設定可能な Karatsuba 多倍長乗算（HLS 向け・非再帰）
//
// インクルード前にマクロで上書き可能:
//   MPX_KARA_BASE_WORDS  … この語数以下で直接乗算に切替（分割の打切り幅・既定 4）
//   MPX_MUL_BITS         … 直接乗算器のビット幅（既定: W * MPX_KARA_BASE_WORDS）
//
// 例: #define MPX_KARA_BASE_WORDS 2
//     #define MPX_MUL_BITS 128
//     #include "mpx_packed_karatsuba.hpp"
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
      static_assert(MUL_BITS >= BASE_WORDS * W || BASE_WORDS == 1,
                    "MPX_MUL_BITS should cover at least BASE_WORDS digits");

      using Big = ap_uint<W * MAX_NWORDS>;
      using Big2 = ap_uint<2 * W * MAX_NWORDS>;
      using MulIn = ap_uint<MUL_BITS>;
      using MulOut = ap_uint<2 * MUL_BITS>;

      static Big pack_full(const Digit *x, unsigned nwords)
      {
#pragma HLS INLINE
        Big A = 0;
        for (unsigned i = 0; i < MAX_NWORDS; ++i)
        {
#pragma HLS PIPELINE II = 1
          if (i < nwords)
          {
            ap_uint<W> w = (ap_uint<W>)x[i];
            A |= (Big)w << (i * W);
          }
        }
        return A;
      }

      template <class Wide>
      static void unpack_full(const Wide &P, Digit *y, unsigned out_words)
      {
#pragma HLS INLINE
        for (unsigned i = 0; i < out_words; ++i)
        {
#pragma HLS PIPELINE II = 1
          ap_uint<W> w = P.range((i + 1) * W - 1, i * W);
          y[i] = (Digit)w;
        }
      }

      static unsigned add_same_radix(const Digit *xa, unsigned na,
                                     const Digit *xb, unsigned nb,
                                     Digit *dst)
      {
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

      // MPX_MUL_BITS 幅の乗算器で nwords 語分を直接乗算
      static void mul_direct(const Digit *a, const Digit *b, Digit *c, unsigned nwords)
      {
#pragma HLS INLINE
        MulIn A = 0, B = 0;
        const unsigned max_words = (MUL_BITS + W - 1) / W;
        for (unsigned i = 0; i < nwords && i < max_words; ++i)
        {
#pragma HLS PIPELINE II = 1
          A |= (MulIn)(ap_uint<W>)a[i] << (i * W);
          B |= (MulIn)(ap_uint<W>)b[i] << (i * W);
        }
        MulOut P = (MulIn)A * (MulIn)B;
        for (unsigned i = 0; i < 2 * nwords; ++i)
        {
#pragma HLS PIPELINE II = 1
          c[i] = (Digit)P.range((i + 1) * W - 1, i * W);
        }
      }

      template <class Wide>
      static void limbs_to_wide(const Digit *z, unsigned nz, Wide &acc)
      {
        acc = 0;
        for (unsigned i = 0; i < nz; ++i)
        {
#pragma HLS PIPELINE II = 1
          acc += (Wide)(ap_uint<W>)z[i] << (int)(i * W);
        }
      }

      static void karatsuba_combine(unsigned nwords, unsigned n_lo, unsigned n_hi,
                                    const Digit *z0, const Digit *z2, const Digit *z1,
                                    unsigned n_z1, Digit *c)
      {
        static constexpr int ACC_BITS = (int)(2 * W * MAX_NWORDS + 32);
        using AccT = ap_int<ACC_BITS>;
        AccT W0 = 0, W2 = 0, W1v = 0;
        limbs_to_wide(z0, 2 * n_lo, W0);
        limbs_to_wide(z2, 2 * n_hi, W2);
        limbs_to_wide(z1, 2 * n_z1, W1v);
        const AccT mid = W1v - W0 - W2;
        const AccT Pacc = W0 + (mid << (int)(n_lo * W)) + (W2 << (int)(2 * n_lo * W));
        Big2 out = 0;
        for (unsigned i = 0; i < 2 * nwords; ++i)
        {
#pragma HLS PIPELINE II = 1
          ap_int<W + 2> limb = Pacc.range((int)((i + 1) * W - 1), (int)(i * W));
          out.range((i + 1) * W - 1, i * W) = (ap_uint<W>)limb;
        }
        unpack_full(out, c, 2 * nwords);
      }

      // コンパイル時 MaxN で展開（実行時再帰なし）
      template <unsigned MaxN>
      static void mul_sized(const Digit *a, const Digit *b, Digit *c, unsigned nwords)
      {
#pragma HLS INLINE off
        if (nwords == 0)
          return;
        if (nwords <= BASE_WORDS || MaxN <= BASE_WORDS)
        {
          mul_direct(a, b, c, nwords);
          return;
        }

        const unsigned n_lo = nwords / 2;
        const unsigned n_hi = nwords - n_lo;
        Digit Al[MAX_NWORDS], Ah[MAX_NWORDS], Bl[MAX_NWORDS], Bh[MAX_NWORDS];
        Digit z0[2 * MAX_NWORDS], z2[2 * MAX_NWORDS], z1[2 * (MAX_NWORDS + 2)];
        Digit Sal[MAX_NWORDS + 2], Sbl[MAX_NWORDS + 2];
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
        for (unsigned i = 0; i < MAX_NWORDS + 2; ++i)
        {
          Sal[i] = 0;
          Sbl[i] = 0;
        }

        mul_sized<(MaxN + 1) / 2>(Al, Bl, z0, n_lo);
        mul_sized<(MaxN + 1) / 2>(Ah, Bh, z2, n_hi);
        const unsigned n_sal = add_same_radix(Al, n_lo, Ah, n_hi, Sal);
        const unsigned n_sbl = add_same_radix(Bl, n_lo, Bh, n_hi, Sbl);
        const unsigned n_mul = n_sal > n_sbl ? n_sal : n_sbl;
        mul_sized<(MaxN + 1) / 2>(Sal, Sbl, z1, n_mul);
        karatsuba_combine(nwords, n_lo, n_hi, z0, z2, z1, n_mul, c);
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
    static constexpr unsigned W = CHAR_BIT * sizeof(Digit);
    static constexpr unsigned BASE_WORDS = MPX_KARA_BASE_WORDS;
    static constexpr unsigned MUL_BITS =
        detail_kara::PackedOpsLSW<Digit, MAX_NWORDS>::MUL_BITS;

    using Big = ap_uint<W * MAX_NWORDS>;
    using Big2 = ap_uint<2 * W * MAX_NWORDS>;

    static Big pack(const Digit *x, unsigned nwords)
    {
#pragma HLS INLINE
      Big A = 0;
      for (unsigned i = 0; i < MAX_NWORDS; ++i)
      {
#pragma HLS PIPELINE II = 1
        if (i < nwords)
        {
          const unsigned src = LSW_FIRST ? i : (nwords - 1u - i);
          ap_uint<W> w = (ap_uint<W>)x[src];
          A |= (Big)w << (i * W);
        }
      }
      return A;
    }

    template <class Wide>
    static void unpack(const Wide &P, Digit *y, unsigned out_words)
    {
#pragma HLS INLINE
      for (unsigned i = 0; i < out_words; ++i)
      {
#pragma HLS PIPELINE II = 1
        ap_uint<W> w = P.range((i + 1) * W - 1, i * W);
        const unsigned dst = LSW_FIRST ? i : (out_words - 1u - i);
        y[dst] = (Digit)w;
      }
    }

    static void phys_to_logical(const Digit *a, unsigned nwords, Digit *out)
    {
      if (LSW_FIRST)
      {
        for (unsigned i = 0; i < nwords; ++i)
        {
#pragma HLS PIPELINE II = 1
          out[i] = a[i];
        }
      }
      else
      {
        for (unsigned i = 0; i < nwords; ++i)
        {
#pragma HLS PIPELINE II = 1
          out[i] = a[nwords - 1u - i];
        }
      }
    }

    static void logical_to_phys(const Digit *in, unsigned nwords, Digit *a)
    {
      if (LSW_FIRST)
      {
        for (unsigned i = 0; i < nwords; ++i)
        {
#pragma HLS PIPELINE II = 1
          a[i] = in[i];
        }
      }
      else
      {
        for (unsigned i = 0; i < nwords; ++i)
        {
#pragma HLS PIPELINE II = 1
          a[i] = in[nwords - 1u - i];
        }
      }
    }

    static void mul(const Digit *a, const Digit *b, Digit *c, unsigned nwords)
    {
#pragma HLS INLINE off
      Digit la[MAX_NWORDS], lb[MAX_NWORDS], lc[2 * MAX_NWORDS];
      for (unsigned i = 0; i < MAX_NWORDS; ++i)
      {
#pragma HLS UNROLL
        la[i] = 0;
        lb[i] = 0;
      }
      for (unsigned i = 0; i < 2 * MAX_NWORDS; ++i)
      {
#pragma HLS UNROLL
        lc[i] = 0;
      }
      phys_to_logical(a, nwords, la);
      phys_to_logical(b, nwords, lb);
      detail_kara::PackedOpsLSW<Digit, MAX_NWORDS>::mul(la, lb, lc, nwords);
      logical_to_phys(lc, 2 * nwords, c);
    }
  };

} // namespace mpx
