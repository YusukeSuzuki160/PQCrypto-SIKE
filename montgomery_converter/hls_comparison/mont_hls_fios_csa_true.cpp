// mont_hls_fios_csa_true.cpp — 真の Carry-Save (冗長表現) 版 HLS top
// N 反復にわたり t[] を(S,Cy)の冗長表現のまま保持し、最終正規化を1回に集約。

#include <cstdint>
#include "../include/mont_ops_fios_csa_true.hpp"

typedef uint64_t digit_t;
static constexpr unsigned NWORDS = 4;

using namespace mont_fios_csa_true;

extern "C" void mont_mul_fios_csa_true(const digit_t a[NWORDS], const digit_t b[NWORDS],
                                       digit_t c[NWORDS], const digit_t mod[NWORDS],
                                       digit_t mprime)
{
#pragma HLS INLINE off
    MontOps_FIOS_CSA_True<digit_t, NWORDS>::mul(a, b, c, mod, mprime);
}
