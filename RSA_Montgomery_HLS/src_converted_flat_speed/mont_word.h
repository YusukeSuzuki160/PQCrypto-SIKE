#ifndef __MONT_WORD_H__
#define __MONT_WORD_H__
// mont_word.h
// 語(word)単位のCIOS(Coarsely Integrated Operand Scanning)方式
// Montgomery乗算。EmbeddedMontgomeryRSA(tsalomon)のmontMult()は
// ビット単位のシフト&加算アルゴリズムであり、SIKEで使ってきた
// CIOS/FIOS系のコア(montgomery_auto_rewriterが検出するパターン)とは
// 構造が異なる。数学的に等価な語単位CIOS実装へ置き換えることで、
// 自動検出・自動置換の対象にする。
//
// 対象鍵長: 512bit (元リポジトリのTest 2相当)。32bit語 x 16語。
#include <stdint.h>

#define MW_NWORDS 16u

#ifdef __cplusplus
extern "C" {
#endif

// Montgomery定数 mprime = -m[0]^{-1} mod 2^32 をNewton法で計算する
// (ホスト側の前処理。合成対象コアには含まれない。SIKEのp503_mprime
// 相当)。mは奇数(RSA法は必ず奇数)であることが前提。
uint32_t mont_word_compute_mprime(uint32_t m0);

// out = x*y*R^(-1) mod m, R = 2^(32*MW_NWORDS)
// 全ての配列はLSW-first(array[0]が最下位語)、長さMW_NWORDS。
void montMult_words(const uint32_t x[MW_NWORDS], const uint32_t y[MW_NWORDS],
                     const uint32_t m[MW_NWORDS], uint32_t mprime,
                     uint32_t out[MW_NWORDS]);

#ifdef __cplusplus
}
#endif

#endif
