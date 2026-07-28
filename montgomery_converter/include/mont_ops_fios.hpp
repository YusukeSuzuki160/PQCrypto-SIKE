#pragma once
// mont_ops_fios.hpp
// FIOS (Finely Integrated Operand Scanning) Montgomery multiplication
//
// CIOS との違い:
//   CIOS: PP_LOOP (j=0..N-1) + RED_LOOP (j=1..N-1) = 2N-1 inner iterations
//   FIOS: j=0 前処理 + INNER (j=1..N-1) 1本ループ = N-1 inner iterations
//         各内側ステップで a[j]*b[i] と u_i*mod[j] を同時に計算（2 MAC/step）
//
// キャリー連鎖の深さ:
//   CIOS: PP(N) + RED(N-1) ≈ 2N-1 深さ
//   FIOS: INNER(N-1) 深さ → II が短くなる可能性あり
//
// オーバーフロー対策:
//   FIOS の内側ループは 1 ステップで 2 つの 2W ビット積 (a[j]*b[i] と u_i*mod[j]) を
//   同時に加算する。これを Wide 型で直接計算すると Wide の上限 (2W ビット) を超える。
//   そこで上位/下位 W ビットに分けた 2 段計算で安全に実装する。
//
// 参考: Koç, Acar, Kaliski, "Analyzing and Comparing Montgomery Multiplication
//        Algorithms", IEEE Micro 1996.

#include <climits>
#include <cstdint>
#include <type_traits>

namespace mont_fios {

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
struct MontOps_FIOS {
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

        // FIOS 外側ループ: i = 0..NWORDS-1
        FIOS_OUTER: for (unsigned i = 0; i < NWORDS; i++) {
#pragma HLS LOOP_TRIPCOUNT min=NWORDS max=NWORDS avg=NWORDS
#pragma HLS PIPELINE

            // ---- j=0 前処理 ----
            // PP 寄与: pp0 = a[0]*b[i]
            Wide pp0    = static_cast<Wide>(a[0]) * static_cast<Wide>(b[i]);
            // t[0] + pp0 を上位/下位で分割 (オーバーフロー回避)
            Wide lo0    = (pp0 & WMASK) + static_cast<Wide>(t[0]);
            Wide hi0    = (pp0 >> WBITS) + (lo0 >> WBITS);
            // u_i = (t[0] + a[0]*b[i]) * mprime mod W
            T u_i = static_cast<T>(
                (static_cast<Wide>(static_cast<T>(lo0 & WMASK))
                 * static_cast<Wide>(mprime)) & WMASK);

            // RED 寄与 (j=0): pm0 = u_i * mod[0]
            Wide pm0    = static_cast<Wide>(u_i) * static_cast<Wide>(mod[0]);
            // (lo0 & WMASK) + (pm0 & WMASK) の下位は 0 になる (u_i の定義より)
            Wide j0lo   = (lo0 & WMASK) + (pm0 & WMASK);
            // 桁上げ (FIOS キャリー C) = 上位の合計
            Wide C      = hi0 + (pm0 >> WBITS) + (j0lo >> WBITS);

            // ---- j=1..NWORDS-1 統合ループ ----
            // 各ステップで PP+RED を同時実行。
            // 上位/下位分割で 2 積の合計オーバーフローを回避。
            // a[j]*b[i] と u_i*mod[j] は互いに独立 → HLS が並列発行可能。
            // C キャリー連鎖 (N-1 深さ) が律速; CIOS の 2N-1 深さより短い。
            FIOS_INNER: for (unsigned j = 1; j < NWORDS; j++) {
#pragma HLS UNROLL
                Wide pp = static_cast<Wide>(a[j]) * static_cast<Wide>(b[i]);
                Wide pm = static_cast<Wide>(u_i)  * static_cast<Wide>(mod[j]);
                // 下位半分を合計 (オーバーフロー安全: 各項 < W, 合計 < 4W)
                Wide lo = (pp & WMASK) + (pm & WMASK)
                        + static_cast<Wide>(t[j]) + (C & WMASK);
                // 上位半分 + 下位からの繰り上がり
                Wide hi = (pp >> WBITS) + (pm >> WBITS)
                        + (C >> WBITS) + (lo >> WBITS);
                t[j - 1] = static_cast<T>(lo & WMASK);
                C         = hi;
            }

            // 上位語処理
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

} // namespace mont_fios
