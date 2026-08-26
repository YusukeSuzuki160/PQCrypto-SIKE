// mont_hls_fios_csa_flat_pipe.cpp — 既存最良 (FIOS-CSA-Flat) + トップ PIPELINE II=1
// true-CSA 版とのスループット比較のための対照実験。

#include <cstdint>
#include "../include/mont_ops_fios_csa_flat_inl.hpp"

typedef uint64_t digit_t;
static constexpr unsigned NWORDS = 4;

using namespace mont_fios_csa_flat_inl;

extern "C" void mont_mul_fios_csa_flat_pipe(const digit_t a[NWORDS], const digit_t b[NWORDS],
                                       digit_t c[NWORDS], const digit_t mod[NWORDS],
                                       digit_t mprime)
{
#pragma HLS PIPELINE II=1
    MontOps_FIOS_CSA_Flat_Inl<digit_t, NWORDS>::mul(a, b, c, mod, mprime);
}
