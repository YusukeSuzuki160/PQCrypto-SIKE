/*********************************************************************
 * Vitis HLS top-level wrapper for SIKEp503 (LUT使用量削減最適化版)
 *
 * This file provides a hardware-synthesizable interface to the
 * C reference SIKE implementation by exposing the KEM encapsulation
 * function as an AXI‑4 slave peripheral with AXI‑MM ports for its
 * three main buffers (cipher‑text, public key, shared secret).
 *
 * Author: ChatGPT (LUT使用量削減最適化版)
 *********************************************************************/

#include "api.h"
#include "P503_internal.h"
#include "generic/fp_generic_lut_optimized.cpp"
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

extern "C" void sikep503_kem_enc_hw_lut_optimized(
    unsigned char *ct,
    const unsigned char *pk,
    unsigned char *ss)
{
    // LUT使用量削減のための最適化ディレクティブ
#pragma HLS INTERFACE m_axi port = ct offset = slave bundle = gmem
#pragma HLS INTERFACE m_axi port = pk offset = slave bundle = gmem
#pragma HLS INTERFACE m_axi port = ss offset = slave bundle = gmem
#pragma HLS INTERFACE s_axilite port = ct bundle = control
#pragma HLS INTERFACE s_axilite port = pk bundle = control
#pragma HLS INTERFACE s_axilite port = ss bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control

    // LUT使用量削減のための配列分割
    unsigned char ephemeralsk[SECRETKEY_A_BYTES];
    unsigned char jinvariant[FP2_ENCODED_BYTES];
    unsigned char h[MSG_BYTES];
    unsigned char temp[CRYPTO_CIPHERTEXTBYTES + MSG_BYTES];

#pragma HLS ARRAY_PARTITION variable = ephemeralsk complete
#pragma HLS ARRAY_PARTITION variable = jinvariant complete
#pragma HLS ARRAY_PARTITION variable = h complete
#pragma HLS ARRAY_PARTITION variable = temp cyclic factor = 4

    // パイプライン最適化
#pragma HLS PIPELINE II = 1

    printf("Starting LUT-optimized encryption\n");
    print_hex("Input Public Key", pk, CRYPTO_PUBLICKEYBYTES);

    // temp配列全体を初期化
    memset(temp, 0, sizeof(temp));

    // Generate ephemeralsk <- G(m||pk) mod oA
    randombytes(temp, MSG_BYTES);
    memcpy(&temp[MSG_BYTES], pk, CRYPTO_PUBLICKEYBYTES);

    cshake256_simple(ephemeralsk, SECRETKEY_A_BYTES, G_CONST, temp, CRYPTO_PUBLICKEYBYTES + MSG_BYTES);
    printf("ephemeralsk values: ");
    ephemeralsk[SECRETKEY_A_BYTES - 1] &= MASK_ALICE;

    // Encrypt
    EphemeralKeyGeneration_A(ephemeralsk, ct);
    EphemeralSecretAgreement_A(ephemeralsk, pk, jinvariant);
    cshake256_simple(h, MSG_BYTES, P_CONST, jinvariant, FP2_ENCODED_BYTES);

    // XOR operation for ciphertext generation
    for (unsigned int i = 0; i < MSG_BYTES; i++)
    {
#pragma HLS UNROLL
        ct[CRYPTO_PUBLICKEYBYTES + i] = temp[i] ^ h[i];
    }

    // Generate shared secret
    cshake256_simple(ss, CRYPTO_BYTES, K_CONST, ct, CRYPTO_CIPHERTEXTBYTES);

    printf("LUT-optimized encryption complete\n");
    // Print output ciphertext
    print_hex("Output Ciphertext", ct, CRYPTO_CIPHERTEXTBYTES);

    // Print output shared secret
    print_hex("Output Shared Secret", ss, CRYPTO_BYTES);
    printf("LUT-optimized encryption complete\n");
}
