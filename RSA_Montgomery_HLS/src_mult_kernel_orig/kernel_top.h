#ifndef __KERNEL_TOP_H__
#define __KERNEL_TOP_H__
#include "mont_word.h"

// 変換前(素のCIOS、32bit x 16語、UNROLL/FIOS-CSA等の最適化なし)の
// montMult_words単体を1回呼ぶだけの最小カーネル。最適化版
// (FIOS-CSA-Flat, 64bit)との単体比較基準。
extern "C" void kernel_top(
    const uint32_t x[MW_NWORDS],
    const uint32_t y[MW_NWORDS],
    const uint32_t m[MW_NWORDS],
    uint32_t mprime,
    uint32_t out[MW_NWORDS]);

#endif
