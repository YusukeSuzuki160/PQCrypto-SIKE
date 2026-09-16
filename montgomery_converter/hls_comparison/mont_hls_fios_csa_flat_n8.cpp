// mont_hls_fios_csa_flat_n8.cpp — FIOS-CSA-Flat(N=8, p503実サイズ)HLSトップ
// リソース重視オプション: FIOS-CSA-Trueより約1/3のLUTで、素朴な変換より
// 確実に高速。かつ完全展開設計のため元々レイテンシは決定的。

#include <cstdint>
#include "../include/mont_ops_fios_csa_flat.hpp"

typedef uint64_t digit_t;
static constexpr unsigned NWORDS = 8;

using namespace mont_fios_csa_flat;

extern "C" void mont_mul_fios_csa_flat_n8(const digit_t a[NWORDS], const digit_t b[NWORDS],
                                    digit_t c[NWORDS], const digit_t mod[NWORDS],
                                    digit_t mprime)
{
#pragma HLS INLINE off
    MontOps_FIOS_CSA_Flat<digit_t, NWORDS>::mul(a, b, c, mod, mprime);
}
