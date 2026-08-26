#pragma once
// mont_ops_fios_csa_flat_lat.hpp
// FIOS-CSA-Flat + LATENCY 制約
//
// mont_ops_fios_csa_flat.hpp と同一アルゴリズムだが、
// #pragma HLS LATENCY min=16 max=18 を mul() 関数に付与し、
// HLS スケジューラに「16-18 サイクル以内に終わらせよ」と強制する。
//
// - HLS が制約を満たせる場合: より少ないサイクル数でスケジュール
//   (現状 20 cycles → 16-18 cycles になれば 20% 改善)
// - 満たせない場合: WARNING を出しつつ可能な最小サイクルで合成
//   (現状同等かそれ以下の結果)
//
// 20 サイクルの内訳 (理論的最小値の推定):
//   反復間クリティカルパス: t[0]→u_i(DSP)→pm(DSP)→carry_j1→t[0]next ≈ 4-5 cycles × N=4
//   = 16-20 サイクル
//   LATENCY=16 は理論下限に挑戦するレベル

#include <climits>
#include <cstdint>
#include <type_traits>

namespace mont_fios_csa_flat_lat {

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
struct MontOps_FIOS_CSA_Flat_Lat {
    using Wide = typename wide_type<T>::type;
    static constexpr unsigned WBITS = sizeof(T) * CHAR_BIT;
    static constexpr T        WMASK = static_cast<T>(~static_cast<T>(0));

    static void mul(const T a[NWORDS], const T b[NWORDS], T c[NWORDS],
                    const T mod[NWORDS], T mprime)
    {
#pragma HLS INLINE off
#pragma HLS LATENCY min=16 max=18
        T t[NWORDS + 1];
#pragma HLS ARRAY_PARTITION variable=t complete dim=1

        for (unsigned k = 0; k < NWORDS + 1; k++) {
#pragma HLS UNROLL
            t[k] = 0;
        }

        FIOS_OUTER: for (unsigned i = 0; i < NWORDS; i++) {
#pragma HLS LOOP_TRIPCOUNT min=NWORDS max=NWORDS avg=NWORDS
#pragma HLS UNROLL

            Wide pp0  = static_cast<Wide>(a[0]) * static_cast<Wide>(b[i]);
            Wide lo0  = (pp0 & WMASK) + static_cast<Wide>(t[0]);
            Wide hi0  = (pp0 >> WBITS) + (lo0 >> WBITS);
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
                Wide pp = static_cast<Wide>(a[j]) * static_cast<Wide>(b[i]);
                Wide pm = static_cast<Wide>(u_i) * static_cast<Wide>(mod[j]);
                Wide blo_full  = (pp & WMASK) + (pm & WMASK) + static_cast<Wide>(t[j]);
                base_lo[j]     = blo_full & WMASK;
                base_hi[j]     = (pp >> WBITS) + (pm >> WBITS) + (blo_full >> WBITS);
            }

            CARRY_CHAIN: for (unsigned j = 1; j < NWORDS; j++) {
#pragma HLS UNROLL
                Wide C_lo = C & WMASK;
                Wide C_hi = C >> WBITS;
                Wide lo_sum   = base_lo[j] + C_lo;
                Wide lo_carry = lo_sum >> WBITS;
                Wide hi_sum   = base_hi[j] + C_hi + lo_carry;
                t[j - 1] = static_cast<T>(lo_sum & WMASK);
                C         = hi_sum;
            }

            Wide s        = static_cast<Wide>(t[NWORDS]) + C;
            t[NWORDS - 1] = static_cast<T>(s & WMASK);
            t[NWORDS]     = static_cast<T>(s >> WBITS);
        }

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

} // namespace mont_fios_csa_flat_lat
