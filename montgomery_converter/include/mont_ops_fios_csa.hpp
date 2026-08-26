#pragma once
// mont_ops_fios_csa.hpp
// FIOS with Pre-sum (Carry-Save Adder equivalent) inner loop
//
// FIOS 通常版との違い:
//   通常 FIOS: j ステップごとに (pp + pm + t[j] + C) を 4入力加算で lo/hi 計算
//     lo = pp_lo + pm_lo + t[j] + C_lo  (4-input 64-bit add ≈ 4ns)
//     hi = pp_hi + pm_hi + C_hi + lo_carry  (4-input 64-bit add ≈ 4ns)
//     → C チェーン: 8ns/step → 10ns クロックで 1 cycle/step (余裕なし)
//
//   Pre-sum FIOS: j の C非依存項 (pp, pm, t[j]) を先に合計してから C を加算
//     [事前計算, 全 j 並列]:
//       base_lo = pp_lo + pm_lo + t[j]   (3-input 64-bit add ≈ 3ns, C に無依存)
//       base_hi = pp_hi + pm_hi + base_lo_carry  (3-input ≈ 3ns, C に無依存)
//     [キャリーチェーン, 逐次]:
//       lo_sum = base_lo + C_lo   (2-input 64-bit add ≈ 2ns)
//       hi_sum = base_hi + C_hi + lo_carry  (3-input 64-bit add ≈ 3ns)
//     → C チェーン: 5ns/step → 7ns クロックで 1 cycle/step
//
// 効果:
//   7ns クロック: 通常 8ns/step → 2 cycle/step; 本版 5ns/step → 1 cycle/step
//   outer ループ II: 6 → 3-4 cycle、全体レイテンシ大幅短縮期待
//
// オーバーフロー安全:
//   Wide (128-bit for T=uint64_t, 64-bit for T=uint32_t) の範囲を超えない
//   base_lo_full = 3項 × W-bit ≤ 3×2^W → 2W-bit に収まる (lo/hi 分割が不要)

#include <climits>
#include <cstdint>
#include <type_traits>

namespace mont_fios_csa {

template <typename T>
struct wide_type {
    using type = typename std::conditional<
        sizeof(T) <= 1, uint16_t,
        typename std::conditional<
            sizeof(T) <= 2, uint32_t,
            typename std::conditional<
                sizeof(T) <= 4, uint64_t,
                __uint128_t>::type>::type>::type;
};

template <typename T, unsigned NWORDS>
struct MontOps_FIOS_CSA {
    using Wide = typename wide_type<T>::type;
    static constexpr unsigned WBITS = sizeof(T) * CHAR_BIT;
    static constexpr T        WMASK = static_cast<T>(~static_cast<T>(0));

    static void mul(const T a[NWORDS], const T b[NWORDS], T c[NWORDS],
                    const T mod[NWORDS], T mprime)
    {
#pragma HLS INLINE off
        T t[NWORDS + 1];
#pragma HLS ARRAY_PARTITION variable=t complete dim=1
        for (unsigned k = 0; k < NWORDS + 1; k++) {
#pragma HLS UNROLL
            t[k] = 0;
        }

        FIOS_OUTER: for (unsigned i = 0; i < NWORDS; i++) {
#pragma HLS LOOP_TRIPCOUNT min=NWORDS max=NWORDS avg=NWORDS
#pragma HLS PIPELINE

            // ---- Step A: j=0 前処理 (通常 FIOS と同じ) ----
            Wide pp0  = static_cast<Wide>(a[0]) * static_cast<Wide>(b[i]);
            Wide lo0  = (pp0 & WMASK) + static_cast<Wide>(t[0]);
            Wide hi0  = (pp0 >> WBITS) + (lo0 >> WBITS);
            T u_i = static_cast<T>(
                (static_cast<Wide>(static_cast<T>(lo0 & WMASK))
                 * static_cast<Wide>(mprime)) & WMASK);
            Wide pm0  = static_cast<Wide>(u_i) * static_cast<Wide>(mod[0]);
            Wide j0lo = (lo0 & WMASK) + (pm0 & WMASK);
            Wide C    = hi0 + (pm0 >> WBITS) + (j0lo >> WBITS);

            // ---- Step B: 事前和を全 j=1..N-1 で並列計算 (C に無依存) ----
            //
            // base_lo[j] = (pp[j] & MASK) + (pm[j] & MASK) + t[j]
            //   → 3-input W-bit add ≤ 3*(2^W-1) ≤ 3*2^W → 2W-bit に収まる
            // base_hi[j] = (pp[j] >> W) + (pm[j] >> W) + (base_lo >> W)
            //   → キャリーを上位半分に吸収
            //
            // この 2 ステップは互いに独立 (j 間依存なし, C 依存なし)
            // → HLS が全 j の DSP と加算を並列スケジューリングできる
            Wide base_lo[NWORDS], base_hi[NWORDS];
#pragma HLS ARRAY_PARTITION variable=base_lo complete dim=1
#pragma HLS ARRAY_PARTITION variable=base_hi complete dim=1

            PRESUM: for (unsigned j = 1; j < NWORDS; j++) {
#pragma HLS UNROLL
                Wide pp = static_cast<Wide>(a[j]) * static_cast<Wide>(b[i]);
                Wide pm = static_cast<Wide>(u_i) * static_cast<Wide>(mod[j]);

                // 3項の下位 W ビットを合計 (≤ 3*2^W → 2W ビットに収まる)
                Wide blo_full  = (pp & WMASK) + (pm & WMASK) + static_cast<Wide>(t[j]);
                base_lo[j]     = blo_full & WMASK;        // 下位 W ビット
                // 上位 W ビットの合計 + 下位からの繰り上がり
                base_hi[j]     = (pp >> WBITS) + (pm >> WBITS) + (blo_full >> WBITS);
            }

            // ---- Step C: 逐次キャリーチェーン (各ステップで 2入力+3入力 加算のみ) ----
            //
            // クリティカルパス (C依存部分のみ):
            //   C_lo → lo_sum (2-input 64-bit add ≈ 2ns) → lo_carry
            //        → hi_sum (3-input 64-bit add ≈ 3ns) → C_new
            //   合計 ≈ 5ns/step
            //
            // 比較 (通常 FIOS):
            //   C_lo → lo (4-input add ≈ 4ns) → lo_carry → hi (4-input add ≈ 4ns) → C_new
            //   合計 ≈ 8ns/step
            //
            // 7ns クロックで: 5ns < 7ns → 1 cycle/step (通常版 8ns > 7ns → 2 cycle/step)
            CARRY_CHAIN: for (unsigned j = 1; j < NWORDS; j++) {
#pragma HLS UNROLL
                Wide C_lo = C & WMASK;
                Wide C_hi = C >> WBITS;

                // 2-input W-bit add (下位): クリティカルパス最短
                Wide lo_sum   = base_lo[j] + C_lo;
                Wide lo_carry = lo_sum >> WBITS;

                // 3-input W-bit add (上位): lo_carry 待ちだが小さい
                Wide hi_sum   = base_hi[j] + C_hi + lo_carry;

                t[j - 1] = static_cast<T>(lo_sum & WMASK);
                C         = hi_sum;
            }

            // ---- Step D: 上位語処理 ----
            Wide s        = static_cast<Wide>(t[NWORDS]) + C;
            t[NWORDS - 1] = static_cast<T>(s & WMASK);
            t[NWORDS]     = static_cast<T>(s >> WBITS);
        }

        // 定数時間 条件付き減算
        T u[NWORDS];
#pragma HLS ARRAY_PARTITION variable=u complete dim=1
        Wide borrow = 0;
        CSUB_LOOP: for (unsigned j = 0; j < NWORDS; j++) {
#pragma HLS UNROLL
            Wide d = static_cast<Wide>(t[j])
                   - static_cast<Wide>(mod[j])
                   - borrow;
            u[j]   = static_cast<T>(d & WMASK);
            borrow  = (d >> WBITS) & 1;
        }
        T keep_t = static_cast<T>(0)
                 - static_cast<T>(t[NWORDS] == 0 && borrow == 1);
        SEL_LOOP: for (unsigned j = 0; j < NWORDS; j++) {
#pragma HLS UNROLL
            c[j] = (t[j] & keep_t) | (u[j] & static_cast<T>(~keep_t & WMASK));
        }
    }
};

} // namespace mont_fios_csa
