#ifndef __RSA_MODEXP_HW_H__
#define __RSA_MODEXP_HW_H__
// rsa_modexp_hw.h (64bit語版)
// 案1: montMult_words単体カーネルでの実測(サイクル数-35%、LUT-53%)を
// 全体トップへ適用。構造はsrc_converted_flat_speed_w5/と同一
// (WBITS=5窓法+呼び出し統合)、語幅のみ32bit(N=16)→64bit(N=8)。
#include "mont_word.h"

extern "C" void rsa_modexp_hw(
    const uint64_t c[MW_NWORDS],
    const uint64_t d[MW_NWORDS],
    const uint64_t m[MW_NWORDS],
    uint64_t mprime,
    const uint64_t r2m[MW_NWORDS],
    uint64_t p[MW_NWORDS]);

#endif
