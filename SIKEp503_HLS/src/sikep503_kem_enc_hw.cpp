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
#include <stdio.h>

void print_hex(const char *label, const unsigned char *data, size_t len)
{
    printf("%s (%zu bytes):\n", label, len);
    for (size_t i = 0; i < len; i++)
    {
        printf("%02x ", data[i]);
        if ((i + 1) % 16 == 0)
            printf("\n");
    }
    printf("\n");
}

extern "C" void sikep503_kem_enc_hw(
    unsigned char *ct,
    const unsigned char *pk,
    unsigned char *ss)
{
    ;

#pragma HLS INTERFACE m_axi port = ct offset = slave bundle = gmem
#pragma HLS INTERFACE m_axi port = pk offset = slave bundle = gmem
#pragma HLS INTERFACE m_axi port = ss offset = slave bundle = gmem
#pragma HLS INTERFACE s_axilite port = ct bundle = control
#pragma HLS INTERFACE s_axilite port = pk bundle = control
#pragma HLS INTERFACE s_axilite port = ss bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control

    printf("Starting encryption\n");
    print_hex("Input Public Key", pk, CRYPTO_PUBLICKEYBYTES);

    crypto_kem_enc(ct, ss, pk);
    printf("Encryption complete\n");
    // Print output ciphertext
    print_hex("Output Ciphertext", ct, CRYPTO_CIPHERTEXTBYTES);

    // Print output shared secret
    print_hex("Output Shared Secret", ss, CRYPTO_BYTES);
    printf("Encryption complete\n");
}
