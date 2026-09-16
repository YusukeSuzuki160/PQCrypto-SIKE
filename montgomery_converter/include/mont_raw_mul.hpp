#pragma once
// mont_raw_mul.hpp
// 「還元を伴わない生の多倍長乗算」専用コア。
//
// 背景: fp2mul_mont は GF(p^2) の Karatsuba 風乗算のため mp_mul を3回
// 呼び、未還元の積(2*NWORDS語)を加減算で組み合わせてから rdc_mont を
// 2回だけ呼ぶ。そのため fpmul_mont/fpsqr_mont(FIOS-CSA-Flat/True、乗算と
// 還元が段ごとに融合したアルゴリズム)をそのまま流用することはできない
// (還元を含んでしまうため意味が変わる)。
//
// これまで mp_mul の実体は mpx::PackedOps<Digit,MAX_NWORDS,true>::mul
// (オペランドを ap_uint<W*MAX_NWORDS> へ丸ごとpackし、1回の大きな乗算を
// 行ってからunpackする方式)だった。これはSIKE全体合成でDSP/LUTを大きく
// 消費する主因の一つと判明した(fp2mul_montが同型写像ウォーク中の支配的
// な乗算経路であるため)。
//
// 本ヘルパーは、FIOS-CSA-Flatと同じ「ネイティブ幅倍(Wide)型での乗算+
// 通常の+によるキャリー伝播(FPGAの高速キャリーチェーンへマッピング)」
// というスタイルの素直なスクールブック乗算で、還元なしの2*NWORDS語の
// 生の積のみを計算する。mp_mul(a,b,c,nwords)と同じシグネチャ/意味を
// 持つため、置き換えはmp_mulの実装差し替えのみで完結する。
#include <climits>
#include <cstdint>
#include <type_traits>

namespace mont_raw_mul {

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
struct RawMul {
    using Wide = typename wide_type<T>::type;
    static constexpr unsigned WBITS = sizeof(T) * CHAR_BIT;
    static constexpr T        WMASK = static_cast<T>(~static_cast<T>(0));

    // c[0..2*NWORDS-1] = a[0..NWORDS-1] * b[0..NWORDS-1] (還元なし)
    static void mul(const T a[NWORDS], const T b[NWORDS], T c[2 * NWORDS])
    {
#pragma HLS INLINE off
        T acc[2 * NWORDS];
#pragma HLS ARRAY_PARTITION variable = acc complete dim = 1

        for (unsigned k = 0; k < 2 * NWORDS; k++) {
#pragma HLS UNROLL
            acc[k] = 0;
        }

        // i,jともにUNROLLすると空間展開でDSPが爆発し(実測: DSPが約3倍)、
        // 外側だけPIPELINE+内側UNROLLにすると、carryを介した内側8個の
        // 逐次依存チェーンが1サイクル内の組み合わせ論理になってしまい
        // クリティカルパスが10nsを超過する(実測: Estimated Fmaxが
        // 136.99MHz→47.16MHzへ悪化しタイミング未達)。内側もUNROLLせず
        // PIPELINE(実質フラット化)することで、1サイクルあたり乗算器
        // 1個ぶんの浅い組み合わせ論理に抑えつつ、外側×内側=NWORDS^2
        // サイクルでの時分割再利用によりDSP使用量も低く保つ。
        ROW: for (unsigned i = 0; i < NWORDS; i++) {
            T carry = 0;
            COL: for (unsigned j = 0; j < NWORDS; j++) {
#pragma HLS PIPELINE II = 1
                Wide pp = static_cast<Wide>(a[i]) * static_cast<Wide>(b[j])
                        + static_cast<Wide>(acc[i + j])
                        + static_cast<Wide>(carry);
                acc[i + j] = static_cast<T>(pp & WMASK);
                carry      = static_cast<T>(pp >> WBITS);
            }
            acc[i + NWORDS] = carry;
        }

        for (unsigned k = 0; k < 2 * NWORDS; k++) {
#pragma HLS UNROLL
            c[k] = acc[k];
        }
    }
};

} // namespace mont_raw_mul
