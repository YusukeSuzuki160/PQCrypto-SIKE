// mont_hls_fios_csa_flat_bindop.cpp — FIOS-CSA-Flat + DSP BIND_OP 明示指定版 HLS top

#include <cstdint>
#include "../include/mont_ops_fios_csa_flat_bindop.hpp"

typedef uint64_t digit_t;
static constexpr unsigned NWORDS = 4;

using namespace mont_fios_csa_flat_bindop;

extern "C" void mont_mul_fios_csa_flat_bindop(const digit_t a[NWORDS], const digit_t b[NWORDS],
                                       digit_t c[NWORDS], const digit_t mod[NWORDS],
                                       digit_t mprime)
{
#pragma HLS INLINE off
    MontOps_FIOS_CSA_Flat_BindOp<digit_t, NWORDS>::mul(a, b, c, mod, mprime);
}
