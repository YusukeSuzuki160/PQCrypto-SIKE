#ifndef __SIKE_H__
#define __SIKE_H__

#include "P503_internal.h"
#include "api.h"

// SIKE functions
int crypto_kem_keypair(unsigned char *pk, unsigned char *sk);
int crypto_kem_enc(unsigned char *ct, unsigned char *ss, const unsigned char *pk);
int crypto_kem_dec(unsigned char *ss, const unsigned char *ct, const unsigned char *sk);

#endif