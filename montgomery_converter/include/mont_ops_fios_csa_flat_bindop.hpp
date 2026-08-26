#pragma once
// mont_ops_fios_csa_flat_bindop.hpp
// FIOS-CSA-Flat (既存最良) + DSP48E2 明示的 BIND_OP 指定版
//
// mont_ops_fios_csa_flat.hpp と数式・構造は同一。異なるのは、事前和と
// キャリーチェーンの加算を #pragma HLS BIND_OP で明示的に impl=dsp
// (DSP48E2 内蔵 ALU/プリアダーを使う) に固定する点のみ。
// RTL 手設計は DSP48E2 のカスケード/プリアダーを手動で使うため、
// HLS のデフォルトスケジューリング任せ (fabric LUT に流れることがある)
// ではなく明示指定でどれだけ再現できるか検証する。

#include <climits>
#include <cstdint>
#include <type_traits>

namespace mont_fios_csa_flat_bindop {

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
struct MontOps_FIOS_CSA_Flat_BindOp {
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
#pragma HLS UNROLL

            // ---- Step A: j=0 前処理 ----
            Wide pp0  = static_cast<Wide>(a[0]) * static_cast<Wide>(b[i]);
#pragma HLS BIND_OP variable=pp0 op=mul impl=dsp
            Wide lo0  = (pp0 & WMASK) + static_cast<Wide>(t[0]);
#pragma HLS BIND_OP variable=lo0 op=add impl=dsp
            Wide hi0  = (pp0 >> WBITS) + (lo0 >> WBITS);
#pragma HLS BIND_OP variable=hi0 op=add impl=dsp
            T u_i = static_cast<T>(
                (static_cast<Wide>(static_cast<T>(lo0 & WMASK))
                 * static_cast<Wide>(mprime)) & WMASK);
            Wide pm0  = static_cast<Wide>(u_i) * static_cast<Wide>(mod[0]);
#pragma HLS BIND_OP variable=pm0 op=mul impl=dsp
            Wide j0lo = (lo0 & WMASK) + (pm0 & WMASK);
#pragma HLS BIND_OP variable=j0lo op=add impl=dsp
            Wide C    = hi0 + (pm0 >> WBITS) + (j0lo >> WBITS);
#pragma HLS BIND_OP variable=C op=add impl=dsp

            // ---- Step B: 事前和 — 全 j=1..N-1 並列 (C 非依存) ----
            Wide base_lo[NWORDS], base_hi[NWORDS];
#pragma HLS ARRAY_PARTITION variable=base_lo complete dim=1
#pragma HLS ARRAY_PARTITION variable=base_hi complete dim=1

            PRESUM: for (unsigned j = 1; j < NWORDS; j++) {
#pragma HLS UNROLL
                Wide pp = static_cast<Wide>(a[j]) * static_cast<Wide>(b[i]);
#pragma HLS BIND_OP variable=pp op=mul impl=dsp
                Wide pm = static_cast<Wide>(u_i) * static_cast<Wide>(mod[j]);
#pragma HLS BIND_OP variable=pm op=mul impl=dsp
                Wide blo_full  = (pp & WMASK) + (pm & WMASK) + static_cast<Wide>(t[j]);
#pragma HLS BIND_OP variable=blo_full op=add impl=dsp
                base_lo[j]     = blo_full & WMASK;
                base_hi[j]     = (pp >> WBITS) + (pm >> WBITS) + (blo_full >> WBITS);
#pragma HLS BIND_OP variable=base_hi op=add impl=dsp
            }

            // ---- Step C: 逐次キャリーチェーン ----
            CARRY_CHAIN: for (unsigned j = 1; j < NWORDS; j++) {
#pragma HLS UNROLL
                Wide C_lo = C & WMASK;
                Wide C_hi = C >> WBITS;
                Wide lo_sum   = base_lo[j] + C_lo;
#pragma HLS BIND_OP variable=lo_sum op=add impl=dsp
                Wide lo_carry = lo_sum >> WBITS;
                Wide hi_sum   = base_hi[j] + C_hi + lo_carry;
#pragma HLS BIND_OP variable=hi_sum op=add impl=dsp
                t[j - 1] = static_cast<T>(lo_sum & WMASK);
                C         = hi_sum;
            }

            // ---- Step D: 上位語 ----
            Wide s        = static_cast<Wide>(t[NWORDS]) + C;
#pragma HLS BIND_OP variable=s op=add impl=dsp
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

} // namespace mont_fios_csa_flat_bindop
