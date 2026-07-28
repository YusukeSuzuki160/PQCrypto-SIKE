#pragma once
// mont_params.hpp
// モンゴメリ乗算 HLS パラメータ設定
//
// 【パラメータの分類】
//   「計算対象パラメータ」: 変えると演算そのものが変わる
//       MONT_TOTAL_BITS  -- 総ビット幅（これが演算の定義）
//   「実装パラメータ」: 変えても同じ演算を計算する（HLS トレードオフ）
//       MONT_WORD_BITS   -- 語幅（→ NWORDS = TOTAL_BITS / WORD_BITS が自動決定）
//       MONT_INNER_UNROLL, MONT_CONDSUB_UNROLL, MONT_INIT_UNROLL, MONT_TARGET_II
//
// 【使い方】
//   A) このファイルを直接編集する
//   B) コンパイラフラグで上書き（TCL / run_sweep.py から使用）
//      例: -cflags "-DMONT_TOTAL_BITS=256 -DMONT_WORD_BITS=16"

#include <cstdint>

// ============================================================
// [1] 計算対象ビット幅（演算の定義）
//     これを変えると別の数学的演算になる。
//     取りうる値: WORD_BITS の倍数（例: 128, 256, 512）
// ============================================================
#ifndef MONT_TOTAL_BITS
#define MONT_TOTAL_BITS 256
#endif

// ============================================================
// [2] 語幅 [bits]（実装パラメータ）
//     総ビット幅が同じでも語幅を変えれば異なるハードウェア実装になる。
//     小さい → 1 語の乗算コストが小（DSP 少）・語数が多く latency 増
//     大きい → 1 語の乗算コストが大（DSP 多）・語数が少なく latency 減
//     取りうる値: 16, 32, 64
// ============================================================
#ifndef MONT_WORD_BITS
#define MONT_WORD_BITS 32
#endif

#if   MONT_WORD_BITS == 16
  typedef uint16_t mont_digit_t;
  typedef uint32_t mont_wide_t;
#elif MONT_WORD_BITS == 32
  typedef uint32_t mont_digit_t;
  typedef uint64_t mont_wide_t;
#elif MONT_WORD_BITS == 64
  typedef uint64_t mont_digit_t;
  typedef __uint128_t mont_wide_t;
#else
  #error "MONT_WORD_BITS must be 16, 32, or 64"
#endif

// ============================================================
// 語数（自動計算 = TOTAL_BITS / WORD_BITS）
//   合成ツールからは -DMONT_NWORDS=N で整数値を明示的に渡す
//   （LOOP_TRIPCOUNT pragma はマクロ式を受け付けないため）
// ============================================================
#ifndef MONT_NWORDS
#define MONT_NWORDS (MONT_TOTAL_BITS / MONT_WORD_BITS)
#endif

// ============================================================
// [3] CIOS 内側 j-ループの展開数（実装パラメータ）
//
//     0            : 内側を PIPELINE II=1 のみ（外側もパイプラインなし）
//                    → 最小 DSP / 最大 latency（折りたたみアーキテクチャ）
//     1 〜 NWORDS-1 : 部分展開（factor=MONT_INNER_UNROLL）
//                    → DSP と latency の中間トレードオフ
//     MONT_NWORDS  : 完全展開
//                    → 最大 DSP / 最小 latency [デフォルト]
//
//     ※ 部分展開値は NWORDS の約数が望ましい (2, 4, 8 など)
//     ※ MONT_INNER_UNROLL > MONT_NWORDS の場合は完全展開と同等
// ============================================================
#ifndef MONT_INNER_UNROLL
#define MONT_INNER_UNROLL MONT_NWORDS
#endif

// ============================================================
// [4] 条件付き減算 (cond_sub) ループの展開（実装パラメータ）
//     1 : UNROLL → latency 短縮（+LUT） [デフォルト]
//     0 : PIPELINE II=1 → LUT 削減
// ============================================================
#ifndef MONT_CONDSUB_UNROLL
#define MONT_CONDSUB_UNROLL 1
#endif

// ============================================================
// [5] 初期化ループの展開（実装パラメータ）
//     1 : UNROLL [デフォルト]
//     0 : PIPELINE II=1
//     ※ スイープ実測では INNER_UNROLL>=2 の場合、latency への影響は軽微
// ============================================================
#ifndef MONT_INIT_UNROLL
#define MONT_INIT_UNROLL 1
#endif

// ============================================================
// [6] CIOS 外側ループの目標 II（実装パラメータ）
//     0 : HLS 自動選択（キャリー連鎖依存から通常 II=2 を選択）[デフォルト]
//     2 : II=2 を明示（原版と同等、タイミング安定）
//     4 : II=4（保守的、DSP 削減効果あり、latency 増）
//     8 : II=8（さらに保守的）
//     ※ MONT_INNER_UNROLL == 0 の場合この設定は無視される
// ============================================================
#ifndef MONT_TARGET_II
#define MONT_TARGET_II 0
#endif

// ============================================================
// 内部定数（変更不要）
// ============================================================
#define MONT_WBITS  MONT_WORD_BITS
#define MONT_WMASK  ((mont_digit_t)(~(mont_digit_t)0))
