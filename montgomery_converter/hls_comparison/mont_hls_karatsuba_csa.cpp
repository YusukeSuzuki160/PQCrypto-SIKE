#include <cstdint>
#include "../include/mont_ops_karatsuba_csa.hpp"

static constexpr unsigned NWORDS = 4;
using digit_t = uint64_t;
using KarCsa = mont_karatsuba_csa::MontOps_Karatsuba_CSA<digit_t, NWORDS>;

extern "C" void mont_mul_karatsuba_csa(
    const digit_t a[NWORDS], const digit_t b[NWORDS],
    digit_t c[NWORDS], const digit_t mod[NWORDS], digit_t mprime)
{
#pragma HLS INTERFACE m_axi port=a   bundle=gmem0 depth=NWORDS
#pragma HLS INTERFACE m_axi port=b   bundle=gmem1 depth=NWORDS
#pragma HLS INTERFACE m_axi port=c   bundle=gmem2 depth=NWORDS
#pragma HLS INTERFACE m_axi port=mod bundle=gmem3 depth=NWORDS
#pragma HLS INTERFACE s_axilite port=mprime
#pragma HLS INTERFACE s_axilite port=return
    KarCsa::mul(a, b, c, mod, mprime);
}
