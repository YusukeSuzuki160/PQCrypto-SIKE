#ifndef __FPX_H__
#define __FPX_H__

#include "P503_internal.h"

// Field arithmetic functions
void fpcopy503(const felm_t a, felm_t c);
void fpzero503(felm_t a);
bool fpequal503_non_constant_time(const felm_t a, const felm_t b);
void fpadd503(const digit_t *a, const digit_t *b, digit_t *c);
void fpsub503(const digit_t *a, const digit_t *b, digit_t *c);
void fpneg503(digit_t *a);
void fpdiv2_503(const digit_t *a, digit_t *c);
void fpcorrection503(digit_t *a);
void fpmul503_mont(const felm_t a, const felm_t b, felm_t c);
void fpsqr503_mont(const felm_t ma, felm_t mc);
void fpinv503_mont(felm_t a);
void fpinv503_mont_bingcd(felm_t a);
void fpinv503_chain_mont(felm_t a);

// GF(p^2) arithmetic functions
void fp2copy503(const f2elm_t a, f2elm_t c);
void fp2zero503(f2elm_t a);
void fp2neg503(f2elm_t a);
void fp2add503(const f2elm_t a, const f2elm_t b, f2elm_t c);
void fp2sub503(const f2elm_t a, const f2elm_t b, f2elm_t c);
void fp2div2_503(const f2elm_t a, f2elm_t c);
void fp2correction503(f2elm_t c);
void fp2mul503_mont(const f2elm_t a, const f2elm_t b, f2elm_t c);
void fp2sqr503_mont(const f2elm_t a, f2elm_t c);
void fp2inv503_mont(f2elm_t a);
void fp2inv503_mont_bingcd(f2elm_t a);

// Montgomery conversion functions
void to_mont(const felm_t a, felm_t mc);
void from_mont(const felm_t ma, felm_t c);
void to_fp2mont(const f2elm_t a, f2elm_t mc);
void from_fp2mont(const f2elm_t ma, f2elm_t c);

// Multiprecision functions
void copy_words(const digit_t *a, digit_t *c, const unsigned int nwords);
unsigned int mp_add(const digit_t *a, const digit_t *b, digit_t *c, const unsigned int nwords);
unsigned int mp_sub(const digit_t *a, const digit_t *b, digit_t *c, const unsigned int nwords);
void mp_shiftleft(digit_t *x, unsigned int shift, const unsigned int nwords);
void mp_shiftr1(digit_t *x, const unsigned int nwords);
void mp_shiftl1(digit_t *x, const unsigned int nwords);

#endif