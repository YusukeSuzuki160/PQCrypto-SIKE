#include <climits>
#include <type_traits>
#include "mont_ops_fios_csa_flat.hpp"
// mont_word.c
// 語単位CIOS方式のMontgomery乗算。詳細はmont_word.hのコメント参照。
#include "mont_word.h"

uint32_t mont_word_compute_mprime(uint32_t m0)
{
    // Newton法によるmod 2^32逆元の計算: inv <- inv*(2 - m0*inv) を
    // 5回繰り返すと正しいビット数が 1→2→4→8→16→32 と倍加し、
    // 32bit全体で inv = m0^{-1} mod 2^32 に収束する(m0は奇数が前提、
    // RSA法は常に奇数なので成立)。
    uint32_t inv = 1;
    for (int k = 0; k < 5; k++)
    {
        inv = inv * (2u - m0 * inv);
    }
    return (uint32_t)(0u - inv); // mprime = -inv mod 2^32
}

void montMult_words(const uint32_t x[MW_NWORDS], const uint32_t y[MW_NWORDS],
                     const uint32_t m[MW_NWORDS], uint32_t mprime,
                     uint32_t out[MW_NWORDS])
{
  #pragma HLS INLINE off
  // Auto-converted by montgomery_auto_rewriter (mont::MontOps → FIOS-CSA-True)
  // を、LUT削減のため手動でFIOS-CSA-Flatへ差し替え(SIKEのsrc_montcsa_flat
  // と同じ手法: mont::MontOps<>ディスパッチャを経由せず直接呼び出す)。
  constexpr unsigned MAX_NWORDS = 16;
  using Digit = std::remove_cv_t<std::remove_pointer_t<decltype(out)>>;
  mont_fios_csa_flat::MontOps_FIOS_CSA_Flat<Digit, MAX_NWORDS>::mul(
      x, y, out, m, mprime);
}

