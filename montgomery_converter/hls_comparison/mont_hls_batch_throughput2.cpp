// mont_hls_batch_throughput2.cpp — バッチスループットテストベンチ改良版。
// dim=0 の全次元完全分割ではなく、各語配列(内側次元)のみ分割することで
// HLSがバッチ方向(外側ループ)にわたって回路を真に再利用(時分割)できる
// ようにする(前版はdim=0の完全分割でバッチ数だけ空間展開されLUTが
// デバイス容量を超過した)。

#include <cstdint>
#include "../include/mont_ops_fios_csa_true_inl.hpp"

typedef uint64_t digit_t;
static constexpr unsigned NWORDS = 8;
static constexpr unsigned BATCH = 8;

using namespace mont_fios_csa_true_inl;

extern "C" void mont_mul_batch2(const digit_t a[BATCH][NWORDS], const digit_t b[BATCH][NWORDS],
                                digit_t c[BATCH][NWORDS], const digit_t mod[NWORDS],
                                digit_t mprime)
{
#pragma HLS ARRAY_PARTITION variable=a complete dim=2
#pragma HLS ARRAY_PARTITION variable=b complete dim=2
#pragma HLS ARRAY_PARTITION variable=c complete dim=2
#pragma HLS ARRAY_PARTITION variable=mod complete dim=1
    BATCH_LOOP: for (unsigned k = 0; k < BATCH; k++) {
#pragma HLS PIPELINE II=1
        MontOps_FIOS_CSA_True_Inl<digit_t, NWORDS>::mul(a[k], b[k], c[k], mod, mprime);
    }
}
