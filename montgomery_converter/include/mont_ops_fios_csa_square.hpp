#pragma once
// mont_ops_fios_csa_square.hpp
// 平方(二乗) c = a*a*R^-1 mod N 専用のモンゴメリ乗算コア。
//
// 着想: a*a の schoolbook 展開では交差項 a[i]*a[j] (i<j) が a[j]*a[i] と
// 同一値になるため、i<=j の組合せのみ計算し交差項を2倍すればよい。
// これにより乗算回数は N^2 (全乗算) から N(N+1)/2 (対角 N 個 + 交差 N(N-1)/2 個)
// に削減される (N=8 で 64→36、約44%減)。
//
// 構成は2段:
//   Phase 1 (square_full): 対称性を使った schoolbook 平方で 2N 語の a^2 を生成
//   Phase 2 (redc):          標準的な CIOS 型モンゴメリ・リダクションで N 語へ縮約
//                             (mont::MontOps<>::redc と同一アルゴリズム)
//
// FIOS-CSA-True のような「N反復にわたる冗長表現の完全展開」までは行わず、
// まず乗算回数削減という平方特有の利点そのものを検証する目的の実装。

#include <climits>
#include <cstdint>
#include <type_traits>

namespace mont_fios_csa_square {

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
struct MontOps_FIOS_CSA_Square {
    using Wide = typename wide_type<T>::type;
    static constexpr unsigned WBITS = sizeof(T) * CHAR_BIT;
    static constexpr T        WMASK = static_cast<T>(~static_cast<T>(0));
    static constexpr unsigned NPAIRS = NWORDS * (NWORDS - 1) / 2;  // 交差項の組数

    // ---- Phase 1: 対称性を利用した平方 (a*a -> 2N語) ----
    static void square_full(const T a[NWORDS], T prod[2 * NWORDS]) {
#pragma HLS INLINE off
        // 各出力語に対する寄与を集約する作業配列 (128bit, 全展開)
        Wide acc[2 * NWORDS];
#pragma HLS ARRAY_PARTITION variable=acc complete dim=1
        for (unsigned k = 0; k < 2 * NWORDS; k++) {
#pragma HLS UNROLL
            acc[k] = 0;
        }

        // 対角項: a[i]^2, 列 2i (lo) / 2i+1 (hi)
        DIAG: for (unsigned i = 0; i < NWORDS; i++) {
#pragma HLS UNROLL
            Wide p = static_cast<Wide>(a[i]) * static_cast<Wide>(a[i]);
            acc[2 * i]     += (p & WMASK);
            acc[2 * i + 1] += (p >> WBITS);
        }

        // 交差項: 2*a[i]*a[j] (i<j), 列 i+j (lo) / i+j+1 (hi)
        // 注意: p (128bit全体) をそのまま << 1 すると、p の最上位ビットが
        // 立っている場合に 128bit 境界からあふれて破損する
        // (a[i],a[j] が大きい値のとき p >= 2^127 になり得るため実際に発生する)。
        // p を lo/hi (各64bit) に分割してから個別に2倍すれば、どちらも
        // 65bit 程度に収まり Wide(128bit) の範囲内で安全に計算できる。
        CROSS: for (unsigned i = 0; i < NWORDS; i++) {
#pragma HLS UNROLL
            for (unsigned j = i + 1; j < NWORDS; j++) {
#pragma HLS UNROLL
                Wide p   = static_cast<Wide>(a[i]) * static_cast<Wide>(a[j]);
                Wide lo  = p & WMASK;
                Wide hi  = p >> WBITS;
                Wide lo2 = lo << 1;   // < 2^65, safe
                Wide hi2 = hi << 1;   // < 2^65, safe
                acc[i + j]     += (lo2 & WMASK);
                acc[i + j + 1] += (lo2 >> WBITS) + hi2;
            }
        }

        // 桁上げ伝播して正規化 (列ごとの acc は複数語分の値を持ちうる)
        Wide carry = 0;
        NORM: for (unsigned k = 0; k < 2 * NWORDS; k++) {
#pragma HLS UNROLL
            Wide s = acc[k] + carry;
            prod[k] = static_cast<T>(s & WMASK);
            carry   = s >> WBITS;
        }
    }

    // ---- Phase 2: 標準 CIOS 型モンゴメリ・リダクション (2N語 -> N語) ----
    static void redc(T x[2 * NWORDS], const T mod[NWORDS], T mprime, T c[NWORDS]) {
#pragma HLS INLINE off
        T t[2 * NWORDS + 1];
#pragma HLS ARRAY_PARTITION variable=t complete dim=1
        for (unsigned k = 0; k < 2 * NWORDS; k++) {
#pragma HLS UNROLL
            t[k] = x[k];
        }
        t[2 * NWORDS] = 0;

        // 注意: 元の mont_ops.hpp の redc() は while(C!=0 && k<=2N) という
        // データ依存の可変トリップ数ループでキャリーを伝播していたが、これは
        // HLS が静的にレイテンシを確定できず(合成レポートが "?" になる)、
        // かつ入力依存で実行時間が変わる非定数時間な設計になってしまう
        // (本研究で「変換前」p503実装が可変レイテンシだった問題と同根)。
        // ここでは外側ループを完全展開 (UNROLL) し、各 i ごとに固定範囲
        // (i+NWORDS .. 2*NWORDS) を早期終了なしで常に伝播することで、
        // 完全に静的・固定サイクルなスケジュールにする。
        RDC_OUTER: for (unsigned i = 0; i < NWORDS; i++) {
#pragma HLS UNROLL
            T m = static_cast<T>((static_cast<Wide>(t[i]) * static_cast<Wide>(mprime)) & WMASK);
            Wide C = 0;
            for (unsigned j = 0; j < NWORDS; j++) {
#pragma HLS UNROLL
                Wide p = static_cast<Wide>(t[i + j]) + static_cast<Wide>(m) * static_cast<Wide>(mod[j]) + C;
                t[i + j] = static_cast<T>(p & WMASK);
                C = p >> WBITS;
            }
            for (unsigned k = i + NWORDS; k <= 2 * NWORDS; k++) {
#pragma HLS UNROLL
                Wide s = static_cast<Wide>(t[k]) + C;
                t[k] = static_cast<T>(s & WMASK);
                C = s >> WBITS;
            }
        }

        // 定数時間条件付き減算
        T u[NWORDS];
#pragma HLS ARRAY_PARTITION variable=u complete dim=1
        Wide borrow = 0;
        for (unsigned j = 0; j < NWORDS; j++) {
#pragma HLS UNROLL
            Wide d = static_cast<Wide>(t[NWORDS + j]) - static_cast<Wide>(mod[j]) - borrow;
            u[j] = static_cast<T>(d & WMASK);
            borrow = (d >> WBITS) & 1;
        }
        T keep_t = static_cast<T>(0) - static_cast<T>(t[2 * NWORDS] < static_cast<T>(borrow));
        for (unsigned j = 0; j < NWORDS; j++) {
#pragma HLS UNROLL
            c[j] = (t[NWORDS + j] & keep_t) | (u[j] & static_cast<T>(~keep_t & WMASK));
        }
    }

    // ---- 統合: c = a*a*R^-1 mod N ----
    static void mul(const T a[NWORDS], T c[NWORDS], const T mod[NWORDS], T mprime) {
#pragma HLS INLINE off
        T prod[2 * NWORDS];
#pragma HLS ARRAY_PARTITION variable=prod complete dim=1
        square_full(a, prod);
        redc(prod, mod, mprime, c);
    }
};

} // namespace mont_fios_csa_square
