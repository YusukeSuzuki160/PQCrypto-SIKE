#pragma once
// mont_ops_param.hpp
// mont_params.hpp のパラメータに基づく CIOS モンゴメリ乗算 HLS 実装
//
// 全 pragma をマクロ _Pragma で切り替え:
//   OUTER_PIPELINE_PRAGMA  : 外側 CIOS ループのパイプライン指定
//   INNER_LOOP_PRAGMA      : 内側 j-ループの展開/パイプライン指定
//   INIT_LOOP_PRAGMA       : 初期化ループの展開指定
//   CONDSUB_LOOP_PRAGMA    : cond_sub ループの展開指定
//
// このファイルを直接編集する必要はない。mont_params.hpp か -D フラグを変更すること。

#include "mont_params.hpp"

// ============================================================
// pragma マクロ定義
// ============================================================

// ---- 外側 CIOS ループ ----
// INNER_UNROLL==0 の場合は外側をパイプライン化しない（内側のみ pipeline）
#if MONT_INNER_UNROLL == 0
  #define OUTER_PIPELINE_PRAGMA   /* sequential: no outer pipeline */
#elif MONT_TARGET_II == 0
  #define OUTER_PIPELINE_PRAGMA   _Pragma("HLS PIPELINE")
#elif MONT_TARGET_II == 1
  #define OUTER_PIPELINE_PRAGMA   _Pragma("HLS PIPELINE II=1")
#elif MONT_TARGET_II == 2
  #define OUTER_PIPELINE_PRAGMA   _Pragma("HLS PIPELINE II=2")
#elif MONT_TARGET_II == 4
  #define OUTER_PIPELINE_PRAGMA   _Pragma("HLS PIPELINE II=4")
#elif MONT_TARGET_II == 8
  #define OUTER_PIPELINE_PRAGMA   _Pragma("HLS PIPELINE II=8")
#else
  #define OUTER_PIPELINE_PRAGMA   _Pragma("HLS PIPELINE")
#endif

// ---- 内側 j-ループ (PP_LOOP / RED_LOOP) ----
// INNER_UNROLL==0 → 内側 PIPELINE（外側はパイプラインなし）
// INNER_UNROLL>=NWORDS → 完全 UNROLL（外側 PIPELINE と組み合わせ最小 latency）
// 1..NWORDS-1 → 部分展開（中間トレードオフ）
#if   MONT_INNER_UNROLL == 0
  #define INNER_LOOP_PRAGMA   _Pragma("HLS PIPELINE II=1")
#elif MONT_INNER_UNROLL >= MONT_NWORDS
  #define INNER_LOOP_PRAGMA   _Pragma("HLS UNROLL")
#elif MONT_INNER_UNROLL == 1
  #define INNER_LOOP_PRAGMA   _Pragma("HLS UNROLL factor=1")
#elif MONT_INNER_UNROLL == 2
  #define INNER_LOOP_PRAGMA   _Pragma("HLS UNROLL factor=2")
#elif MONT_INNER_UNROLL == 4
  #define INNER_LOOP_PRAGMA   _Pragma("HLS UNROLL factor=4")
#elif MONT_INNER_UNROLL == 8
  #define INNER_LOOP_PRAGMA   _Pragma("HLS UNROLL factor=8")
#elif MONT_INNER_UNROLL == 16
  #define INNER_LOOP_PRAGMA   _Pragma("HLS UNROLL factor=16")
#else
  // その他の値: pragma なし（HLS 自動判断）
  #define INNER_LOOP_PRAGMA   /* no pragma */
#endif

// ---- 初期化ループ ----
#if MONT_INIT_UNROLL
  #define INIT_LOOP_PRAGMA    _Pragma("HLS UNROLL")
#else
  #define INIT_LOOP_PRAGMA    _Pragma("HLS PIPELINE II=1")
#endif

// ---- cond_sub ループ ----
#if MONT_CONDSUB_UNROLL
  #define CONDSUB_LOOP_PRAGMA _Pragma("HLS UNROLL")
#else
  #define CONDSUB_LOOP_PRAGMA _Pragma("HLS PIPELINE II=1")
#endif

// ============================================================
// MontOps_Param : MONT_* マクロに基づく CIOS 乗算実装
// テンプレートパラメータなし（全て #define で固定）
// ============================================================
namespace mont {

struct MontOps_Param {
    using T    = mont_digit_t;
    using Wide = mont_wide_t;

    static constexpr unsigned NWORDS = MONT_NWORDS;
    static constexpr unsigned WBITS  = MONT_WBITS;
    static constexpr T        WMASK  = MONT_WMASK;

    // c = a * b * R^{-1} mod N,  R = W^NWORDS
    // 事前条件: a,b < N,  mod[0] 奇数,  mprime = -N^{-1} mod W
    static void mul(const T a[NWORDS], const T b[NWORDS], T c[NWORDS],
                    const T mod[NWORDS], T mprime)
    {
#pragma HLS INLINE off

        T t[NWORDS + 2];
#pragma HLS ARRAY_PARTITION variable=t complete dim=1

        // ---- 初期化 ----
        INIT_LOOP: for (unsigned k = 0; k < NWORDS + 2; k++) {
            INIT_LOOP_PRAGMA
            t[k] = T(0);
        }

        // ---- CIOS 外側ループ ----
        CIOS_LOOP: for (unsigned i = 0; i < NWORDS; i++) {
#pragma HLS LOOP_TRIPCOUNT min=MONT_NWORDS max=MONT_NWORDS avg=MONT_NWORDS
            OUTER_PIPELINE_PRAGMA

            // (1) 部分積走査: t += a * b[i]
            Wide C1 = Wide(0);
            PP_LOOP: for (unsigned j = 0; j < NWORDS; j++) {
                INNER_LOOP_PRAGMA
                Wide p = Wide(t[j]) + Wide(a[j]) * Wide(b[i]) + C1;
                t[j]   = T(p & WMASK);
                C1     = p >> WBITS;
            }
            {
                Wide s      = Wide(t[NWORDS]) + C1;
                t[NWORDS]   = T(s & WMASK);
                t[NWORDS+1] = T(Wide(t[NWORDS+1]) + (s >> WBITS));
            }

            // (2) リダクション走査: m = t[0]*n'; t = (t + m*N) >> W
            T    m  = T((Wide(t[0]) * Wide(mprime)) & WMASK);
            Wide p0 = Wide(t[0]) + Wide(m) * Wide(mod[0]);
            Wide C2 = p0 >> WBITS;

            RED_LOOP: for (unsigned j = 1; j < NWORDS; j++) {
                INNER_LOOP_PRAGMA
                Wide p  = Wide(t[j]) + Wide(m) * Wide(mod[j]) + C2;
                t[j-1]  = T(p & WMASK);
                C2      = p >> WBITS;
            }
            {
                Wide s      = Wide(t[NWORDS]) + C2;
                t[NWORDS-1] = T(s & WMASK);
                t[NWORDS]   = T(Wide(t[NWORDS+1]) + (s >> WBITS));
                t[NWORDS+1] = T(0);
            }
        }

        // ---- 定数時間 条件付き減算: c = (t >= N) ? t-N : t ----
        T u[NWORDS];
#pragma HLS ARRAY_PARTITION variable=u complete dim=1

        Wide borrow = Wide(0);
        SUB_LOOP: for (unsigned j = 0; j < NWORDS; j++) {
            CONDSUB_LOOP_PRAGMA
            Wide d  = Wide(t[j]) - Wide(mod[j]) - borrow;
            u[j]    = T(d & WMASK);
            borrow  = (d >> WBITS) & Wide(1);
        }
        T keep_t = T(0) - T(t[NWORDS] == T(0) && borrow == Wide(1));

        SEL_LOOP: for (unsigned j = 0; j < NWORDS; j++) {
            CONDSUB_LOOP_PRAGMA
            c[j] = (t[j] & keep_t) | (u[j] & T(~keep_t & WMASK));
        }
    }
};

} // namespace mont

// pragma マクロのスコープを限定（他ファイルへの漏出防止）
#undef OUTER_PIPELINE_PRAGMA
#undef INNER_LOOP_PRAGMA
#undef INIT_LOOP_PRAGMA
#undef CONDSUB_LOOP_PRAGMA
