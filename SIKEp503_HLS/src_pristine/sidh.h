#ifndef __SIDH_H__
#define __SIDH_H__

#include "P503_internal.h"
#include "api.h"

// SIDH functions
void init_basis(const digit_t *gen, f2elm_t XP, f2elm_t XQ, f2elm_t XR);
int EphemeralKeyGeneration_A(const unsigned char *PrivateKeyA, unsigned char *PublicKeyA);
int EphemeralKeyGeneration_B(const unsigned char *PrivateKeyB, unsigned char *PublicKeyB);
int EphemeralSecretAgreement_A(const unsigned char *PrivateKeyA, const unsigned char *PublicKeyB, unsigned char *SharedSecretA);
int EphemeralSecretAgreement_B(const unsigned char *PrivateKeyB, const unsigned char *PublicKeyA, unsigned char *SharedSecretB);

#endif