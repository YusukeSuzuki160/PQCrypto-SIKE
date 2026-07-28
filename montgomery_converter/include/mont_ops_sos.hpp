#pragma once
// mont_ops_sos.hpp
// SOS (Separated Operand Scanning) Montgomery multiplication
//
// CIOS との違い:
//   CIOS: 各外側ステップ i で PP+RED を交互に実行
//   SOS : Phase1 で全 PP (a*b → 2N語の完全積) を計算し、
//         Phase2 で全 RED (Montgomery REDC) を一括適用
//
// 長所:
//   Phase1 の外側ループは t[i+j] を更新するが、
//   違う i のループは t の異なる領域を書き込むため
//   HLS が Phase1 全体を 1 本のパイプラインとして見ることができる。
//   大きな N では CIOS より効率的になる場合がある。
//
// 短所:
//   2N+1 語の中間バッファが必要（CIOS の N+2 語より多い）。
//   N=4 程度では CIOS に対する優位性は小さい。

#include <climits>
#include <cstdint>
#include <type_traits>

namespace mont_sos {

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
struct MontOps_SOS {
    using Wide = typename wide_type<T>::type;
    static constexpr unsigned WBITS = sizeof(T) * CHAR_BIT;
    static constexpr T        WMASK = static_cast<T>(~static_cast<T>(0));

    // ---- Phase 1: schoolbook 全積 a*b → t[0..2N] ----
    // 各 (i,j) ペアの部分積を独立に計算し、t[i+j] に累算。
    // 外側ループを PIPELINE することで i ごとに 1 ステップずつ消費する。
    static void full_product(const T a[NWORDS], const T b[NWORDS],
                             T t[2 * NWORDS + 1])
    {
#pragma HLS INLINE
        for (unsigned k = 0; k < 2 * NWORDS + 1; k++) {
#pragma HLS UNROLL
            t[k] = 0;
        }

        PP_OUTER: for (unsigned i = 0; i < NWORDS; i++) {
#pragma HLS LOOP_TRIPCOUNT min=NWORDS max=NWORDS avg=NWORDS
#pragma HLS PIPELINE

            Wide C = 0;
            PP_INNER: for (unsigned j = 0; j < NWORDS; j++) {
#pragma HLS UNROLL
                Wide p = static_cast<Wide>(t[i + j])
                       + static_cast<Wide>(a[j]) * static_cast<Wide>(b[i])
                       + C;
                t[i + j] = static_cast<T>(p & WMASK);
                C         = p >> WBITS;
            }
            t[i + NWORDS] = static_cast<T>(
                static_cast<Wide>(t[i + NWORDS]) + C);
        }
    }

    // ---- Phase 2: Montgomery REDC ----
    // 2N 語入力 → N 語出力。
    // CIOS ベースの還元: 各ステップで m を決め、N 語分 mod を加え右シフト。
    static void redc(T t[2 * NWORDS + 1], const T mod[NWORDS], T mprime,
                     T c[NWORDS])
    {
#pragma HLS INLINE
        REDC_OUTER: for (unsigned i = 0; i < NWORDS; i++) {
#pragma HLS LOOP_TRIPCOUNT min=NWORDS max=NWORDS avg=NWORDS
#pragma HLS PIPELINE

            T m = static_cast<T>(
                (static_cast<Wide>(t[i]) * static_cast<Wide>(mprime)) & WMASK);
            Wide C = 0;

            REDC_INNER: for (unsigned j = 0; j < NWORDS; j++) {
#pragma HLS UNROLL
                Wide p = static_cast<Wide>(t[i + j])
                       + static_cast<Wide>(m) * static_cast<Wide>(mod[j])
                       + C;
                t[i + j] = static_cast<T>(p & WMASK);
                C          = p >> WBITS;
            }
            // 桁上げ伝播: 最大 2 語で十分（入力が mod 未満なら必ず収束）
            // i+NWORDS+0 ≤ (NWORDS-1)+NWORDS = 2*NWORDS-1 ≤ 2*NWORDS (配列内)
            // i+NWORDS+1 ≤ 2*NWORDS              (配列内: サイズ 2*NWORDS+1)
            {
                Wide s0 = static_cast<Wide>(t[i + NWORDS]) + C;
                t[i + NWORDS]     = static_cast<T>(s0 & WMASK);
                Wide s1 = static_cast<Wide>(t[i + NWORDS + 1]) + (s0 >> WBITS);
                t[i + NWORDS + 1] = static_cast<T>(s1 & WMASK);
            }
        }

        // 最終結果 t[NWORDS..2NWORDS-1] + 定数時間条件付き減算
        T u[NWORDS];
#pragma HLS ARRAY_PARTITION variable=u complete dim=1

        Wide borrow = 0;
        CSUB: for (unsigned j = 0; j < NWORDS; j++) {
#pragma HLS UNROLL
            Wide d = static_cast<Wide>(t[NWORDS + j])
                   - static_cast<Wide>(mod[j])
                   - borrow;
            u[j]   = static_cast<T>(d & WMASK);
            borrow  = (d >> WBITS) & 1;
        }
        T keep_t = static_cast<T>(0)
                 - static_cast<T>(t[2 * NWORDS] == 0 && borrow == 1);
        SEL: for (unsigned j = 0; j < NWORDS; j++) {
#pragma HLS UNROLL
            c[j] = (t[NWORDS + j] & keep_t)
                 | (u[j] & static_cast<T>(~keep_t & WMASK));
        }
    }

    // ---- トップレベル mul ----
    static void mul(const T a[NWORDS], const T b[NWORDS], T c[NWORDS],
                    const T mod[NWORDS], T mprime)
    {
#pragma HLS INLINE off
        T t[2 * NWORDS + 1];
#pragma HLS ARRAY_PARTITION variable=t complete dim=1

        full_product(a, b, t);
        redc(t, mod, mprime, c);
    }
};

} // namespace mont_sos
