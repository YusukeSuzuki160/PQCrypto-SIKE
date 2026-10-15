#include "kernel_top.h"

extern "C" void kernel_top(
    const uint32_t x[MW_NWORDS],
    const uint32_t y[MW_NWORDS],
    const uint32_t m[MW_NWORDS],
    uint32_t mprime,
    uint32_t out[MW_NWORDS])
{
#pragma HLS INTERFACE m_axi port = x offset = slave bundle = gmem
#pragma HLS INTERFACE m_axi port = y offset = slave bundle = gmem
#pragma HLS INTERFACE m_axi port = m offset = slave bundle = gmem
#pragma HLS INTERFACE m_axi port = out offset = slave bundle = gmem
#pragma HLS INTERFACE s_axilite port = mprime bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control

    uint32_t xl[MW_NWORDS], yl[MW_NWORDS], ml[MW_NWORDS], ol[MW_NWORDS];
    for (unsigned k = 0; k < MW_NWORDS; k++) { xl[k] = x[k]; yl[k] = y[k]; ml[k] = m[k]; }
    montMult_words(xl, yl, ml, mprime, ol);
    for (unsigned k = 0; k < MW_NWORDS; k++) out[k] = ol[k];
}
