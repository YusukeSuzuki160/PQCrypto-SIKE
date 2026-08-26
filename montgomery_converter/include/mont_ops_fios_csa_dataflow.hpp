#pragma once
// mont_ops_fios_csa_dataflow.hpp
// FIOS-CSA-Flat + HLS DATAFLOW
//
// FIOS の N=4 反復を 4 つの明示的な関数 one_step_0..3 に分解し、
// #pragma HLS DATAFLOW で連結する。
//
// 目的 (DATAFLOW の効果):
//   - 単一呼出しレイテンシ: 各 one_step が順次実行されるため変化なし
//     (HLS DATAFLOW は関数間パイプラインであり、単一呼出しは影響なし)
//   - スループット (II): 次の mul() 呼出しが one_step_0 開始と同時に
//     前の mul() の one_step_1..3 が並行実行可能。
//     SIKE では乗算が連鎖するため直接効果は限定的だが、
//     独立した乗算ペアが存在する場面では有効。
//
// 予測:
//   単一呼出しレイテンシ: ~20 cycles (FIOS-CSA-Flat と同等か若干悪化)
//   II: ~5 cycles (1 step あたりのレイテンシ) ← SIKE 連鎖には効果薄

#include <climits>
#include <cstdint>
#include <type_traits>

namespace mont_fios_csa_dataflow {

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
struct MontOps_FIOS_CSA_Dataflow {
    using Wide = typename wide_type<T>::type;
    static constexpr unsigned WBITS = sizeof(T) * CHAR_BIT;
    static constexpr T        WMASK = static_cast<T>(~static_cast<T>(0));

    // ---- 1 反復分の FIOS-CSA ステップ ----
    // t_in[0..N] → t_out[0..N]
    // #pragma HLS PIPELINE を付けて II を最小化
    static void one_step(const T a[NWORDS], T b_i, const T mod[NWORDS],
                         T mprime, T t_in[NWORDS + 1], T t_out[NWORDS + 1])
    {
#pragma HLS INLINE off
#pragma HLS PIPELINE
#pragma HLS ARRAY_PARTITION variable=t_in  complete dim=1
#pragma HLS ARRAY_PARTITION variable=t_out complete dim=1

        Wide pp0 = static_cast<Wide>(a[0]) * static_cast<Wide>(b_i);
        Wide lo0 = (pp0 & WMASK) + static_cast<Wide>(t_in[0]);
        Wide hi0 = (pp0 >> WBITS) + (lo0 >> WBITS);
        T u_i = static_cast<T>(
            (static_cast<Wide>(static_cast<T>(lo0 & WMASK))
             * static_cast<Wide>(mprime)) & WMASK);
        Wide pm0  = static_cast<Wide>(u_i) * static_cast<Wide>(mod[0]);
        Wide j0lo = (lo0 & WMASK) + (pm0 & WMASK);
        Wide C    = hi0 + (pm0 >> WBITS) + (j0lo >> WBITS);

        Wide base_lo[NWORDS], base_hi[NWORDS];
#pragma HLS ARRAY_PARTITION variable=base_lo complete dim=1
#pragma HLS ARRAY_PARTITION variable=base_hi complete dim=1

        PRESUM: for (unsigned j = 1; j < NWORDS; j++) {
#pragma HLS UNROLL
            Wide pp = static_cast<Wide>(a[j]) * static_cast<Wide>(b_i);
            Wide pm = static_cast<Wide>(u_i) * static_cast<Wide>(mod[j]);
            Wide blo_full  = (pp & WMASK) + (pm & WMASK) + static_cast<Wide>(t_in[j]);
            base_lo[j]     = blo_full & WMASK;
            base_hi[j]     = (pp >> WBITS) + (pm >> WBITS) + (blo_full >> WBITS);
        }

        CARRY_CHAIN: for (unsigned j = 1; j < NWORDS; j++) {
#pragma HLS UNROLL
            Wide C_lo     = C & WMASK;
            Wide C_hi     = C >> WBITS;
            Wide lo_sum   = base_lo[j] + C_lo;
            Wide lo_carry = lo_sum >> WBITS;
            Wide hi_sum   = base_hi[j] + C_hi + lo_carry;
            t_out[j - 1]  = static_cast<T>(lo_sum & WMASK);
            C              = hi_sum;
        }

        Wide s            = static_cast<Wide>(t_in[NWORDS]) + C;
        t_out[NWORDS - 1] = static_cast<T>(s & WMASK);
        t_out[NWORDS]     = static_cast<T>(s >> WBITS);
    }

    static void mul(const T a[NWORDS], const T b[NWORDS], T c[NWORDS],
                    const T mod[NWORDS], T mprime)
    {
#pragma HLS INLINE off
#pragma HLS DATAFLOW

        T t0[NWORDS + 1], t1[NWORDS + 1], t2[NWORDS + 1],
          t3[NWORDS + 1], t4[NWORDS + 1];
#pragma HLS ARRAY_PARTITION variable=t0 complete dim=1
#pragma HLS ARRAY_PARTITION variable=t1 complete dim=1
#pragma HLS ARRAY_PARTITION variable=t2 complete dim=1
#pragma HLS ARRAY_PARTITION variable=t3 complete dim=1
#pragma HLS ARRAY_PARTITION variable=t4 complete dim=1

        // 初期化
        INIT: for (unsigned k = 0; k <= NWORDS; k++) {
#pragma HLS UNROLL
            t0[k] = 0;
        }

        // 4 ステップ: DATAFLOW で関数間パイプライン
        one_step(a, b[0], mod, mprime, t0, t1);
        one_step(a, b[1], mod, mprime, t1, t2);
        one_step(a, b[2], mod, mprime, t2, t3);
        one_step(a, b[3], mod, mprime, t3, t4);

        // 定数時間条件付き減算
        T u[NWORDS];
#pragma HLS ARRAY_PARTITION variable=u complete dim=1
        Wide borrow = 0;
        CSUB_LOOP: for (unsigned j = 0; j < NWORDS; j++) {
#pragma HLS UNROLL
            Wide d = static_cast<Wide>(t4[j])
                   - static_cast<Wide>(mod[j]) - borrow;
            u[j]   = static_cast<T>(d & WMASK);
            borrow  = (d >> WBITS) & 1;
        }
        T keep_t = static_cast<T>(0)
                 - static_cast<T>(t4[NWORDS] == 0 && borrow == 1);
        SEL_LOOP: for (unsigned j = 0; j < NWORDS; j++) {
#pragma HLS UNROLL
            c[j] = (t4[j] & keep_t) | (u[j] & static_cast<T>(~keep_t & WMASK));
        }
    }
};

} // namespace mont_fios_csa_dataflow
