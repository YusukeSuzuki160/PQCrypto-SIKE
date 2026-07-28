#pragma once
// mont_ops_karatsuba.hpp
// 2-way Karatsuba Montgomery multiplication (KO-2)
//
// アルゴリズム (NWORDS=4, HALF=2):
//   a = a_hi * W^2 + a_lo  (各 2語)
//   b = b_hi * W^2 + b_lo
//   a*b = hh * W^4 + (mm-ll-hh) * W^2 + ll
//     ll = a_lo * b_lo  (2x2 → 5語)
//     hh = a_hi * b_hi  (2x2 → 5語)
//     mm = (a_lo+a_hi)(b_lo+b_hi)  (最大 3x3 → 7語)
//   3 つの部分積が互いに独立 → HLS 並列スケジューリング可能
//   その後 REDC で Montgomery 還元 (N=4語の還元)
//
// CIOS との差 (N=4):
//   schoolbook: N²=16 MAC, carry chain 2N-1=7 深さ/ステップ × N=4 ステップ
//   KO-2: 3 つの 2×2 部分積 (各 4 MAC, carry chain 2 深さ) 並列実行 + REDC
//   N が大きいほど優位 (CIOS: O(N²), KO-2: O(N^{log2 3}) ≈ O(N^1.585))

#include <climits>
#include <cstdint>
#include <type_traits>

namespace mont_karatsuba {

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
struct MontOps_Karatsuba {
    using Wide = typename wide_type<T>::type;
    static constexpr unsigned WBITS = sizeof(T) * CHAR_BIT;
    static constexpr T        WMASK = static_cast<T>(~static_cast<T>(0));
    static constexpr unsigned HALF  = NWORDS / 2;  // k = N/2 = 2

    // ---- k×k 語 schoolbook 乗算 ----
    // 結果は 2k+1 語 (上位はオーバーフロー吸収用)
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

    // ---- (k+1)×(k+1) 語 schoolbook 乗算 (mm 用) ----
    // a_mid, b_mid は最大 HALF+1 語 (下位 HALF 語 + 1 ビット MSW)
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

    // ---- Montgomery REDC (2N語 → N語) ----
    // REDC_CARRY を 2 ステップ固定展開して配列外アクセスを防止。
    // t のサイズ: 2*NWORDS+1 (インデックス 0..2*NWORDS)
    // REDC_OUTER i=0..N-1 で t[i+N] と t[i+N+1] に書き込む:
    //   最大インデックス (N-1)+N+1 = 2N ≤ 2N (配列内)
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
            // 桁上げ伝播: 2 ステップ固定 (配列内)
            {
                Wide s0 = static_cast<Wide>(t[i + NWORDS]) + C;
                t[i + NWORDS]     = static_cast<T>(s0 & WMASK);
                Wide s1 = static_cast<Wide>(t[i + NWORDS + 1]) + (s0 >> WBITS);
                t[i + NWORDS + 1] = static_cast<T>(s1 & WMASK);
            }
        }

        // 最終補正 (定数時間条件付き減算)
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

    // ---- 2-way Karatsuba + Montgomery REDC ----
    //
    // NWORDS=4, HALF=2 に特化した実装。
    // 動的サイズの add_shifted/sub_shifted を避け、
    // 固定長ループで full[0..8] を直接組み立てる。
    static void mul(const T a[NWORDS], const T b[NWORDS], T c[NWORDS],
                    const T mod[NWORDS], T mprime)
    {
#pragma HLS INLINE off

        // --- (1) 分割 ---
        T a_lo[HALF], a_hi[HALF], b_lo[HALF], b_hi[HALF];
#pragma HLS ARRAY_PARTITION variable=a_lo complete
#pragma HLS ARRAY_PARTITION variable=a_hi complete
#pragma HLS ARRAY_PARTITION variable=b_lo complete
#pragma HLS ARRAY_PARTITION variable=b_hi complete

        for (unsigned j = 0; j < HALF; j++) {
#pragma HLS UNROLL
            a_lo[j] = a[j];        a_hi[j] = a[j + HALF];
            b_lo[j] = b[j];        b_hi[j] = b[j + HALF];
        }

        // --- (2) 3 つの部分積 (互いに独立 → HLS 並列スケジューリング) ---

        // ll = a_lo * b_lo  (HALF×HALF = 2×2 → 5 語)
        T ll[2 * HALF + 1];
#pragma HLS ARRAY_PARTITION variable=ll complete
        submul(a_lo, b_lo, ll);

        // hh = a_hi * b_hi  (HALF×HALF = 2×2 → 5 語)
        T hh[2 * HALF + 1];
#pragma HLS ARRAY_PARTITION variable=hh complete
        submul(a_hi, b_hi, hh);

        // a_mid = a_lo + a_hi (HALF+1=3 語)
        // b_mid = b_lo + b_hi (HALF+1=3 語)
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

        // mm = a_mid * b_mid  ((HALF+1)×(HALF+1) = 3×3 → 7 語)
        T mm[2 * HALF + 3];
#pragma HLS ARRAY_PARTITION variable=mm complete
        submul_ext(a_mid, b_mid, mm);

        // --- (3) cross = mm - ll - hh ---
        // cross[j] = mm[j] - ll[j] - hh[j] (借りを上位に伝播)
        T cross[2 * HALF + 3];
#pragma HLS ARRAY_PARTITION variable=cross complete
        for (unsigned k = 0; k < 2 * HALF + 3; k++) {
#pragma HLS UNROLL
            cross[k] = mm[k];
        }
        // cross -= ll
        {
            Wide borrow = 0;
            CROSS_LL: for (unsigned j = 0; j < 2 * HALF + 1; j++) {
#pragma HLS UNROLL
                Wide d    = static_cast<Wide>(cross[j])
                          - static_cast<Wide>(ll[j]) - borrow;
                cross[j]  = static_cast<T>(d & WMASK);
                borrow     = (d >> WBITS) & 1;
            }
            // 残り借りを上位 2 語に伝播
            for (unsigned j = 2 * HALF + 1; j < 2 * HALF + 3; j++) {
#pragma HLS UNROLL
                Wide d    = static_cast<Wide>(cross[j]) - borrow;
                cross[j]  = static_cast<T>(d & WMASK);
                borrow     = (d >> WBITS) & 1;
            }
        }
        // cross -= hh
        {
            Wide borrow = 0;
            CROSS_HH: for (unsigned j = 0; j < 2 * HALF + 1; j++) {
#pragma HLS UNROLL
                Wide d    = static_cast<Wide>(cross[j])
                          - static_cast<Wide>(hh[j]) - borrow;
                cross[j]  = static_cast<T>(d & WMASK);
                borrow     = (d >> WBITS) & 1;
            }
            for (unsigned j = 2 * HALF + 1; j < 2 * HALF + 3; j++) {
#pragma HLS UNROLL
                Wide d    = static_cast<Wide>(cross[j]) - borrow;
                cross[j]  = static_cast<T>(d & WMASK);
                borrow     = (d >> WBITS) & 1;
            }
        }

        // --- (4) full[0..8] = ll + cross*W^HALF + hh*W^{2*HALF} ---
        // 直接インデックスで加算 (動的 add_shifted を使わず HLS フレンドリに)
        T full[2 * NWORDS + 1];
#pragma HLS ARRAY_PARTITION variable=full complete
        for (unsigned k = 0; k < 2 * NWORDS + 1; k++) {
#pragma HLS UNROLL
            full[k] = 0;
        }

        // ll を offset=0 で加算 (full[0..2*HALF] += ll[0..2*HALF])
        {
            Wide carry = 0;
            ADD_LL: for (unsigned j = 0; j <= 2 * HALF; j++) {
#pragma HLS UNROLL
                Wide p    = static_cast<Wide>(full[j])
                          + static_cast<Wide>(ll[j]) + carry;
                full[j]   = static_cast<T>(p & WMASK);
                carry      = p >> WBITS;
            }
            // carry は最大 1 → full[2*HALF+1] に加算
            full[2 * HALF + 1] = static_cast<T>(
                static_cast<Wide>(full[2 * HALF + 1]) + carry);
        }

        // cross を offset=HALF で加算 (full[HALF..HALF+2*HALF+2] += cross[0..2*HALF+2])
        {
            Wide carry = 0;
            ADD_CROSS: for (unsigned j = 0; j <= 2 * HALF + 2; j++) {
#pragma HLS UNROLL
                unsigned idx = HALF + j;
                Wide p    = static_cast<Wide>(full[idx])
                          + static_cast<Wide>(cross[j]) + carry;
                full[idx] = static_cast<T>(p & WMASK);
                carry      = p >> WBITS;
            }
            // carry → full[HALF + 2*HALF + 3] = full[3*HALF+3] = full[9]
            // だが full のサイズは 2*NWORDS+1=9 (インデックス 0..8)。
            // cross は非負なので overflow は理論上起きないが念のため:
            // (この carry は 0 のはず; 必要なら full のサイズを 10 に拡張)
        }

        // hh を offset=2*HALF=NWORDS で加算 (full[NWORDS..NWORDS+2*HALF] += hh[0..2*HALF])
        {
            Wide carry = 0;
            ADD_HH: for (unsigned j = 0; j <= 2 * HALF; j++) {
#pragma HLS UNROLL
                unsigned idx = NWORDS + j;
                Wide p    = static_cast<Wide>(full[idx])
                          + static_cast<Wide>(hh[j]) + carry;
                full[idx] = static_cast<T>(p & WMASK);
                carry      = p >> WBITS;
            }
            // carry は 0 のはず (a,b < mod → a*b < mod^2 < W^{2N})
        }

        // --- (5) Montgomery REDC ---
        redc(full, mod, mprime, c);
    }
};

} // namespace mont_karatsuba
