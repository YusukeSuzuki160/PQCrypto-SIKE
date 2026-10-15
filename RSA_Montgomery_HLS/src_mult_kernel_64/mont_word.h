#ifndef __MONT_WORD_H__
#define __MONT_WORD_H__
// mont_word.h (64bit語版)
// 案1: 語幅を32bit→64bitへ拡大(NWORDS 16→8)した場合の効果を検証する。
// CIOSの二重ループはO(N^2)なので、Nを半分にすると乗算1回あたりの
// 内部ステップ数が理論上1/4に減る。mont_ops系コアはwide_type<T>で
// T=uint64_t時にWide=__uint128_tを自動導出するため、Digit型を
// 差し替えるだけで対応できる。
//
// 対象鍵長: 512bit。64bit語 x 8語。
#include <stdint.h>

#define MW_NWORDS 8u

#ifdef __cplusplus
extern "C" {
#endif

// mprime = -m[0]^{-1} mod 2^64 をNewton法で計算する(6回反復で
// 1→2→4→8→16→32→64bitと倍加)。mは奇数が前提。
uint64_t mont_word_compute_mprime(uint64_t m0);

// out = x*y*R^(-1) mod m, R = 2^(64*MW_NWORDS)
void montMult_words(const uint64_t x[MW_NWORDS], const uint64_t y[MW_NWORDS],
                     const uint64_t m[MW_NWORDS], uint64_t mprime,
                     uint64_t out[MW_NWORDS]);

#ifdef __cplusplus
}
#endif

#endif
