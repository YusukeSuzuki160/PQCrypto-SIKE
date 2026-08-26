// mont_hls_fios_csa_true_pipe2.cpp — 真の Carry-Save 版 + トップ PIPELINE
// + 入力配列(a,b,mod)を ARRAY_PARTITION complete でレジスタ化
//
// HLS ログで判明した II=2 の原因: トップ関数の配列引数 a[],b[],mod[] は
// デフォルトで ap_memory (BRAM相当, ポート数制限あり) として実装される。
// PPPM ループが完全展開されII=1で動かそうとすると、1サイクルで
// a[] の全要素を同時読み出す必要があるが、メモリのポート数(通常2)を
// 超えるため HLS が自動的に II=2 へ後退していた
// (WARNING 200-885: "limited memory ports... partitioning the array 'a'")。
// 本版は a,b,mod を ARRAY_PARTITION complete し、各要素を独立ポート化する。

#include <cstdint>
#include "../include/mont_ops_fios_csa_true_inl.hpp"

typedef uint64_t digit_t;
static constexpr unsigned NWORDS = 4;

using namespace mont_fios_csa_true_inl;

extern "C" void mont_mul_fios_csa_true_pipe2(const digit_t a[NWORDS], const digit_t b[NWORDS],
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
