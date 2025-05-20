/*********************************************************************
 * Vitis HLS top-level wrapper for SIKEp503 (reference implementation)
 *
 * This file provides a hardware-synthesizable interface to the
 * C reference SIKE implementation by exposing the KEM encapsulation
 * function as an AXI‑4 slave peripheral with AXI‑MM ports for its
 * three main buffers (cipher‑text, public key, shared secret).
 *
 * Author: ChatGPT (refactor for HLS)
 *********************************************************************/

#include "api.h"
#include "P503_internal.h"

extern "C"
{
    int crypto_kem_enc(unsigned char *ct,
                       const unsigned char *pk,
                       unsigned char *ss);

    void sikep503_kem_enc_hw(
        unsigned char *ct,
        const unsigned char *pk,
        unsigned char *ss)
    {
#pragma HLS INTERFACE m_axi port = ct offset = slave bundle = gmem0
#pragma HLS INTERFACE m_axi port = pk offset = slave bundle = gmem1
#pragma HLS INTERFACE m_axi port = ss offset = slave bundle = gmem2
#pragma HLS INTERFACE s_axilite port = ct bundle = control
#pragma HLS INTERFACE s_axilite port = pk bundle = control
#pragma HLS INTERFACE s_axilite port = ss bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control
#pragma HLS ARRAY_PARTITION variable = ct complete dim = 1
#pragma HLS ARRAY_PARTITION variable = pk complete dim = 1
#pragma HLS ARRAY_PARTITION variable = ss complete dim = 1

        crypto_kem_enc(ct, pk, ss);
    }
}
