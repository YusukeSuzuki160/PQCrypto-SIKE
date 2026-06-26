// mpx_packed_karatsuba.hpp
// 設定可能な Karatsuba 多倍長乗算（HLS 向け・非再帰）
//
// インクルード前にマクロで上書き可能:
//   MPX_KARA_BASE_WORDS  … この語数以下で直接乗算に切替（分割の打切り幅・既定 4）
//   MPX_MUL_BITS         … 直接乗算器のビット幅（既定: W * MPX_KARA_BASE_WORDS）
//
// ── ハードウェアアーキテクチャ最適化 + 正当性修正（2026-06-25 改訂）─────────
//   【正当性】中間積 (Al+Ah)*(Bl+Bh) のオペランドは half+1 語になり得るが、
//     旧実装は直接乗算器幅（half 語）に切り詰めて桁上げビットを捨てていた。
//     全幅ランダム入力では誤り（旧版は範囲外アクセスでクラッシュ）。
//     → 古典的な「桁上げビット分解」を採用:
//          Sa = sa_lo + ca·B^ns      (sa_lo は ns≤half 語、ca∈{0,1})
//          Sa·Sb = sa_lo·sb_lo + (ca·sb_lo + cb·sa_lo)·B^ns + ca·cb·B^(2ns)
//       これにより z0/z2/z1 の 3 乗算がすべて同一幅となり、単一乗算器を
//       真に時分割共有できる（ハードウェア的にも最適）。補正項は 1bit 条件
//       選択（mux）+ 加算のみで乗算器を増やさない。
//   【性能/HW 構造】
//     1. 部分積の再構成を逐次加算チェーン→ビット連結（range 代入）へ。
//        各リムは桁が重複せず、本来は配線のみ。1056-bit 逐次加算器 ×3 本を排除。
//     2. 桁あわせ加算 add_half を逐次キャリーループ→単一広幅加算器へ。
//     3. 配線に過ぎないループ（パック/アンパック/半分割コピー）を
//        PIPELINE II=1 → UNROLL 化し組合せ回路へ（レイテンシ N サイクル→0）。
//     4. アキュムレータ幅を必要最小幅へ縮小（面積・遅延削減）。
//   公開 API（PackedOps<Digit, MAX_NWORDS, LSW_FIRST>::mul）は不変。
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

      // 直接乗算器の語数（コンパイル時定数 → 完全アンロール可能）
      static constexpr unsigned MUL_WORDS = (MUL_BITS + W - 1) / W;
      // 半長バッファ最大語数（Al/Ah/Bl/Bh、和の下位語数の上限）
      static constexpr unsigned HALF_WORDS = (MAX_NWORDS + 1) / 2;

      using MulIn = ap_uint<MUL_BITS>;
      using MulOut = ap_uint<2 * MUL_BITS>;

      // 桁あわせ加算（Karatsuba 中間和）:
      //   xa(na 語) + xb(nb 語) を計算し、下位 ns=max(na,nb) 語を dst へ格納、
      //   桁上げビット（0/1）を返す。単一の広幅キャリー伝搬加算器で実装。
      static unsigned add_half(const Digit *xa, unsigned na,
                               const Digit *xb, unsigned nb,
                               Digit *dst, unsigned ns)
      {
#pragma HLS INLINE
        static constexpr int SW = (int)(HALF_WORDS + 1) * (int)W;
        ap_uint<SW> XA = 0, XB = 0;
        for (unsigned i = 0; i < HALF_WORDS; ++i)
        {
#pragma HLS UNROLL
          if (i < na)
            XA.range((i + 1) * W - 1, i * W) = (ap_uint<W>)xa[i];
          if (i < nb)
            XB.range((i + 1) * W - 1, i * W) = (ap_uint<W>)xb[i];
        }
        const ap_uint<SW> S = XA + XB; // 単一キャリー伝搬加算器
        for (unsigned i = 0; i < HALF_WORDS; ++i)
        {
#pragma HLS UNROLL
          if (i < ns)
            dst[i] = (Digit)(ap_uint<W>)S.range((i + 1) * W - 1, i * W);
        }
        // 和は 2·B^ns 未満 → 位置 ns·W のビットが桁上げ
        return (unsigned)(ap_uint<1>)S[ns * W];
      }

      // 直接乗算: a,b を MUL_BITS 幅へパック → 1 回の乗算 → 結果をアンパック。
      // パック/アンパックは配線（連結）に過ぎないため UNROLL で組合せ回路化。
      static void mul_direct(const Digit *a, const Digit *b, Digit *c, unsigned nwords)
      {
#pragma HLS INLINE
        MulIn A = 0, B = 0;
        for (unsigned i = 0; i < MUL_WORDS; ++i)
        {
#pragma HLS UNROLL
          if (i < nwords)
          {
            A.range((i + 1) * W - 1, i * W) = (ap_uint<W>)a[i];
            B.range((i + 1) * W - 1, i * W) = (ap_uint<W>)b[i];
          }
        }
        const MulOut P = (MulIn)A * (MulIn)B;
        for (unsigned i = 0; i < 2 * MUL_WORDS; ++i)
        {
#pragma HLS UNROLL
          if (i < 2 * nwords)
            c[i] = (Digit)(ap_uint<W>)P.range((i + 1) * W - 1, i * W);
        }
      }

      // Karatsuba 合成（桁上げビット分解版）:
      //   中間積 M = sa·sb = z1 + (ca·sb_lo + cb·sa_lo)·B^ns + ca·cb·B^(2ns)
      //   mid    = M - z0 - z2   ( = Al·Bh + Ah·Bl )
      //   c      = z0 + mid·B^n_lo + z2·B^(2·n_lo)
      // 部分積はすべて連結（range 代入）で再構成し加算チェーンを排除。
      // 補正項は ca/cb（1bit）による条件加算のみで乗算器を追加しない。
      static void karatsuba_combine(unsigned nwords, unsigned n_lo, unsigned n_hi, unsigned ns,
                                    const Digit *z0, const Digit *z2, const Digit *z1,
                                    const Digit *sal, const Digit *sbl,
                                    unsigned ca, unsigned cb, Digit *c)
      {
#pragma HLS INLINE
        static constexpr unsigned ZWORDS = 2 * HALF_WORDS; // z0/z1/z2 の語数上限
        static constexpr int ACC_BITS = (int)(2 * MAX_NWORDS) * (int)W + 8;
        using AccT = ap_int<ACC_BITS>;

        // --- 部分積・半和を連結で再構成（加算チェーンなし）---
        AccT Z0 = 0, Z2 = 0, Z1 = 0, SAL = 0, SBL = 0;
        for (unsigned i = 0; i < ZWORDS; ++i)
        {
#pragma HLS UNROLL
          if (i < 2 * n_lo)
            Z0.range((i + 1) * W - 1, i * W) = (ap_uint<W>)z0[i];
          if (i < 2 * n_hi)
            Z2.range((i + 1) * W - 1, i * W) = (ap_uint<W>)z2[i];
          if (i < 2 * ns)
            Z1.range((i + 1) * W - 1, i * W) = (ap_uint<W>)z1[i];
          if (i < ns)
          {
            SAL.range((i + 1) * W - 1, i * W) = (ap_uint<W>)sal[i];
            SBL.range((i + 1) * W - 1, i * W) = (ap_uint<W>)sbl[i];
          }
        }

        // 中間積 M を桁上げビット補正付きで構成（条件加算 = mux + 加算）
        AccT M = Z1;
        if (ca)
          M += (SBL << (int)(ns * W));
        if (cb)
          M += (SAL << (int)(ns * W));
        if (ca & cb)
          M += (AccT(1) << (int)(2 * ns * W));

        const AccT mid = M - Z0 - Z2;
        const AccT Pacc =
            Z0 + (mid << (int)(n_lo * W)) + (Z2 << (int)(2 * n_lo * W));

        for (unsigned i = 0; i < 2 * MAX_NWORDS; ++i)
        {
#pragma HLS UNROLL
          if (i < 2 * nwords)
            c[i] = (Digit)(ap_uint<W>)Pacc.range((int)((i + 1) * W - 1), (int)(i * W));
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

        const unsigned n_lo = nwords / 2;
        const unsigned n_hi = nwords - n_lo;
        const unsigned ns = n_hi; // = max(n_lo, n_hi) = 半和の下位語数

        Digit Al[HALF], Ah[HALF], Bl[HALF], Bh[HALF];
#pragma HLS ARRAY_PARTITION variable = Al complete dim = 1
#pragma HLS ARRAY_PARTITION variable = Ah complete dim = 1
#pragma HLS ARRAY_PARTITION variable = Bl complete dim = 1
#pragma HLS ARRAY_PARTITION variable = Bh complete dim = 1

        // 全部分積は同一幅 HALF 語 → 単一乗算器を共有可能
        Digit z0[2 * HALF], z2[2 * HALF], z1[2 * HALF];
        Digit Sal[HALF], Sbl[HALF];
#pragma HLS ARRAY_PARTITION variable = Sal complete dim = 1
#pragma HLS ARRAY_PARTITION variable = Sbl complete dim = 1

        // 半分割コピーは配線のみ → UNROLL（旧版 PIPELINE II=1 は N サイクル）
        for (unsigned i = 0; i < HALF; ++i)
        {
#pragma HLS UNROLL
          if (i < n_lo)
          {
            Al[i] = a[i];
            Bl[i] = b[i];
          }
          if (i < n_hi)
          {
            Ah[i] = a[n_lo + i];
            Bh[i] = b[n_lo + i];
          }
        }

        mul_sized<HALF>(Al, Bl, z0, n_lo); // z0 = Al·Bl   (2·n_lo 語)
        mul_sized<HALF>(Ah, Bh, z2, n_hi); // z2 = Ah·Bh   (2·n_hi 語)

        // 中間和を「下位 ns 語 + 桁上げ 1bit」で保持（乗算器幅を超えない）
        const unsigned ca = add_half(Al, n_lo, Ah, n_hi, Sal, ns);
        const unsigned cb = add_half(Bl, n_lo, Bh, n_hi, Sbl, ns);
        mul_sized<HALF>(Sal, Sbl, z1, ns); // z1 = sa_lo·sb_lo (2·ns 語)

        karatsuba_combine(nwords, n_lo, n_hi, ns, z0, z2, z1, Sal, Sbl, ca, cb, c);
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
#pragma HLS ARRAY_PARTITION variable = la complete dim = 1
#pragma HLS ARRAY_PARTITION variable = lb complete dim = 1
#pragma HLS ARRAY_PARTITION variable = lc complete dim = 1
      for (unsigned i = 0; i < MAX_NWORDS; ++i)
      {
#pragma HLS UNROLL
        if (i < nwords)
        {
          la[i] = a[nwords - 1u - i];
          lb[i] = b[nwords - 1u - i];
        }
      }
      for (unsigned i = 0; i < 2 * MAX_NWORDS; ++i)
      {
#pragma HLS UNROLL
        lc[i] = 0;
      }
      detail_kara::PackedOpsLSW<Digit, MAX_NWORDS>::mul(la, lb, lc, nwords);
      for (unsigned i = 0; i < 2 * MAX_NWORDS; ++i)
      {
#pragma HLS UNROLL
        if (i < 2 * nwords)
          c[i] = lc[2 * nwords - 1u - i];
      }
    }
  };

} // namespace mpx
