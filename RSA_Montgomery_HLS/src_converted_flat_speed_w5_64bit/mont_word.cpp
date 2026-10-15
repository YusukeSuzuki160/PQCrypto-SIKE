#include <climits>
#include <type_traits>
#include "mont_ops_fios_csa_flat.hpp"
// mont_word.cpp (64bit語版)。詳細はmont_word.hのコメント参照。
#include "mont_word.h"

uint64_t mont_word_compute_mprime(uint64_t m0)
{
    // Newton法: inv <- inv*(2 - m0*inv) を6回繰り返すと正しいビット数が
    // 1→2→4→8→16→32→64と倍加し、64bit全体でinv = m0^{-1} mod 2^64に
    // 収束する(m0は奇数が前提)。
    uint64_t inv = 1;
    for (int k = 0; k < 6; k++)
    {
        inv = inv * (2u - m0 * inv);
    }
    return (uint64_t)(0u - inv); // mprime = -inv mod 2^64
}

void montMult_words(const uint64_t x[MW_NWORDS], const uint64_t y[MW_NWORDS],
                     const uint64_t m[MW_NWORDS], uint64_t mprime,
                     uint64_t out[MW_NWORDS])
{
  #pragma HLS INLINE off
  constexpr unsigned MAX_NWORDS = 8;
  using Digit = std::remove_cv_t<std::remove_pointer_t<decltype(out)>>;
  mont_fios_csa_flat::MontOps_FIOS_CSA_Flat<Digit, MAX_NWORDS>::mul(
      x, y, out, m, mprime);
}
