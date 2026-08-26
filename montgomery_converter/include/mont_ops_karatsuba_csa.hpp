#pragma once
// mont_ops_karatsuba_csa.hpp
// 2-way Karatsuba + FIOS-CSA-Flat スタイル REDC
//
// 変更点: redc() の REDC_OUTER を #pragma HLS PIPELINE から
//         #pragma HLS UNROLL + Pre-sum (CSA 相当) に変更。
//
// N=4 での予測:
//   Sub-muls + Assembly: ~8-12 cycles (FIOS-CSA-Flat の外側 UNROLL と同等)
//   REDC OUTER UNROLL: m_i は t[i] 依存のため全 j の独立事前計算は不可。
//                      ただし PIPELINE の II 制約が外れるため、
//                      実際のデータ依存クリティカルパスのみで評価。
//   予想合計: 20-30 cycles @ 7ns → 140-210 ns (FIOS-CSA-Flat 100.6 ns より悪い可能性大)
//
// 実験目的: N=4 では KO-2 分離型が FIOS 統合型に対して有利でないことを数値確認

#include <climits>
#include <cstdint>
#include <type_traits>

namespace mont_karatsuba_csa {

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
struct MontOps_Karatsuba_CSA {
    using Wide = typename wide_type<T>::type;
    static constexpr unsigned WBITS = sizeof(T) * CHAR_BIT;
    static constexpr T        WMASK = static_cast<T>(~static_cast<T>(0));
    static constexpr unsigned HALF  = NWORDS / 2;

    static void submul(const T a[HALF], const T b[HALF],
                       T t[2 * HALF + 1])
    {
#pragma HLS INLINE
        for (unsigned k = 0; k < 2 * HALF + 1; k++) {
#pragma HLS UNROLL
            t[k] = 0;
        }
        SUB_OUTER: for (unsigned i = 0; i < HALF; i++) {
#pragma HLS UNROLL
            Wide C = 0;
            SUB_INNER: for (unsigned j = 0; j < HALF; j++) {
#pragma HLS UNROLL
                Wide p = static_cast<Wide>(t[i + j])
                       + static_cast<Wide>(a[j]) * static_cast<Wide>(b[i])
                       + C;
                t[i + j] = static_cast<T>(p & WMASK);
                C          = p >> WBITS;
            }
            t[i + HALF] = static_cast<T>(
                static_cast<Wide>(t[i + HALF]) + C);
        }
    }

    static void submul_ext(const T a[HALF + 1], const T b[HALF + 1],
                           T t[2 * HALF + 3])
    {
#pragma HLS INLINE
        for (unsigned k = 0; k < 2 * HALF + 3; k++) {
#pragma HLS UNROLL
            t[k] = 0;
        }
        MM_OUTER: for (unsigned i = 0; i < HALF + 1; i++) {
#pragma HLS UNROLL
            Wide C = 0;
            MM_INNER: for (unsigned j = 0; j < HALF + 1; j++) {
#pragma HLS UNROLL
                Wide p = static_cast<Wide>(t[i + j])
                       + static_cast<Wide>(a[j]) * static_cast<Wide>(b[i])
                       + C;
                t[i + j] = static_cast<T>(p & WMASK);
                C          = p >> WBITS;
            }
            t[i + HALF + 1] = static_cast<T>(
                static_cast<Wide>(t[i + HALF + 1]) + C);
        }
    }

    // ---- Montgomery REDC: FIOS-CSA-Flat スタイル (UNROLL + Pre-sum) ----
    // REDC_OUTER を UNROLL 展開。各反復の inner PRESUM を先に実行してから
    // carry chain を逐次化。
    // 注: m_i は t[i] 依存のため、反復間での全独立先行計算は不可。
    //     (FIOS の a[j]*b[i+1] 先行計算と異なり、m_{i+1} は前 carry チェーン完了が必要)
    static void redc(T t[2 * NWORDS + 1], const T mod[NWORDS], T mprime,
                     T c[NWORDS])
    {
#pragma HLS INLINE
        REDC_OUTER: for (unsigned i = 0; i < NWORDS; i++) {
#pragma HLS LOOP_TRIPCOUNT min=NWORDS max=NWORDS avg=NWORDS
#pragma HLS UNROLL

            // Step A: m_i を計算 (t[i] 依存)
            T m = static_cast<T>(
                (static_cast<Wide>(t[i]) * static_cast<Wide>(mprime)) & WMASK);

            // Step B: j=0 の処理 (C の初期値)
            Wide p0 = static_cast<Wide>(t[i])
                    + static_cast<Wide>(m) * static_cast<Wide>(mod[0]);
            Wide C  = p0 >> WBITS;

            // Step C: Pre-sum (j=1..N-1 の m*mod[j] + t[i+j] を事前計算、C 非依存)
            Wide base_lo[NWORDS], base_hi[NWORDS];
#pragma HLS ARRAY_PARTITION variable=base_lo complete dim=1
#pragma HLS ARRAY_PARTITION variable=base_hi complete dim=1

            REDC_PRESUM: for (unsigned j = 1; j < NWORDS; j++) {
#pragma HLS UNROLL
                Wide pm = static_cast<Wide>(m) * static_cast<Wide>(mod[j]);
                Wide blo_full  = (pm & WMASK) + static_cast<Wide>(t[i + j]);
                base_lo[j]     = blo_full & WMASK;
                base_hi[j]     = (pm >> WBITS) + (blo_full >> WBITS);
            }

            // Step D: carry chain (j=1..N-1)
            REDC_CARRY: for (unsigned j = 1; j < NWORDS; j++) {
#pragma HLS UNROLL
                Wide C_lo     = C & WMASK;
                Wide C_hi     = C >> WBITS;
                Wide lo_sum   = base_lo[j] + C_lo;
                Wide lo_carry = lo_sum >> WBITS;
                Wide hi_sum   = base_hi[j] + C_hi + lo_carry;
                t[i + j]      = static_cast<T>(lo_sum & WMASK);  // t[i] stays "0" (unreachable)
                C              = hi_sum;
            }

            // Step E: 上位桁処理
            {
                Wide s0 = static_cast<Wide>(t[i + NWORDS]) + C;
                t[i + NWORDS]     = static_cast<T>(s0 & WMASK);
                Wide s1 = static_cast<Wide>(t[i + NWORDS + 1]) + (s0 >> WBITS);
                t[i + NWORDS + 1] = static_cast<T>(s1 & WMASK);
            }
        }

        // 定数時間条件付き減算
        T u[NWORDS];
#pragma HLS ARRAY_PARTITION variable=u complete dim=1
        Wide borrow = 0;
        CSUB: for (unsigned j = 0; j < NWORDS; j++) {
#pragma HLS UNROLL
            Wide d = static_cast<Wide>(t[NWORDS + j])
                   - static_cast<Wide>(mod[j]) - borrow;
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

    static void mul(const T a[NWORDS], const T b[NWORDS], T c[NWORDS],
                    const T mod[NWORDS], T mprime)
    {
#pragma HLS INLINE off

        T a_lo[HALF], a_hi[HALF], b_lo[HALF], b_hi[HALF];
#pragma HLS ARRAY_PARTITION variable=a_lo complete
#pragma HLS ARRAY_PARTITION variable=a_hi complete
#pragma HLS ARRAY_PARTITION variable=b_lo complete
#pragma HLS ARRAY_PARTITION variable=b_hi complete

        for (unsigned j = 0; j < HALF; j++) {
#pragma HLS UNROLL
            a_lo[j] = a[j]; a_hi[j] = a[j + HALF];
            b_lo[j] = b[j]; b_hi[j] = b[j + HALF];
        }

        T ll[2 * HALF + 1];
#pragma HLS ARRAY_PARTITION variable=ll complete
        submul(a_lo, b_lo, ll);

        T hh[2 * HALF + 1];
#pragma HLS ARRAY_PARTITION variable=hh complete
        submul(a_hi, b_hi, hh);

        T a_mid[HALF + 1], b_mid[HALF + 1];
#pragma HLS ARRAY_PARTITION variable=a_mid complete
#pragma HLS ARRAY_PARTITION variable=b_mid complete
        {
            Wide ca = 0, cb = 0;
            for (unsigned j = 0; j < HALF; j++) {
#pragma HLS UNROLL
                Wide pa = static_cast<Wide>(a_lo[j]) + a_hi[j] + ca;
                a_mid[j] = static_cast<T>(pa & WMASK); ca = pa >> WBITS;
                Wide pb = static_cast<Wide>(b_lo[j]) + b_hi[j] + cb;
                b_mid[j] = static_cast<T>(pb & WMASK); cb = pb >> WBITS;
            }
            a_mid[HALF] = static_cast<T>(ca);
            b_mid[HALF] = static_cast<T>(cb);
        }

        T mm[2 * HALF + 3];
#pragma HLS ARRAY_PARTITION variable=mm complete
        submul_ext(a_mid, b_mid, mm);

        T cross[2 * HALF + 3];
#pragma HLS ARRAY_PARTITION variable=cross complete
        for (unsigned k = 0; k < 2 * HALF + 3; k++) {
#pragma HLS UNROLL
            cross[k] = mm[k];
        }
        {
            Wide borrow = 0;
            CROSS_LL: for (unsigned j = 0; j < 2 * HALF + 1; j++) {
#pragma HLS UNROLL
                Wide d   = static_cast<Wide>(cross[j])
                         - static_cast<Wide>(ll[j]) - borrow;
                cross[j] = static_cast<T>(d & WMASK);
                borrow    = (d >> WBITS) & 1;
            }
            for (unsigned j = 2 * HALF + 1; j < 2 * HALF + 3; j++) {
#pragma HLS UNROLL
                Wide d   = static_cast<Wide>(cross[j]) - borrow;
                cross[j] = static_cast<T>(d & WMASK);
                borrow    = (d >> WBITS) & 1;
            }
        }
        {
            Wide borrow = 0;
            CROSS_HH: for (unsigned j = 0; j < 2 * HALF + 1; j++) {
#pragma HLS UNROLL
                Wide d   = static_cast<Wide>(cross[j])
                         - static_cast<Wide>(hh[j]) - borrow;
                cross[j] = static_cast<T>(d & WMASK);
                borrow    = (d >> WBITS) & 1;
            }
            for (unsigned j = 2 * HALF + 1; j < 2 * HALF + 3; j++) {
#pragma HLS UNROLL
                Wide d   = static_cast<Wide>(cross[j]) - borrow;
                cross[j] = static_cast<T>(d & WMASK);
                borrow    = (d >> WBITS) & 1;
            }
        }

        T full[2 * NWORDS + 1];
#pragma HLS ARRAY_PARTITION variable=full complete
        for (unsigned k = 0; k < 2 * NWORDS + 1; k++) {
#pragma HLS UNROLL
            full[k] = 0;
        }
        {
            Wide carry = 0;
            ADD_LL: for (unsigned j = 0; j <= 2 * HALF; j++) {
#pragma HLS UNROLL
                Wide p  = static_cast<Wide>(full[j]) + static_cast<Wide>(ll[j]) + carry;
                full[j] = static_cast<T>(p & WMASK);
                carry    = p >> WBITS;
            }
            full[2 * HALF + 1] = static_cast<T>(
                static_cast<Wide>(full[2 * HALF + 1]) + carry);
        }
        {
            Wide carry = 0;
            ADD_CROSS: for (unsigned j = 0; j <= 2 * HALF + 2; j++) {
#pragma HLS UNROLL
                unsigned idx = HALF + j;
                Wide p    = static_cast<Wide>(full[idx]) + static_cast<Wide>(cross[j]) + carry;
                full[idx] = static_cast<T>(p & WMASK);
                carry      = p >> WBITS;
            }
        }
        {
            Wide carry = 0;
            ADD_HH: for (unsigned j = 0; j <= 2 * HALF; j++) {
#pragma HLS UNROLL
                unsigned idx = NWORDS + j;
                Wide p    = static_cast<Wide>(full[idx]) + static_cast<Wide>(hh[j]) + carry;
                full[idx] = static_cast<T>(p & WMASK);
                carry      = p >> WBITS;
            }
        }

        redc(full, mod, mprime, c);
    }
};

} // namespace mont_karatsuba_csa
