// mont_hls_fios_csa_true_n8.cpp — FIOS-CSA-True(真のCarry-Save版)を
// SIKEp503の実サイズ N=8, W=64 で合成する「変換後」トップ。
// montgomery_auto_rewriterによる実際の置換先(mont::MontOps<>::mul経由)と
// 数式上同一のコア(MontOps_FIOS_CSA_True)を直接インスタンス化する。

#include <cstdint>
#include "../include/mont_ops_fios_csa_true.hpp"

typedef uint64_t digit_t;
static constexpr unsigned NWORDS = 8;

using namespace mont_fios_csa_true;

extern "C" void mont_mul_fios_csa_true_n8(const digit_t a[NWORDS], const digit_t b[NWORDS],
                                    digit_t c[NWORDS], const digit_t mod[NWORDS],
                                    digit_t mprime)
{
#pragma HLS INLINE off
    MontOps_FIOS_CSA_True<digit_t, NWORDS>::mul(a, b, c, mod, mprime);
}
