#pragma once
// mont_ops_p503_orig.hpp
// SIKEp503 の実際の参照実装 (Optimized_Implementation/portable/SIKEp503/
// generic/fp_generic.c の mp_mul() + rdc_mont()) を HLS 合成可能な形へ
// そのまま移植した「変換前」ベースライン。
//
// 汎用スカラー mprime による CIOS/REDC とは異なり、p503 = 2^250*3^159 - 1
// という素数の特殊な形（p503+1 の下位 ZERO_WORDS 語がゼロ）を利用した
// comba ベースの専用簡約アルゴリズム。乗算回数がその分減る設計になっている。
//
// アルゴリズムは原典 (mp_mul + rdc_mont) の構造をそのまま保持し、
// 外側ループには #pragma HLS PIPELINE のみを付与する
// （本研究序盤で他アルゴリズムに適用した「素の変換」と同じ水準）。
// これにより「元のソフトウェアアルゴリズムを機械的に HLS 変換しただけ」の
// 状態と、本研究の最適化済み FIOS-CSA-True を公平に比較する。

#include <climits>
#include <cstdint>
#include <type_traits>

namespace mont_p503_orig {

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

// T: 語型 (uint64_t), NWORDS: 語数 (8), ZERO_WORDS: mod+1 の下位ゼロ語数 (p503: 3)
template <typename T, unsigned NWORDS, unsigned ZERO_WORDS>
struct MontOps_P503_Orig {
    using Wide = typename wide_type<T>::type;
    static constexpr unsigned WBITS = sizeof(T) * CHAR_BIT;
    static constexpr T        WMASK = static_cast<T>(~static_cast<T>(0));

    // ---- mp_mul: a*b -> c (2*NWORDS 語, comba) ----
    static void mp_mul(const T a[NWORDS], const T b[NWORDS], T c[2 * NWORDS]) {
#pragma HLS INLINE off
        Wide t = 0, u = 0, v = 0;

        MP_MUL_LO: for (unsigned i = 0; i < NWORDS; i++) {
#pragma HLS PIPELINE II=1
            for (unsigned j = 0; j <= i; j++) {
                Wide p = static_cast<Wide>(a[j]) * static_cast<Wide>(b[i - j]);
                Wide s0 = (p & WMASK) + (v & WMASK);
                v = (s0 & WMASK);
                Wide c0 = s0 >> WBITS;
                Wide s1 = (p >> WBITS) + (u & WMASK) + c0;
                u = s1 & WMASK;
                t += (s1 >> WBITS);
            }
            c[i] = static_cast<T>(v);
            v = u;
            u = t;
            t = 0;
        }

        MP_MUL_HI: for (unsigned i = NWORDS; i < 2 * NWORDS - 1; i++) {
#pragma HLS PIPELINE II=1
            for (unsigned j = i - NWORDS + 1; j < NWORDS; j++) {
                Wide p = static_cast<Wide>(a[j]) * static_cast<Wide>(b[i - j]);
                Wide s0 = (p & WMASK) + (v & WMASK);
                v = (s0 & WMASK);
                Wide c0 = s0 >> WBITS;
                Wide s1 = (p >> WBITS) + (u & WMASK) + c0;
                u = s1 & WMASK;
                t += (s1 >> WBITS);
            }
            c[i] = static_cast<T>(v);
            v = u;
            u = t;
            t = 0;
        }
        c[2 * NWORDS - 1] = static_cast<T>(v);
    }

    // ---- rdc_mont: ma(2*NWORDS 語) を mc(NWORDS 語) へ簡約 ----
    // modp1: mod+1 の下位語表現 (p503 の場合 p503p1、下位 ZERO_WORDS 語がゼロ)
    static void rdc_mont(const T ma[2 * NWORDS], const T modp1[NWORDS], T mc[NWORDS]) {
#pragma HLS INLINE off
        Wide t = 0, u = 0, v = 0;
        unsigned count = ZERO_WORDS;

        for (unsigned k = 0; k < NWORDS; k++) {
#pragma HLS UNROLL
            mc[k] = 0;
        }

        RDC_LO: for (unsigned i = 0; i < NWORDS; i++) {
#pragma HLS PIPELINE II=1
            for (unsigned j = 0; j < i; j++) {
                if (j < (i - ZERO_WORDS + 1)) {
                    Wide p = static_cast<Wide>(mc[j]) * static_cast<Wide>(modp1[i - j]);
                    Wide s0 = (p & WMASK) + (v & WMASK);
                    v = (s0 & WMASK);
                    Wide c0 = s0 >> WBITS;
                    Wide s1 = (p >> WBITS) + (u & WMASK) + c0;
                    u = s1 & WMASK;
                    t += (s1 >> WBITS);
                }
            }
            Wide s2 = (v & WMASK) + static_cast<Wide>(ma[i]);
            v = s2 & WMASK;
            Wide c1 = s2 >> WBITS;
            Wide s3 = (u & WMASK) + c1;
            u = s3 & WMASK;
            t += (s3 >> WBITS);
            mc[i] = static_cast<T>(v);
            v = u;
            u = t;
            t = 0;
        }

        RDC_HI: for (unsigned i = NWORDS; i < 2 * NWORDS - 1; i++) {
#pragma HLS PIPELINE II=1
            if (count > 0) count -= 1;
            for (unsigned j = i - NWORDS + 1; j < NWORDS; j++) {
                if (j < (NWORDS - count)) {
                    Wide p = static_cast<Wide>(mc[j]) * static_cast<Wide>(modp1[i - j]);
                    Wide s0 = (p & WMASK) + (v & WMASK);
                    v = (s0 & WMASK);
                    Wide c0 = s0 >> WBITS;
                    Wide s1 = (p >> WBITS) + (u & WMASK) + c0;
                    u = s1 & WMASK;
                    t += (s1 >> WBITS);
                }
            }
            Wide s2 = (v & WMASK) + static_cast<Wide>(ma[i]);
            v = s2 & WMASK;
            Wide c1 = s2 >> WBITS;
            Wide s3 = (u & WMASK) + c1;
            u = s3 & WMASK;
            t += (s3 >> WBITS);
            mc[i - NWORDS] = static_cast<T>(v);
            v = u;
            u = t;
            t = 0;
        }
        Wide s4 = (v & WMASK) + static_cast<Wide>(ma[2 * NWORDS - 1]);
        mc[NWORDS - 1] = static_cast<T>(s4 & WMASK);
    }

    // ---- fpmul_mont 相当: c = a*b*R^-1 mod p (lazy reduction, [0,2p) のまま出力) ----
    static void mul(const T a[NWORDS], const T b[NWORDS], T c[NWORDS],
                    const T modp1[NWORDS])
    {
#pragma HLS INLINE off
        T temp[2 * NWORDS];
#pragma HLS ARRAY_PARTITION variable=temp complete dim=1
        mp_mul(a, b, temp);
        rdc_mont(temp, modp1, c);
    }
};

} // namespace mont_p503_orig
