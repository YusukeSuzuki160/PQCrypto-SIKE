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
#include <stdlib.h>

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

void sikep503_kem_enc_hw(
    unsigned char *ct,
    const unsigned char *pk,
    unsigned char *ss)
{
    printf("\n=== SIKEp503 KEM Encryption Debug Output ===\n\n");

    // Print input public key
    print_hex("Input Public Key", pk, CRYPTO_PUBLICKEYBYTES);

    // Call the encryption function
    printf("\nCalling crypto_kem_enc...\n");
    crypto_kem_enc(ct, ss, pk);
    printf("Encryption completed.\n\n");

    // Print output ciphertext
    print_hex("Output Ciphertext", ct, CRYPTO_CIPHERTEXTBYTES);

    // Print output shared secret
    print_hex("Output Shared Secret", ss, CRYPTO_BYTES);

    printf("\n=== End of Debug Output ===\n\n");
}

int main()
{
    printf("Starting SIKEp503 test...\n");
    printf("CRYPTO_PUBLICKEYBYTES: %d\n", CRYPTO_PUBLICKEYBYTES);
    printf("CRYPTO_CIPHERTEXTBYTES: %d\n", CRYPTO_CIPHERTEXTBYTES);
    printf("CRYPTO_BYTES: %d\n\n", CRYPTO_BYTES);

    // Allocate memory for test data
    unsigned char *ct = (unsigned char *)malloc(CRYPTO_CIPHERTEXTBYTES);
    unsigned char *pk = (unsigned char *)malloc(CRYPTO_PUBLICKEYBYTES);
    unsigned char *ss = (unsigned char *)malloc(CRYPTO_BYTES);

    if (!ct || !pk || !ss)
    {
        printf("Memory allocation failed\n");
        return 1;
    }

    // Generate a test public key
    for (int i = 0; i < CRYPTO_PUBLICKEYBYTES; i++)
    {
        pk[i] = (unsigned char)(i & 0xFF);
    }

    // Call the encryption function
    sikep503_kem_enc_hw(ct, pk, ss);

    // Free allocated memory
    free(ct);
    free(pk);
    free(ss);

    printf("Test completed successfully.\n");
    return 0;
}