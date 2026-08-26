#include <cstdint>
#include "../include/mont_ops_fios_csa_dataflow.hpp"

static constexpr unsigned NWORDS = 4;
using digit_t = uint64_t;
using FIOS_CSA_DF = mont_fios_csa_dataflow::MontOps_FIOS_CSA_Dataflow<digit_t, NWORDS>;

extern "C" void mont_mul_fios_csa_dataflow(
    const digit_t a[NWORDS], const digit_t b[NWORDS],
    digit_t c[NWORDS], const digit_t mod[NWORDS], digit_t mprime)
{
#pragma HLS INTERFACE m_axi port=a   bundle=gmem0 depth=NWORDS
#pragma HLS INTERFACE m_axi port=b   bundle=gmem1 depth=NWORDS
#pragma HLS INTERFACE m_axi port=c   bundle=gmem2 depth=NWORDS
#pragma HLS INTERFACE m_axi port=mod bundle=gmem3 depth=NWORDS
#pragma HLS INTERFACE s_axilite port=mprime
#pragma HLS INTERFACE s_axilite port=return
    FIOS_CSA_DF::mul(a, b, c, mod, mprime);
}
