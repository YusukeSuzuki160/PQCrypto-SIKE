#pragma once
// mont_ops_fios_flat.hpp
// FIOS — 外側ループ完全展開版 (PIPELINE の代わりに UNROLL)
//
// 通常 FIOS との違い:
//   通常: FIOS_OUTER に #pragma HLS PIPELINE
//     → HLS がループ反復間をパイプライン化 (II = 固定値)
//     → t[] のループ間 RAW 依存がパイプライン II を律速
//
//   本版: FIOS_OUTER に #pragma HLS UNROLL
//     → HLS が 4 反復すべてを展開し、フラットな組み合わせ回路として認識
//     → t[] の更新依存は HLS スケジューラが "直接" 見て最適配置
//     → 反復間の「待ち時間」なしに次の計算を開始できる可能性
//     → クロック制約に応じてパイプライン段を自由挿入
//
// 想定効果:
//   PIPELINEループは II ≥ (依存深さ) が保証されるが UNROLL は不要な II 余白を
//   生じさせない。スケジューラが依存を見てギリギリで次反復をスタートできる。
//
// 注意:
//   UNROLL 全展開のため DSP/LUT 消費が増加する可能性がある。
//   N=4 では 4 反復の展開なので許容範囲。

#include <climits>
#include <cstdint>
#include <type_traits>

namespace mont_fios_flat {

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
struct MontOps_FIOS_Flat {
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

        // 外側ループを完全展開: HLS が全 N 反復をフラットな回路として最適スケジューリング
        // PIPELINE ループ構造を取り除くことで、反復間の II 制約なしに依存を直接追える
        FIOS_OUTER: for (unsigned i = 0; i < NWORDS; i++) {
#pragma HLS LOOP_TRIPCOUNT min=NWORDS max=NWORDS avg=NWORDS
#pragma HLS UNROLL   // <- PIPELINE の代わりに UNROLL

            // j=0 前処理 (通常 FIOS と同じ)
            Wide pp0  = static_cast<Wide>(a[0]) * static_cast<Wide>(b[i]);
            Wide lo0  = (pp0 & WMASK) + static_cast<Wide>(t[0]);
            Wide hi0  = (pp0 >> WBITS) + (lo0 >> WBITS);
            T u_i = static_cast<T>(
                (static_cast<Wide>(static_cast<T>(lo0 & WMASK))
                 * static_cast<Wide>(mprime)) & WMASK);
            Wide pm0  = static_cast<Wide>(u_i) * static_cast<Wide>(mod[0]);
            Wide j0lo = (lo0 & WMASK) + (pm0 & WMASK);
            Wide C    = hi0 + (pm0 >> WBITS) + (j0lo >> WBITS);

            // j=1..N-1 統合ループ (内側は UNROLL のまま)
            FIOS_INNER: for (unsigned j = 1; j < NWORDS; j++) {
#pragma HLS UNROLL
                Wide pp = static_cast<Wide>(a[j]) * static_cast<Wide>(b[i]);
                Wide pm = static_cast<Wide>(u_i)  * static_cast<Wide>(mod[j]);
                Wide lo = (pp & WMASK) + (pm & WMASK)
                        + static_cast<Wide>(t[j]) + (C & WMASK);
                Wide hi = (pp >> WBITS) + (pm >> WBITS)
                        + (C >> WBITS) + (lo >> WBITS);
                t[j - 1] = static_cast<T>(lo & WMASK);
                C         = hi;
            }

            Wide s        = static_cast<Wide>(t[NWORDS]) + C;
            t[NWORDS - 1] = static_cast<T>(s & WMASK);
            t[NWORDS]     = static_cast<T>(s >> WBITS);
        }

        // 定数時間条件付き減算
        T u[NWORDS];
#pragma HLS ARRAY_PARTITION variable=u complete dim=1
        Wide borrow = 0;
        CSUB_LOOP: for (unsigned j = 0; j < NWORDS; j++) {
#pragma HLS UNROLL
            Wide d = static_cast<Wide>(t[j])
                   - static_cast<Wide>(mod[j]) - borrow;
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

} // namespace mont_fios_flat
