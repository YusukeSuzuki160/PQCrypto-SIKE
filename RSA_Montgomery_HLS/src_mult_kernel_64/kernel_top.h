#ifndef __KERNEL_TOP_H__
#define __KERNEL_TOP_H__
#include "mont_word.h"

// 64bit語版: montMult_words単体を1回呼ぶだけの最小カーネル。
// 32bit語版(src_mult_kernel_only)とのサイクル数/リソース比較用。
extern "C" void kernel_top(
    const uint64_t x[MW_NWORDS],
    const uint64_t y[MW_NWORDS],
    const uint64_t m[MW_NWORDS],
    uint64_t mprime,
    uint64_t out[MW_NWORDS]);

#endif
