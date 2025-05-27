/********************************************************************************************
 * Supersingular Isogeny Key Encapsulation Library
 *
 * Abstract: supersingular isogeny key encapsulation (SIKE) protocol
 *********************************************************************************************/

#include <string.h>
#include "P503_internal.h"
#include "sha3/fips202.h"

int crypto_kem_keypair(unsigned char *pk, unsigned char *sk)
{ // SIKE's key generation
  // Outputs: secret key sk (CRYPTO_SECRETKEYBYTES = MSG_BYTES + SECRETKEY_B_BYTES + CRYPTO_PUBLICKEYBYTES bytes)
  //          public key pk (CRYPTO_PUBLICKEYBYTES bytes)

  printf("DEBUG: Starting crypto_kem_keypair\n");

  // Generate lower portion of secret key sk <- s||SK
  randombytes(sk, MSG_BYTES);
  printf("DEBUG: Generated random bytes for s (first 16 bytes): ");
  for (unsigned int i = 0; i < 16; i++)
    printf("%02x ", sk[i]);
  printf("\n");

  random_mod_order_B(sk + MSG_BYTES);
  printf("DEBUG: Generated random bytes for SK (first 16 bytes): ");
  for (unsigned int i = 0; i < 16; i++)
    printf("%02x ", sk[MSG_BYTES + i]);
  printf("\n");

  // Generate public key pk
  printf("DEBUG: Starting EphemeralKeyGeneration_B\n");
  printf("DEBUG: Input PrivateKeyB (first 16 bytes): ");
  for (unsigned int i = 0; i < 16; i++)
    printf("%02x ", sk[MSG_BYTES + i]);
  printf("\n");

  EphemeralKeyGeneration_B(sk + MSG_BYTES, pk);
  printf("DEBUG: Generated public key (first 16 bytes): ");
  for (unsigned int i = 0; i < 16; i++)
    printf("%02x ", pk[i]);
  printf("\n");
  printf("DEBUG: Finished EphemeralKeyGeneration_B\n");

  // Append public key pk to secret key sk
  memcpy(&sk[MSG_BYTES + SECRETKEY_B_BYTES], pk, CRYPTO_PUBLICKEYBYTES);
  printf("DEBUG: Appended public key to secret key\n");

  printf("DEBUG: Finished crypto_kem_keypair\n");

  return 0;
}

int crypto_kem_enc(unsigned char *ct, unsigned char *ss, const unsigned char *pk)
{ // SIKE's encapsulation
  // Input:   public key pk         (CRYPTO_PUBLICKEYBYTES bytes)
  // Outputs: shared secret ss      (CRYPTO_BYTES bytes)
  //          ciphertext message ct (CRYPTO_CIPHERTEXTBYTES = CRYPTO_PUBLICKEYBYTES + MSG_BYTES bytes)
  const uint16_t G = 0;
  const uint16_t H = 1;
  const uint16_t P = 2;
  unsigned char ephemeralsk[SECRETKEY_A_BYTES];
  unsigned char jinvariant[FP2_ENCODED_BYTES];
  unsigned char h[MSG_BYTES];
  unsigned char temp[CRYPTO_CIPHERTEXTBYTES + MSG_BYTES];
  unsigned int i;

  printf("DEBUG: Starting crypto_kem_enc\n");

  // Generate ephemeralsk <- G(m||pk) mod oA
  randombytes(temp, MSG_BYTES);
  printf("DEBUG: Generated random bytes for temp (first 16 bytes): ");
  for (i = 0; i < 16; i++)
    printf("%02x ", temp[i]);
  printf("\n");

  memcpy(&temp[MSG_BYTES], pk, CRYPTO_PUBLICKEYBYTES);
  cshake256_simple(ephemeralsk, SECRETKEY_A_BYTES, G, temp, CRYPTO_PUBLICKEYBYTES + MSG_BYTES);
  ephemeralsk[SECRETKEY_A_BYTES - 1] &= MASK_ALICE;

  printf("DEBUG: Generated ephemeralsk (first 16 bytes): ");
  for (i = 0; i < 16; i++)
    printf("%02x ", ephemeralsk[i]);
  printf("\n");

  printf("DEBUG: Starting EphemeralKeyGeneration_A\n");
  printf("DEBUG: Input PrivateKeyA (first 16 bytes): ");
  for (i = 0; i < 16; i++)
    printf("%02x ", ephemeralsk[i]);
  printf("\n");

  // Encrypt
  EphemeralKeyGeneration_A(ephemeralsk, ct);
  printf("DEBUG: Retrieved kernel point\n");
  printf("DEBUG: Generated public key (first 16 bytes): ");
  for (i = 0; i < 16; i++)
    printf("%02x ", ct[i]);
  printf("\n");
  printf("DEBUG: Finished EphemeralKeyGeneration_A\n");

  printf("DEBUG: Generated ephemeral key (first 16 bytes): ");
  for (i = 0; i < 16; i++)
    printf("%02x ", ct[i]);
  printf("\n");

  printf("DEBUG: Starting EphemeralSecretAgreement_A\n");
  printf("DEBUG: Input PrivateKeyA (first 16 bytes): ");
  for (i = 0; i < 16; i++)
    printf("%02x ", ephemeralsk[i]);
  printf("\n");
  printf("DEBUG: Input PublicKeyB (first 16 bytes): ");
  for (i = 0; i < 16; i++)
    printf("%02x ", pk[i]);
  printf("\n");

  EphemeralSecretAgreement_A(ephemeralsk, pk, jinvariant);
  printf("DEBUG: Retrieved kernel point\n");
  printf("DEBUG: Generated j-invariant (first 16 bytes): ");
  for (i = 0; i < 16; i++)
    printf("%02x ", jinvariant[i]);
  printf("\n");
  printf("DEBUG: Finished EphemeralSecretAgreement_A\n");

  cshake256_simple(h, MSG_BYTES, P, jinvariant, FP2_ENCODED_BYTES);
  printf("DEBUG: Generated h (first 16 bytes): ");
  for (i = 0; i < 16; i++)
    printf("%02x ", h[i]);
  printf("\n");

  for (i = 0; i < MSG_BYTES; i++)
    ct[i + CRYPTO_PUBLICKEYBYTES] = temp[i] ^ h[i];
  printf("DEBUG: Generated ciphertext (first 16 bytes): ");
  for (i = 0; i < 16; i++)
    printf("%02x ", ct[i]);
  printf("\n");

  // Generate shared secret ss <- H(m||ct)
  memcpy(&temp[MSG_BYTES], ct, CRYPTO_CIPHERTEXTBYTES);
  cshake256_simple(ss, CRYPTO_BYTES, H, temp, CRYPTO_CIPHERTEXTBYTES + MSG_BYTES);
  printf("DEBUG: Generated shared secret (first 16 bytes): ");
  for (i = 0; i < 16; i++)
    printf("%02x ", ss[i]);
  printf("\n");

  printf("DEBUG: Finished crypto_kem_enc\n");

  return 0;
}

int crypto_kem_dec(unsigned char *ss, const unsigned char *ct, const unsigned char *sk)
{ // SIKE's decapsulation
  // Input:   secret key sk         (CRYPTO_SECRETKEYBYTES = MSG_BYTES + SECRETKEY_B_BYTES + CRYPTO_PUBLICKEYBYTES bytes)
  //          ciphertext message ct (CRYPTO_CIPHERTEXTBYTES = CRYPTO_PUBLICKEYBYTES + MSG_BYTES bytes)
  // Outputs: shared secret ss      (CRYPTO_BYTES bytes)
  const uint16_t G = 0;
  const uint16_t H = 1;
  const uint16_t P = 2;
  unsigned char ephemeralsk_[SECRETKEY_A_BYTES];
  unsigned char jinvariant_[FP2_ENCODED_BYTES];
  unsigned char h_[MSG_BYTES];
  unsigned char c0_[CRYPTO_PUBLICKEYBYTES];
  unsigned char temp[CRYPTO_CIPHERTEXTBYTES + MSG_BYTES];
  unsigned int i;

  printf("DEBUG: Starting crypto_kem_dec\n");

  // Decrypt
  printf("DEBUG: Starting EphemeralSecretAgreement_B\n");
  printf("DEBUG: Input PrivateKeyB (first 16 bytes): ");
  for (i = 0; i < 16; i++)
    printf("%02x ", sk[MSG_BYTES + i]);
  printf("\n");
  printf("DEBUG: Input PublicKeyA (first 16 bytes): ");
  for (i = 0; i < 16; i++)
    printf("%02x ", ct[i]);
  printf("\n");

  EphemeralSecretAgreement_B(sk + MSG_BYTES, ct, jinvariant_);
  printf("DEBUG: Retrieved kernel point\n");
  printf("DEBUG: Generated shared secret (first 16 bytes): ");
  for (i = 0; i < 16; i++)
    printf("%02x ", jinvariant_[i]);
  printf("\n");
  printf("DEBUG: Finished EphemeralSecretAgreement_B\n");

  cshake256_simple(h_, MSG_BYTES, P, jinvariant_, FP2_ENCODED_BYTES);
  printf("DEBUG: Generated h (first 16 bytes): ");
  for (i = 0; i < 16; i++)
    printf("%02x ", h_[i]);
  printf("\n");

  for (i = 0; i < MSG_BYTES; i++)
    temp[i] = ct[i + CRYPTO_PUBLICKEYBYTES] ^ h_[i];
  printf("DEBUG: Decrypted message (first 16 bytes): ");
  for (i = 0; i < 16; i++)
    printf("%02x ", temp[i]);
  printf("\n");

  // Generate ephemeralsk_ <- G(m||pk) mod oA
  printf("DEBUG: Starting ephemeralsk generation\n");
  memcpy(&temp[MSG_BYTES], &sk[MSG_BYTES + SECRETKEY_B_BYTES], CRYPTO_PUBLICKEYBYTES);
  cshake256_simple(ephemeralsk_, SECRETKEY_A_BYTES, G, temp, CRYPTO_PUBLICKEYBYTES + MSG_BYTES);
  ephemeralsk_[SECRETKEY_A_BYTES - 1] &= MASK_ALICE;
  printf("DEBUG: Generated ephemeralsk (first 16 bytes): ");
  for (i = 0; i < 16; i++)
    printf("%02x ", ephemeralsk_[i]);
  printf("\n");

  // Generate shared secret ss <- H(m||ct) or output ss <- H(s||ct)
  printf("DEBUG: Starting EphemeralKeyGeneration_A\n");
  EphemeralKeyGeneration_A(ephemeralsk_, c0_);
  printf("DEBUG: Generated public key (first 16 bytes): ");
  for (i = 0; i < 16; i++)
    printf("%02x ", c0_[i]);
  printf("\n");
  printf("DEBUG: Finished EphemeralKeyGeneration_A\n");

  if (memcmp(c0_, ct, CRYPTO_PUBLICKEYBYTES) != 0)
  {
    printf("DEBUG: Public key mismatch, using original secret key\n");
    memcpy(temp, sk, MSG_BYTES);
  }
  memcpy(&temp[MSG_BYTES], ct, CRYPTO_CIPHERTEXTBYTES);
  cshake256_simple(ss, CRYPTO_BYTES, H, temp, CRYPTO_CIPHERTEXTBYTES + MSG_BYTES);
  printf("DEBUG: Generated shared secret (first 16 bytes): ");
  for (i = 0; i < 16; i++)
    printf("%02x ", ss[i]);
  printf("\n");

  printf("DEBUG: Finished crypto_kem_dec\n");

  return 0;
}