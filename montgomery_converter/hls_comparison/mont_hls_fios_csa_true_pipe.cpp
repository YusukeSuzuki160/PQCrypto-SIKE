// mont_hls_fios_csa_true_pipe.cpp — 真の Carry-Save 版 + トップ関数レベル PIPELINE
//
// SIKE の同種写像計算では Montgomery 乗算が数千回連鎖する。単発レイテンシ
// だけでなく「連続呼び出し時のスループット (II)」も RTL 設計との差を
// 生む重要な軸である。DATAFLOW (粗粒度分割) は過去に ping-pong バッファ
// オーバーヘッドで大幅悪化したが、ここでは分割せずトップ関数そのものに
// PIPELINE を指定し、HLS が組み合わせ回路をどこまでリタイミングして
// II を詰められるか検証する。

#include <cstdint>
#include "../include/mont_ops_fios_csa_true_inl.hpp"

typedef uint64_t digit_t;
static constexpr unsigned NWORDS = 4;

using namespace mont_fios_csa_true_inl;

extern "C" void mont_mul_fios_csa_true_pipe(const digit_t a[NWORDS], const digit_t b[NWORDS],
                                       digit_t c[NWORDS], const digit_t mod[NWORDS],
                                       digit_t mprime)
{
#pragma HLS PIPELINE II=1
    MontOps_FIOS_CSA_True_Inl<digit_t, NWORDS>::mul(a, b, c, mod, mprime);
}
