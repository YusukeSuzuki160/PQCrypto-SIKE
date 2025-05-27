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

extern "C"
{

    void sikep503_kem_enc_hw(
        unsigned char *ct,
        const unsigned char *pk,
        unsigned char *ss)
    {
        // Debug: Print input public key
        printf("Input Public Key (first 16 bytes): ");
        for (int i = 0; i < 16; i++)
        {
            printf("%02x ", pk[i]);
        }
        printf("\n");

        // Call the encryption function
        crypto_kem_enc(ct, ss, pk);

        // Debug: Print output ciphertext
        printf("Output Ciphertext (first 16 bytes): ");
        for (int i = 0; i < 16; i++)
        {
            printf("%02x ", ct[i]);
        }
        printf("\n");

        // Debug: Print output shared secret
        printf("Output Shared Secret (first 16 bytes): ");
        for (int i = 0; i < 16; i++)
        {
            printf("%02x ", ss[i]);
        }
        printf("\n");
    }
}
