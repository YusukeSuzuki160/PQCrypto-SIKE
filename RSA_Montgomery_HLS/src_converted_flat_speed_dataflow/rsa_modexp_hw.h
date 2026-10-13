#ifndef __RSA_MODEXP_HW_H__
#define __RSA_MODEXP_HW_H__
// rsa_modexp_hw.h
// Vitis HLS トップレベル関数。512bit RSAの秘密鍵べき乗演算
// (P = C^d mod M、復号相当)を実行する。
//
// レイテンシ決定化について: 指数dの実ビット数(dBits)を実行時ループ境界
// として使うと、SIKEで経験した「実行時値でループ本体が変わる」問題を
// 再現してしまう。RSAの指数配列dは実ビット数を超える上位ビットが
// 定義上すべて0であるため、ループを常に固定回数(MW_NWORDS*32=512回)
// 実行しても、実ビット数ぶんだけ実行した場合と数学的に同じ結果になる
// (0ビットの反復ではzが更新されず、pの二乗だけが余分に進むが無関係)。
// そのためdBitsパラメータ自体をハードウェアコアから排除できる。
#include "mont_word.h"

extern "C" void rsa_modexp_hw(
    const uint32_t c[MW_NWORDS],
    const uint32_t d[MW_NWORDS],
    const uint32_t m[MW_NWORDS],
    uint32_t mprime,
    const uint32_t r2m[MW_NWORDS],
    uint32_t p[MW_NWORDS]);

#endif
