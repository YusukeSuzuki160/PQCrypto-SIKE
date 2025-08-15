#include "types.hpp"
#include "../include/mpx_packed.hpp"

extern "C" void mp_mul_packed(const digit_t* a, const digit_t* b, digit_t* c, const unsigned int nwords) {
#pragma HLS INTERFACE m_axi     port=a      offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi     port=b      offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi     port=c      offset=slave bundle=gmem
#pragma HLS INTERFACE s_axilite port=a      bundle=control
#pragma HLS INTERFACE s_axilite port=b      bundle=control
#pragma HLS INTERFACE s_axilite port=c      bundle=control
#pragma HLS INTERFACE s_axilite port=nwords bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

  if (nwords > MAX_NWORDS) return;
  mpx::PackedOps<digit_t, MAX_NWORDS, LSW_FIRST>::mul(a, b, c, nwords);
}
