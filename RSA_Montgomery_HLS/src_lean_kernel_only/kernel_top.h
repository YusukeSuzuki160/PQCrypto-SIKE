#ifndef __KERNEL_TOP_H__
#define __KERNEL_TOP_H__
#include "mont_word.h"

// 案A(手法検証用): RSAトップ全体ではなく、montMult_words単体を
// 1回呼ぶだけの最小カーネル。実Vivado P&R(WebPACK対象デバイス)へ
// 通せるサイズに絞り、「Estimated Fmax」が実配置配線後のタイミングと
// どう関係するかを検証する目的。
extern "C" void kernel_top(
    const uint32_t x[MW_NWORDS],
    const uint32_t y[MW_NWORDS],
    const uint32_t m[MW_NWORDS],
    uint32_t mprime,
    uint32_t out[MW_NWORDS]);

#endif
