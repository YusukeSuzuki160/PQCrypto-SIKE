// mont_hls_csa_square_n8_pipe2.cpp — 平方専用コア(N=8) + PIPELINE + ARRAY_PARTITION

#include <cstdint>
#include "../include/mont_ops_fios_csa_square_inl.hpp"

typedef uint64_t digit_t;
static constexpr unsigned NWORDS = 8;

using namespace mont_fios_csa_square_inl;

extern "C" void mont_sqr_csa_square_n8_pipe2(const digit_t a[NWORDS], digit_t c[NWORDS],
                                    const digit_t mod[NWORDS], digit_t mprime)
{
#pragma HLS PIPELINE II=1
#pragma HLS ARRAY_PARTITION variable=a complete dim=1
#pragma HLS ARRAY_PARTITION variable=c complete dim=1
#pragma HLS ARRAY_PARTITION variable=mod complete dim=1
    MontOps_FIOS_CSA_Square_Inl<digit_t, NWORDS>::mul(a, c, mod, mprime);
}
