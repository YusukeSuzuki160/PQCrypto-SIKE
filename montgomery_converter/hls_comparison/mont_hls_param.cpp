// mont_hls_param.cpp
//   パラメータ設定可能な HLS 合成用トップ関数。
//   mont_params.hpp の MONT_* マクロが全動作を制御する。
//   直接編集せずに -D フラグ（TCL の cflags）か mont_params.hpp を変更すること。

#include "mont_ops_param.hpp"

// トップ関数
// 型・配列サイズは mont_params.hpp の MONT_WORD_BITS / MONT_NWORDS に従う
extern "C" void mont_mul_top_param(
    const mont_digit_t a[MONT_NWORDS],
    const mont_digit_t b[MONT_NWORDS],
    mont_digit_t       c[MONT_NWORDS],
    const mont_digit_t mod[MONT_NWORDS],
    mont_digit_t       mprime)
{
#pragma HLS INLINE off
    mont::MontOps_Param::mul(a, b, c, mod, mprime);
}
