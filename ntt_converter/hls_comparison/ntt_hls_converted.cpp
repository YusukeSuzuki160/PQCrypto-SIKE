// ntt_hls_converted.cpp
// HLS合成用: ntt_auto_rewriter で変換後の NTT 実装
//  - ntt::NTTOps<int32_t, 8>::forward_ntt を使用
//  - #pragma HLS PIPELINE II=1 によるバタフライパイプライン化

#include <ap_int.h>
#include <climits>
#include <cstdint>
#include <type_traits>
#include "ntt_ops_hls.hpp"

// ===================== HLS トップ関数（変換後） =====================
// 固定サイズ N=256 の NTT
void ntt_forward_converted(int32_t a[256],
                            const int32_t roots[256],
                            int32_t mod)
{
#pragma HLS INTERFACE bram port=a
#pragma HLS INTERFACE bram port=roots
#pragma HLS INTERFACE s_axilite port=mod
#pragma HLS INTERFACE s_axilite port=return

    // Auto-converted by ntt_auto_rewriter
    // Original: CooleyTukey(CT,forward)
    constexpr unsigned MAX_LOG2N = 8;
    ntt::NTTOps<MAX_LOG2N>::forward_ntt(a, 256, roots, mod);
}
