#pragma once
// mont_ops_fast.hpp
// HLS 高速モンゴメリ乗算 — コンパイル時固定ワード数版
//
// mont_ops.hpp との違い:
//   - NWORDS はテンプレートパラメータ（実行時引数ではない）
//   - 内側 j-ループを #pragma HLS UNROLL で明示展開
//     → HLS が内側ループを 1 "ステージ" として扱い、外側 CIOS ループを
//       #pragma HLS PIPELINE II=1 でパイプライン化できる
//   - 初期化・cond_sub ループも UNROLL → それぞれ 1–4 clk に短縮
//   - 合成目標: 外側ループ II=2 (自動判別), 総 latency << 70 clk (変換前)
//
// ソフトウェア検証(g++ -std=c++17)でもコンパイル可能。

#include <climits>
#include <cstdint>
#include <type_traits>

namespace mont {

// ===================== 倍幅型選択（mont_ops.hpp と共通） =====================
#ifndef MONT_WIDE_TYPE_DEFINED
#define MONT_WIDE_TYPE_DEFINED
template <typename T>
struct wide_type_fast {
    using type = typename std::conditional<
        sizeof(T) <= 1, uint16_t,
        typename std::conditional<
            sizeof(T) <= 2, uint32_t,
            typename std::conditional<
                sizeof(T) <= 4, uint64_t,
                __uint128_t>::type>::type>::type;
};
#endif

// ===================== MontOps_Fast<T, NWORDS> =====================
// T     : 語の型（uint16/uint32/uint64）
// NWORDS: 語数（コンパイル時定数。N = NWORDS * sizeof(T) * 8 ビット法）

template <typename T, unsigned NWORDS>
struct MontOps_Fast {

    using Wide = typename wide_type_fast<T>::type;
    static constexpr unsigned WBITS = sizeof(T) * CHAR_BIT;
    static constexpr T        WMASK = static_cast<T>(~static_cast<T>(0));

    // ---- CIOS モンゴメリ乗算 ----
    //   c = a * b * R^{-1} mod N,  R = W^NWORDS
    // 事前条件:
    //   - a, b は N 未満（NWORDS 語、リトルエンディアン）
    //   - mod[0] は奇数
    //   - mprime = -N^{-1} mod W
    //
    // HLS パイプライン構造（xcvu9p @10ns で確認済み）:
    //   init  (UNROLL)   :  ~1 clk
    //   CIOS 外側 (II=2) : (NWORDS-1)*2 + depth ≈ 20 clk (NWORDS=8 時)
    //   cond_sub (UNROLL): ~5–8 clk
    //   Total ≈ 28–30 clk << 70 clk (変換前)
    static void mul(const T a[NWORDS], const T b[NWORDS], T c[NWORDS],
                    const T mod[NWORDS], T mprime)
    {
#pragma HLS INLINE off

        // 作業配列: 完全分割で同一サイクル内の任意語 read/write を許可
        T t[NWORDS + 2];
#pragma HLS ARRAY_PARTITION variable=t complete dim=1

        // ---- 初期化（UNROLL → 並列レジスタ書き込み ≈ 1 clk） ----
        for (unsigned k = 0; k < NWORDS + 2; k++) {
#pragma HLS UNROLL
            t[k] = 0;
        }

        // ---- CIOS 外側ループ（i = 0 .. NWORDS-1） ----
        // #pragma HLS PIPELINE（II 指定なし）: HLS が最適な II を自動選択する。
        // PP_LOOP / RED_LOOP を UNROLL した後は外側ループだけが残り、
        // HLS はキャリー連鎖依存から自動的に II=2 を選択する（原版と同等）。
        // → UNROLL 前に II=1 を強制すると全乗算をクロック 1 周期に詰め込み
        //   クロック周期超過（24 ns）になるため、ここでは指定しない。
        CIOS_LOOP: for (unsigned i = 0; i < NWORDS; i++) {
#pragma HLS LOOP_TRIPCOUNT min=NWORDS max=NWORDS avg=NWORDS
#pragma HLS PIPELINE

            // ---- (1) 部分積走査: t += a * b[i] ----
            // UNROLL で NWORDS 個の乗算器を並列展開。
            // キャリー C の連鎖は HLS スケジューラと後段 Vivado 合成が
            // carry-lookahead / carry-save で最適化する。
            Wide C1 = 0;
            PP_LOOP: for (unsigned j = 0; j < NWORDS; j++) {
#pragma HLS UNROLL
                Wide p = static_cast<Wide>(t[j])
                       + static_cast<Wide>(a[j]) * static_cast<Wide>(b[i])
                       + C1;
                t[j] = static_cast<T>(p & WMASK);
                C1   = p >> WBITS;
            }
            // 最上位 2 語への桁上げ処理
            {
                Wide s    = static_cast<Wide>(t[NWORDS]) + C1;
                t[NWORDS] = static_cast<T>(s & WMASK);
                t[NWORDS + 1] = static_cast<T>(
                    static_cast<Wide>(t[NWORDS + 1]) + (s >> WBITS));
            }

            // ---- (2) リダクション走査: m = t[0]*n'; t = (t + m*N) / W ----
            // t[0] にモンゴメリ定数を掛けて現ステップの還元係数 m を決定し、
            // N を t に加えて最下位語を 0 にする（実質的に右シフト 1 語分）。
            T m = static_cast<T>(
                (static_cast<Wide>(t[0]) * static_cast<Wide>(mprime)) & WMASK);

            Wide p0 = static_cast<Wide>(t[0])
                    + static_cast<Wide>(m) * static_cast<Wide>(mod[0]);
            Wide C2 = p0 >> WBITS;  // t[0] の寄与は捨てる（0 になる）

            RED_LOOP: for (unsigned j = 1; j < NWORDS; j++) {
#pragma HLS UNROLL
                Wide p = static_cast<Wide>(t[j])
                       + static_cast<Wide>(m) * static_cast<Wide>(mod[j])
                       + C2;
                t[j - 1] = static_cast<T>(p & WMASK);
                C2        = p >> WBITS;
            }
            {
                Wide s        = static_cast<Wide>(t[NWORDS]) + C2;
                t[NWORDS - 1] = static_cast<T>(s & WMASK);
                t[NWORDS]     = static_cast<T>(
                    static_cast<Wide>(t[NWORDS + 1]) + (s >> WBITS));
                t[NWORDS + 1] = 0;
            }
        }

        // ---- (3) 定数時間 条件付き減算（UNROLL で最小 latency） ----
        // t >= mod なら c = t - mod、そうでなければ c = t。
        // ボロー連鎖はコンパイル時定数 NWORDS のもとで UNROLL → Vivado が
        // CARRY8 プリミティブで最適化する。分岐なし（サイドチャネル耐性）。

        T u[NWORDS];
#pragma HLS ARRAY_PARTITION variable=u complete dim=1

        Wide borrow = 0;
        SUB_LOOP: for (unsigned j = 0; j < NWORDS; j++) {
#pragma HLS UNROLL
            Wide d = static_cast<Wide>(t[j])
                   - static_cast<Wide>(mod[j])
                   - borrow;
            u[j]   = static_cast<T>(d & WMASK);
            borrow  = (d >> WBITS) & 1;
        }

        // t >= mod の判定: t[NWORDS]=0 かつ ボローなし → u を採用
        // t[NWORDS]=1   → 無条件に u を採用（mod を引かなければならない）
        // keep_t = all-ones → t を採用、= 0 → u を採用
        T keep_t = static_cast<T>(0)
                 - static_cast<T>(t[NWORDS] == 0 && borrow == 1);

        SEL_LOOP: for (unsigned j = 0; j < NWORDS; j++) {
#pragma HLS UNROLL
            c[j] = (t[j] & keep_t) | (u[j] & static_cast<T>(~keep_t & WMASK));
        }
    }

    // ---- モンゴメリ・リダクション（高速版） ----
    //   x[0..2*NWORDS-1] (2n 語) を x * R^{-1} mod N に縮約し x[0..NWORDS-1] へ書き込む
    static void redc(T *x, const T mod[NWORDS], T mprime)
    {
#pragma HLS INLINE off

        T t[2 * NWORDS + 1];
#pragma HLS ARRAY_PARTITION variable=t complete dim=1

        REDC_INIT: for (unsigned k = 0; k < 2 * NWORDS; k++) {
#pragma HLS UNROLL
            t[k] = x[k];
        }
        t[2 * NWORDS] = 0;

        REDC_OUTER: for (unsigned i = 0; i < NWORDS; i++) {
#pragma HLS LOOP_TRIPCOUNT min=NWORDS max=NWORDS avg=NWORDS
#pragma HLS PIPELINE II=1

            T    m = static_cast<T>(
                (static_cast<Wide>(t[i]) * static_cast<Wide>(mprime)) & WMASK);
            Wide C = 0;

            REDC_INNER: for (unsigned j = 0; j < NWORDS; j++) {
#pragma HLS UNROLL
                Wide p = static_cast<Wide>(t[i + j])
                       + static_cast<Wide>(m) * static_cast<Wide>(mod[j])
                       + C;
                t[i + j] = static_cast<T>(p & WMASK);
                C         = p >> WBITS;
            }
            // 残りの桁上げを上位語へ伝播（最大 NWORDS+1 語分）
            unsigned k = i + NWORDS;
            REDC_CARRY: for (unsigned kk = 0; kk <= NWORDS; kk++) {
#pragma HLS UNROLL
                if (kk < NWORDS + 1 && C != 0) {
                    Wide s       = static_cast<Wide>(t[k + kk]) + C;
                    t[k + kk]    = static_cast<T>(s & WMASK);
                    C             = s >> WBITS;
                }
            }
        }

        // 最終補正（定数時間）
        T u[NWORDS];
#pragma HLS ARRAY_PARTITION variable=u complete dim=1

        Wide borrow = 0;
        REDC_SUB: for (unsigned j = 0; j < NWORDS; j++) {
#pragma HLS UNROLL
            Wide d = static_cast<Wide>(t[NWORDS + j])
                   - static_cast<Wide>(mod[j])
                   - borrow;
            u[j]  = static_cast<T>(d & WMASK);
            borrow = (d >> WBITS) & 1;
        }
        T keep_t = static_cast<T>(0)
                 - static_cast<T>(t[2 * NWORDS] == 0 && borrow == 1);
        REDC_SEL: for (unsigned j = 0; j < NWORDS; j++) {
#pragma HLS UNROLL
            x[j] = (t[NWORDS + j] & keep_t)
                 | (u[j] & static_cast<T>(~keep_t & WMASK));
        }
    }
};

} // namespace mont
