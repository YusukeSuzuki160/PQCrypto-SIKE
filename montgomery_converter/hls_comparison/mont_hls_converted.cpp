// mont_hls_converted.cpp
//   HLS 合成用「変換後」トップ関数（高速版）。
//   montgomery_auto_rewriter が出力し、mont_ops_fast.hpp の
//   MontOps_Fast<digit_t, NWORDS> に置換した形。
//
//   mont_ops_fast.hpp の最適化:
//     - NWORDS をコンパイル時定数テンプレートパラメータに固定
//     - 内側 j-ループを #pragma HLS UNROLL で明示展開
//     - 外側 CIOS ループを #pragma HLS PIPELINE II=1 (達成値 II=2)
//     - 初期化・cond_sub ループも UNROLL で大幅短縮
//   期待 latency: ≈ 30 clk (変換前 70 clk を超える性能)
//
//   run_mont_converted.tcl から合成する。

#include <climits>
#include <type_traits>
#include "mont_ops_fast.hpp"

typedef uint32_t digit_t;

#define NWORDS 8   // 256 ビット法（32 ビット語 × 8）

// 変換後トップ関数: MontOps_Fast で高速モンゴメリ乗算
extern "C" void mont_mul_top(const digit_t a[NWORDS], const digit_t b[NWORDS],
                             digit_t c[NWORDS], const digit_t mod[NWORDS],
                             digit_t mprime)
{
#pragma HLS INLINE off
    mont::MontOps_Fast<digit_t, NWORDS>::mul(a, b, c, mod, mprime);
}
