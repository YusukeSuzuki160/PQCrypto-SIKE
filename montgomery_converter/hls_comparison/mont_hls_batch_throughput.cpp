// mont_hls_batch_throughput.cpp — 独立した複数回のモンゴメリ乗算をまとめて
// 処理するテストベンチ。理論スループット(II=1×クロック)が実際に
// バッチ処理でも得られるかを実測で検証する(N=8, K=8件バッチ)。

#include <cstdint>
#include "../include/mont_ops_fios_csa_true_inl.hpp"

typedef uint64_t digit_t;
static constexpr unsigned NWORDS = 8;
static constexpr unsigned BATCH = 8;

using namespace mont_fios_csa_true_inl;

extern "C" void mont_mul_batch(const digit_t a[BATCH][NWORDS], const digit_t b[BATCH][NWORDS],
                                digit_t c[BATCH][NWORDS], const digit_t mod[NWORDS],
                                digit_t mprime)
{
#pragma HLS ARRAY_PARTITION variable=a complete dim=0
#pragma HLS ARRAY_PARTITION variable=b complete dim=0
#pragma HLS ARRAY_PARTITION variable=c complete dim=0
#pragma HLS ARRAY_PARTITION variable=mod complete dim=1
    BATCH_LOOP: for (unsigned k = 0; k < BATCH; k++) {
#pragma HLS PIPELINE II=1
        MontOps_FIOS_CSA_True_Inl<digit_t, NWORDS>::mul(a[k], b[k], c[k], mod, mprime);
    }
}
