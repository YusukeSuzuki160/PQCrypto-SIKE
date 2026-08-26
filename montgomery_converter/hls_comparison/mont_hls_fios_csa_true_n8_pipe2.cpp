// mont_hls_fios_csa_true_n8_pipe2.cpp — FIOS-CSA-True (N=8, p503実サイズ)
// + トップ PIPELINE II=1 + 入力ARRAY_PARTITION
//
// N=4での知見(II=2止まりの原因はトップ関数の配列引数がap_memory実装される
// ことによるポート不足。ARRAY_PARTITIONで解消し真のII=1を達成)をN=8/p503
// 実サイズに適用し、SIKEが1回の鍵交換でモンゴメリ乗算を数万回呼ぶ実運用
// パターンに対する定常スループットを検証する。

#include <cstdint>
#include "../include/mont_ops_fios_csa_true_inl.hpp"

typedef uint64_t digit_t;
static constexpr unsigned NWORDS = 8;

using namespace mont_fios_csa_true_inl;

extern "C" void mont_mul_fios_csa_true_n8_pipe2(const digit_t a[NWORDS], const digit_t b[NWORDS],
                                       digit_t c[NWORDS], const digit_t mod[NWORDS],
                                       digit_t mprime)
{
#pragma HLS PIPELINE II=1
#pragma HLS ARRAY_PARTITION variable=a complete dim=1
#pragma HLS ARRAY_PARTITION variable=b complete dim=1
#pragma HLS ARRAY_PARTITION variable=c complete dim=1
#pragma HLS ARRAY_PARTITION variable=mod complete dim=1
    MontOps_FIOS_CSA_True_Inl<digit_t, NWORDS>::mul(a, b, c, mod, mprime);
}
