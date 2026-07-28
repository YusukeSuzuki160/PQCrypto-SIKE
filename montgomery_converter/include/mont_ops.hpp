#pragma once
// mont_ops.hpp
// HLS 最適化 モンゴメリ乗算 (Montgomery Multiplication) ライブラリ
//
// 変換ツール montgomery_auto_rewriter の出力コードから呼び出される。
//
// 提供するもの:
//   - mont::MontOps<T, MAX_NWORDS>
//       ::mul(a, b, c, mod, mprime, nwords)  — CIOS モンゴメリ乗算
//                                              c = a * b * R^{-1} mod N
//       ::redc(x, mod, mprime, nwords)       — モンゴメリ・リダクション
//                                              x(2n語) を x * R^{-1} mod N に縮約
//       ::to_mont  / ::from_mont             — 通常表現 ⇔ モンゴメリ表現
//   - mont::cond_sub(...)                    — 定数時間（ブランチレス）条件付き減算
//
// 設計方針:
//   - R = W^nwords（W = 2^(語ビット幅)）の CIOS（Coarsely Integrated Operand
//     Scanning）方式。1 本のループ中で部分積走査とリダクションを交互に行う。
//   - すべての分岐を排し（cond_sub のマスク選択）、暗号実装に必須の
//     **定数時間性（サイドチャネル耐性）** を保つ。
//   - HLS では作業配列を完全分割（ARRAY_PARTITION complete）し、
//     内側ループを PIPELINE II=1 で流す。
//
// HLS 利用時は Vitis HLS 2022.2 以降を推奨。
// ソフトウェア検証用として g++ -std=c++17 でもコンパイル可能。

#include <climits>
#include <cstdint>
#include <type_traits>

namespace mont {

// ===================== 倍幅型の選択 =====================
// 語型 T に対し「2 語分」を保持できる符号なし整数型を選ぶ。
//   uint8_t/uint16_t -> uint32_t, uint32_t -> uint64_t, uint64_t -> __uint128_t
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

// ===================== 定数時間 条件付き減算 =====================
// (t[0..n-1], t_hi) で表される (n+1) 語の値から、t >= mod のとき mod を引く。
// 結果 n 語を c へ書き込む。分岐なし（マスク選択）で実装。
template <typename T, unsigned MAX_NWORDS>
inline void cond_sub(const T *t, T t_hi, const T *mod, T *c, unsigned nwords)
{
#pragma HLS INLINE
    using Wide = typename wide_type<T>::type;
    constexpr unsigned WBITS = sizeof(T) * CHAR_BIT;
    const T WMASK = static_cast<T>(~static_cast<T>(0));

    T u[MAX_NWORDS];
#pragma HLS ARRAY_PARTITION variable=u complete dim=1

    // u = t - mod （多倍長減算、借りを伝播）
    Wide borrow = 0;
    for (unsigned j = 0; j < nwords; j++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_NWORDS
#pragma HLS PIPELINE II=1
        Wide d = static_cast<Wide>(t[j]) - static_cast<Wide>(mod[j]) - borrow;
        u[j]   = static_cast<T>(d & WMASK);
        borrow = (d >> WBITS) & 1;           // アンダーフローで 1
    }

    // 最上位語 t_hi から最終借りを引いてさらにアンダーフロー →  t < mod なら t を採用
    //   keep_t = (t_hi < borrow) ? all-ones : 0
    T keep_t = static_cast<T>(0) - static_cast<T>(t_hi < static_cast<T>(borrow));

    for (unsigned j = 0; j < nwords; j++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_NWORDS
#pragma HLS PIPELINE II=1
        c[j] = (t[j] & keep_t) | (u[j] & static_cast<T>(~keep_t & WMASK));
    }
}

// ===================== MontOps テンプレート =====================

template <typename T, unsigned MAX_NWORDS>
struct MontOps
{
    using Wide = typename wide_type<T>::type;
    static constexpr unsigned WBITS = sizeof(T) * CHAR_BIT;
    static constexpr T        WMASK = static_cast<T>(~static_cast<T>(0));

    // ---- CIOS モンゴメリ乗算 ----
    //   c = a * b * R^{-1} mod N,  R = W^nwords
    // 事前条件:
    //   - a, b は N 未満（各 nwords 語、リトルエンディアン: a[0] が最下位語）
    //   - mod[0] は奇数（N は奇数 ＝ 暗号で扱う素数/その積）
    //   - mprime = -N^{-1} mod W （語レベルのモンゴメリ定数 n'[0]）
    //   - nwords <= MAX_NWORDS
    static void mul(const T *a, const T *b, T *c,
                    const T *mod, T mprime, unsigned nwords)
    {
#pragma HLS INLINE off
        if (nwords == 0 || nwords > MAX_NWORDS) return;

        // 作業配列（n+2 語）。完全分割で 1 サイクル多ポートアクセスを可能にする。
        T t[MAX_NWORDS + 2];
#pragma HLS ARRAY_PARTITION variable=t complete dim=1

        for (unsigned k = 0; k < nwords + 2; k++) {
#pragma HLS LOOP_TRIPCOUNT min=3 max=MAX_NWORDS+2
#pragma HLS PIPELINE II=1
            t[k] = 0;
        }

        for (unsigned i = 0; i < nwords; i++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_NWORDS
            // ---- (1) 部分積走査: t += a * b[i] ----
            Wide C = 0;
            for (unsigned j = 0; j < nwords; j++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_NWORDS
#pragma HLS PIPELINE II=1
                Wide p = static_cast<Wide>(t[j])
                       + static_cast<Wide>(a[j]) * static_cast<Wide>(b[i])
                       + C;
                t[j] = static_cast<T>(p & WMASK);
                C    = p >> WBITS;
            }
            {
                Wide s        = static_cast<Wide>(t[nwords]) + C;
                t[nwords]     = static_cast<T>(s & WMASK);
                t[nwords + 1] = static_cast<T>(s >> WBITS);
            }

            // ---- (2) リダクション走査: m = t0 * n'; t = (t + m*N) / W ----
            T    m  = static_cast<T>((static_cast<Wide>(t[0])
                                      * static_cast<Wide>(mprime)) & WMASK);
            Wide p0 = static_cast<Wide>(t[0]) + static_cast<Wide>(m)
                                              * static_cast<Wide>(mod[0]);
            C = p0 >> WBITS;                 // t[0] は 0 になり、語が 1 つ下にずれる
            for (unsigned j = 1; j < nwords; j++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_NWORDS
#pragma HLS PIPELINE II=1
                Wide p = static_cast<Wide>(t[j])
                       + static_cast<Wide>(m) * static_cast<Wide>(mod[j])
                       + C;
                t[j - 1] = static_cast<T>(p & WMASK);
                C        = p >> WBITS;
            }
            {
                Wide s        = static_cast<Wide>(t[nwords]) + C;
                t[nwords - 1] = static_cast<T>(s & WMASK);
                t[nwords]     = static_cast<T>(static_cast<Wide>(t[nwords + 1])
                                               + (s >> WBITS));
            }
        }

        // ---- (3) 定数時間の最終条件付き減算 ----
        cond_sub<T, MAX_NWORDS>(t, t[nwords], mod, c, nwords);
    }

    // ---- モンゴメリ・リダクション ----
    //   入力 x は 2*nwords 語（乗算結果など）。出力は低位 nwords 語に
    //   x * R^{-1} mod N を返す（x は破壊される）。
    static void redc(T *x, const T *mod, T mprime, unsigned nwords)
    {
#pragma HLS INLINE off
        if (nwords == 0 || nwords > MAX_NWORDS) return;

        T t[2 * MAX_NWORDS + 1];
#pragma HLS ARRAY_PARTITION variable=t complete dim=1

        for (unsigned k = 0; k < 2 * nwords; k++) {
#pragma HLS LOOP_TRIPCOUNT min=2 max=2*MAX_NWORDS
#pragma HLS PIPELINE II=1
            t[k] = x[k];
        }
        t[2 * nwords] = 0;

        for (unsigned i = 0; i < nwords; i++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_NWORDS
            T    m = static_cast<T>((static_cast<Wide>(t[i])
                                     * static_cast<Wide>(mprime)) & WMASK);
            Wide C = 0;
            for (unsigned j = 0; j < nwords; j++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_NWORDS
#pragma HLS PIPELINE II=1
                Wide p = static_cast<Wide>(t[i + j])
                       + static_cast<Wide>(m) * static_cast<Wide>(mod[j])
                       + C;
                t[i + j] = static_cast<T>(p & WMASK);
                C        = p >> WBITS;
            }
            // 残りの桁上げを伝播
            unsigned k = i + nwords;
            while (C != 0 && k <= 2 * nwords) {
#pragma HLS LOOP_TRIPCOUNT min=0 max=MAX_NWORDS+1
                Wide s = static_cast<Wide>(t[k]) + C;
                t[k]   = static_cast<T>(s & WMASK);
                C      = s >> WBITS;
                ++k;
            }
        }

        // 上位 nwords 語が R^{-1} 倍の結果。高位語 t[2n] を繰り上がりとして
        // 定数時間の条件付き減算を行う。
        cond_sub<T, MAX_NWORDS>(&t[nwords], t[2 * nwords], mod, x, nwords);
    }

    // ---- 通常表現 -> モンゴメリ表現 ----
    //   a_mont = a * R mod N = MontMul(a, R2)  （R2 = R^2 mod N を渡す）
    static void to_mont(const T *a, const T *r2, T *a_mont,
                        const T *mod, T mprime, unsigned nwords)
    {
#pragma HLS INLINE
        mul(a, r2, a_mont, mod, mprime, nwords);
    }

    // ---- モンゴメリ表現 -> 通常表現 ----
    //   a = MontMul(a_mont, 1)
    static void from_mont(const T *a_mont, T *a,
                          const T *mod, T mprime, unsigned nwords)
    {
#pragma HLS INLINE
        T one[MAX_NWORDS];
#pragma HLS ARRAY_PARTITION variable=one complete dim=1
        for (unsigned k = 0; k < nwords; k++) {
#pragma HLS PIPELINE II=1
            one[k] = 0;
        }
        one[0] = 1;
        mul(a_mont, one, a, mod, mprime, nwords);
    }
};

} // namespace mont
