# 1 "/home/meltpoint/eeic/PQCrypto-SIKE/SIKEp503_HLS/src/fpx.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 358 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/meltpoint/eeic/PQCrypto-SIKE/SIKEp503_HLS/src/fpx.c" 2






# 1 "/home/meltpoint/eeic/PQCrypto-SIKE/SIKEp503_HLS/src/P503_internal.h" 1
# 10 "/home/meltpoint/eeic/PQCrypto-SIKE/SIKEp503_HLS/src/P503_internal.h"
# 1 "/home/meltpoint/eeic/PQCrypto-SIKE/SIKEp503_HLS/src/api.h" 1
# 10 "/home/meltpoint/eeic/PQCrypto-SIKE/SIKEp503_HLS/src/api.h"
# 1 "/home/meltpoint/eeic/PQCrypto-SIKE/SIKEp503_HLS/src/config.h" 1
# 10 "/home/meltpoint/eeic/PQCrypto-SIKE/SIKEp503_HLS/src/config.h"
# 1 "/home2/meltpoint/Xilinx/Vitis/2024.2/vcxx/lib/clang/14.0.6/include/stdint.h" 1 3
# 52 "/home2/meltpoint/Xilinx/Vitis/2024.2/vcxx/lib/clang/14.0.6/include/stdint.h" 3
# 1 "/usr/include/stdint.h" 1 3 4
# 26 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 33 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 394 "/usr/include/features.h" 3 4
# 1 "/usr/include/features-time64.h" 1 3 4
# 20 "/usr/include/features-time64.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 21 "/usr/include/features-time64.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 1 3 4
# 19 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 20 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 2 3 4
# 22 "/usr/include/features-time64.h" 2 3 4
# 395 "/usr/include/features.h" 2 3 4
# 480 "/usr/include/features.h" 3 4
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 481 "/usr/include/features.h" 2 3 4
# 502 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
# 576 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 577 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/long-double.h" 1 3 4
# 578 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 503 "/usr/include/features.h" 2 3 4
# 526 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
# 527 "/usr/include/features.h" 2 3 4
# 34 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 2 3 4
# 27 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 1 3 4
# 19 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 20 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 2 3 4
# 29 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;






typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;



typedef long int __quad_t;
typedef unsigned long int __u_quad_t;







typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
# 141 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/typesizes.h" 1 3 4
# 142 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/time64.h" 1 3 4
# 143 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;
typedef long int __suseconds64_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef long int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;




typedef int __sig_atomic_t;
# 28 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wchar.h" 1 3 4
# 29 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 30 "/usr/include/stdint.h" 2 3 4




# 1 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h" 3 4
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
# 35 "/usr/include/stdint.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h" 3 4
typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
# 38 "/usr/include/stdint.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/stdint-least.h" 1 3 4
# 25 "/usr/include/x86_64-linux-gnu/bits/stdint-least.h" 3 4
typedef __int_least8_t int_least8_t;
typedef __int_least16_t int_least16_t;
typedef __int_least32_t int_least32_t;
typedef __int_least64_t int_least64_t;


typedef __uint_least8_t uint_least8_t;
typedef __uint_least16_t uint_least16_t;
typedef __uint_least32_t uint_least32_t;
typedef __uint_least64_t uint_least64_t;
# 42 "/usr/include/stdint.h" 2 3 4





typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
# 60 "/usr/include/stdint.h" 3 4
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
# 76 "/usr/include/stdint.h" 3 4
typedef long int intptr_t;


typedef unsigned long int uintptr_t;
# 90 "/usr/include/stdint.h" 3 4
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
# 53 "/home2/meltpoint/Xilinx/Vitis/2024.2/vcxx/lib/clang/14.0.6/include/stdint.h" 2 3
# 11 "/home/meltpoint/eeic/PQCrypto-SIKE/SIKEp503_HLS/src/config.h" 2
# 1 "/home2/meltpoint/Xilinx/Vitis/2024.2/vcxx/lib/clang/14.0.6/include/stdbool.h" 1 3
# 12 "/home/meltpoint/eeic/PQCrypto-SIKE/SIKEp503_HLS/src/config.h" 2
# 1 "/home2/meltpoint/Xilinx/Vitis/2024.2/vcxx/lib/clang/14.0.6/include/stddef.h" 1 3
# 35 "/home2/meltpoint/Xilinx/Vitis/2024.2/vcxx/lib/clang/14.0.6/include/stddef.h" 3
typedef long int ptrdiff_t;
# 46 "/home2/meltpoint/Xilinx/Vitis/2024.2/vcxx/lib/clang/14.0.6/include/stddef.h" 3
typedef long unsigned int size_t;
# 74 "/home2/meltpoint/Xilinx/Vitis/2024.2/vcxx/lib/clang/14.0.6/include/stddef.h" 3
typedef int wchar_t;
# 13 "/home/meltpoint/eeic/PQCrypto-SIKE/SIKEp503_HLS/src/config.h" 2
# 61 "/home/meltpoint/eeic/PQCrypto-SIKE/SIKEp503_HLS/src/config.h"
    typedef uint64_t digit_t;
# 76 "/home/meltpoint/eeic/PQCrypto-SIKE/SIKEp503_HLS/src/config.h"
typedef uint64_t uint128_t[2];
# 93 "/home/meltpoint/eeic/PQCrypto-SIKE/SIKEp503_HLS/src/config.h"
static __inline unsigned int is_digit_nonzero_ct(digit_t x)
{
    return (unsigned int)((x | (0-x)) >> (64 -1));
}

static __inline unsigned int is_digit_zero_ct(digit_t x)
{
    return (unsigned int)(1 ^ is_digit_nonzero_ct(x));
}

static __inline unsigned int is_digit_lessthan_ct(digit_t x, digit_t y)
{
    return (unsigned int)((x ^ ((x ^ y) | ((x - y) ^ y))) >> (64 -1));
}
# 11 "/home/meltpoint/eeic/PQCrypto-SIKE/SIKEp503_HLS/src/api.h" 2
# 31 "/home/meltpoint/eeic/PQCrypto-SIKE/SIKEp503_HLS/src/api.h"
int crypto_kem_keypair(unsigned char *pk, unsigned char *sk);





int crypto_kem_enc(unsigned char *ct, unsigned char *ss, const unsigned char *pk);





int crypto_kem_dec(unsigned char *ss, const unsigned char *ct, const unsigned char *sk);
# 68 "/home/meltpoint/eeic/PQCrypto-SIKE/SIKEp503_HLS/src/api.h"
void random_mod_order_A(unsigned char *random_digits);



void random_mod_order_B(unsigned char *random_digits);




int EphemeralKeyGeneration_A(const unsigned char *PrivateKeyA, unsigned char *PublicKeyA);





int EphemeralKeyGeneration_B(const unsigned char *PrivateKeyB, unsigned char *PublicKeyB);






int EphemeralSecretAgreement_A(const unsigned char *PrivateKeyA, const unsigned char *PublicKeyB, unsigned char *SharedSecretA);






int EphemeralSecretAgreement_B(const unsigned char *PrivateKeyB, const unsigned char *PublicKeyA, unsigned char *SharedSecretB);
# 11 "/home/meltpoint/eeic/PQCrypto-SIKE/SIKEp503_HLS/src/P503_internal.h" 2
# 62 "/home/meltpoint/eeic/PQCrypto-SIKE/SIKEp503_HLS/src/P503_internal.h"
typedef digit_t felm_t[8];
typedef digit_t dfelm_t[2 * 8];
typedef felm_t f2elm_t[2];
typedef f2elm_t publickey_t[3];

typedef struct
{
    f2elm_t X;
    f2elm_t Z;
} point_proj;
typedef point_proj point_proj_t[1];





void copy_words(const digit_t *a, digit_t *c, const unsigned int nwords);


unsigned int mp_add(const digit_t *a, const digit_t *b, digit_t *c, const unsigned int nwords);


void mp_add503(const digit_t *a, const digit_t *b, digit_t *c);
void mp_add503_asm(const digit_t *a, const digit_t *b, digit_t *c);



void mp_add503x2(const digit_t *a, const digit_t *b, digit_t *c);
void mp_add503x2_asm(const digit_t *a, const digit_t *b, digit_t *c);


unsigned int mp_sub(const digit_t *a, const digit_t *b, digit_t *c, const unsigned int nwords);
digit_t mp_sub503x2_asm(const digit_t *a, const digit_t *b, digit_t *c);


void mp_shiftleft(digit_t *x, unsigned int shift, const unsigned int nwords);


void mp_shiftr1(digit_t *x, const unsigned int nwords);


void mp_shiftl1(digit_t *x, const unsigned int nwords);


void digit_x_digit(const digit_t a, const digit_t b, digit_t *c);


void mp_mul(const digit_t *a, const digit_t *b, digit_t *c, const unsigned int nwords);

void multiply(const digit_t *a, const digit_t *b, digit_t *c, const unsigned int nwords);


void Montgomery_multiply_mod_order(const digit_t *ma, const digit_t *mb, digit_t *mc, const digit_t *order, const digit_t *Montgomery_rprime);




void Montgomery_inversion_mod_order_bingcd(const digit_t *a, digit_t *c, const digit_t *order, const digit_t *Montgomery_rprime, const digit_t *Montgomery_R2);


void to_Montgomery_mod_order(const digit_t *a, digit_t *mc, const digit_t *order, const digit_t *Montgomery_rprime, const digit_t *Montgomery_Rprime);


void from_Montgomery_mod_order(const digit_t *ma, digit_t *c, const digit_t *order, const digit_t *Montgomery_rprime);


void inv_mod_orderA(const digit_t *a, digit_t *c);




void fpcopy503(const felm_t a, felm_t c);


void fpzero503(felm_t a);


_Bool fpequal503_non_constant_time(const felm_t a, const felm_t b);


extern void fpadd503(const digit_t *a, const digit_t *b, digit_t *c);
extern void fpadd503_asm(const digit_t *a, const digit_t *b, digit_t *c);


extern void fpsub503(const digit_t *a, const digit_t *b, digit_t *c);
extern void fpsub503_asm(const digit_t *a, const digit_t *b, digit_t *c);


extern void fpneg503(digit_t *a);


void fpdiv2_503(const digit_t *a, digit_t *c);


void fpcorrection503(digit_t *a);


void rdc_mont(const digit_t *a, digit_t *c);


void fpmul_mont(const felm_t ma, const felm_t mb, felm_t mc);
void fpmul503_mont(const felm_t a, const felm_t b, felm_t c);
void mul503_asm(const felm_t a, const felm_t b, dfelm_t c);
void rdc503_asm(const dfelm_t ma, dfelm_t mc);
void fpinv_chain_mont(felm_t a);


void fpsqr503_mont(const felm_t ma, felm_t mc);


void to_mont(const felm_t a, felm_t mc);


void from_mont(const felm_t ma, felm_t c);


void fpinv503_mont(felm_t a);


void fpinv503_mont_bingcd(felm_t a);


void fpinv503_chain_mont(felm_t a);




void fp2copy503(const f2elm_t a, f2elm_t c);


void fp2zero503(f2elm_t a);


void fp2neg503(f2elm_t a);


extern void fp2add503(const f2elm_t a, const f2elm_t b, f2elm_t c);


extern void fp2sub503(const f2elm_t a, const f2elm_t b, f2elm_t c);


void fp2div2_503(const f2elm_t a, f2elm_t c);


void fp2correction503(f2elm_t a);


void fp2sqr503_mont(const f2elm_t a, f2elm_t c);


void fp2mul503_mont(const f2elm_t a, const f2elm_t b, f2elm_t c);


void to_fp2mont(const f2elm_t a, f2elm_t mc);


void from_fp2mont(const f2elm_t ma, f2elm_t c);


void fp2inv503_mont(f2elm_t a);


void fp2inv503_mont_bingcd(f2elm_t a);


void mont_n_way_inv(const f2elm_t *vec, const int n, f2elm_t *out);




void j_inv(const f2elm_t A, const f2elm_t C, f2elm_t jinv);


void xDBLADD(point_proj_t P, point_proj_t Q, const f2elm_t xPQ, const f2elm_t A24);


void xDBL(const point_proj_t P, point_proj_t Q, const f2elm_t A24plus, const f2elm_t C24);


void xDBLe(const point_proj_t P, point_proj_t Q, const f2elm_t A24plus, const f2elm_t C24, const int e);


void xADD(point_proj_t P, const point_proj_t Q, const f2elm_t xPQ);


void get_4_isog(const point_proj_t P, f2elm_t A24plus, f2elm_t C24, f2elm_t *coeff);


void eval_4_isog(point_proj_t P, f2elm_t *coeff);


void xTPL(const point_proj_t P, point_proj_t Q, const f2elm_t A24minus, const f2elm_t A24plus);


void xTPLe(const point_proj_t P, point_proj_t Q, const f2elm_t A24minus, const f2elm_t A24plus, const int e);


void get_3_isog(const point_proj_t P, f2elm_t A24minus, f2elm_t A24plus, f2elm_t *coeff);


void eval_3_isog(point_proj_t Q, const f2elm_t *coeff);


void inv_3_way(f2elm_t z1, f2elm_t z2, f2elm_t z3);


void get_A(const f2elm_t xP, const f2elm_t xQ, const f2elm_t xR, f2elm_t A);


extern const uint64_t p503[((503 + 63) / 64)];
extern const uint64_t p503p1[((503 + 63) / 64)];
extern const uint64_t p503x2[((503 + 63) / 64)];
extern const uint64_t Alice_order[((256 + 63) / 64)];
extern const uint64_t Bob_order[((256 + 63) / 64)];
extern const uint64_t A_gen[5 * ((503 + 63) / 64)];
extern const uint64_t B_gen[5 * ((503 + 63) / 64)];
extern const uint64_t Montgomery_R2[((503 + 63) / 64)];
extern const uint64_t Montgomery_one[((503 + 63) / 64)];
extern const unsigned int strat_Alice[125 - 1];
extern const unsigned int strat_Bob[159 - 1];
# 8 "/home/meltpoint/eeic/PQCrypto-SIKE/SIKEp503_HLS/src/fpx.c" 2


__inline void fpcopy503(const felm_t a, felm_t c)
{
    unsigned int i;

    for (i = 0; i < 8; i++)
        c[i] = a[i];
}


__inline void fpzero503(felm_t a)
{
    unsigned int i;

    for (i = 0; i < 8; i++)
        a[i] = 0;
}


void to_mont(const felm_t a, felm_t mc)
{



    fpmul503_mont(a, (digit_t*)&Montgomery_R2, mc);
}


void from_mont(const felm_t ma, felm_t c)
{

    digit_t one[8] = {0};

    one[0] = 1;
    fpmul503_mont(ma, one, c);
    fpcorrection503(c);
}


void copy_words(const digit_t* a, digit_t* c, const unsigned int nwords)
{
    unsigned int i;

    for (i = 0; i < nwords; i++) {
#pragma HLS loop_tripcount min=1 max=503 avg=252
        c[i] = a[i];
    }
}


void fpmul503_mont(const felm_t ma, const felm_t mb, felm_t mc)
{
    dfelm_t temp = {0};

    mp_mul(ma, mb, temp, 8);
    rdc_mont(temp, mc);
}


void fpsqr503_mont(const felm_t ma, felm_t mc)
{
    dfelm_t temp = {0};

    mp_mul(ma, ma, temp, 8);
    rdc_mont(temp, mc);
}


void fpinv503_mont(felm_t a)
{
    felm_t tt;

    fpcopy503(a, tt);
    fpinv503_chain_mont(tt);
    fpsqr503_mont(tt, tt);
    fpsqr503_mont(tt, tt);
    fpmul503_mont(a, tt, a);
}


void fp2copy503(const f2elm_t a, f2elm_t c)
{
    fpcopy503(a[0], c[0]);
    fpcopy503(a[1], c[1]);
}


void fp2zero503(f2elm_t a)
{
    fpzero503(a[0]);
    fpzero503(a[1]);
}


void fp2neg503(f2elm_t a)
{
    fpneg503(a[0]);
    fpneg503(a[1]);
}


__inline void fp2add503(const f2elm_t a, const f2elm_t b, f2elm_t c)
{
    fpadd503(a[0], b[0], c[0]);
    fpadd503(a[1], b[1], c[1]);
}


__inline void fp2sub503(const f2elm_t a, const f2elm_t b, f2elm_t c)
{
    fpsub503(a[0], b[0], c[0]);
    fpsub503(a[1], b[1], c[1]);
}


void fp2div2_503(const f2elm_t a, f2elm_t c)
{
    fpdiv2_503(a[0], c[0]);
    fpdiv2_503(a[1], c[1]);
}


void fp2correction503(f2elm_t a)
{
    fpcorrection503(a[0]);
    fpcorrection503(a[1]);
}


__inline static void mp_addfast(const digit_t* a, const digit_t* b, digit_t* c)
{

    mp_add(a, b, c, 8);
}


__inline static void mp_addfastx2(const digit_t* a, const digit_t* b, digit_t* c)
{

    mp_add(a, b, c, 2*8);
}


void fp2sqr503_mont(const f2elm_t a, f2elm_t c)
{


    felm_t t1, t2, t3;

    mp_addfast(a[0], a[1], t1);
    fpsub503(a[0], a[1], t2);
    mp_addfast(a[0], a[0], t3);
    fpmul503_mont(t1, t2, c[0]);
    fpmul503_mont(t3, a[1], c[1]);
}


__inline unsigned int mp_sub(const digit_t* a, const digit_t* b, digit_t* c, const unsigned int nwords)
{
    unsigned int i, borrow = 0;

    for (i = 0; i < nwords; i++) {
#pragma HLS loop_tripcount min=1 max=503 avg=252
        { digit_t tempReg = (a[i]) - (b[i]); unsigned int borrowReg = (is_digit_lessthan_ct((a[i]), (b[i])) | ((borrow) & is_digit_zero_ct(tempReg))); (c[i]) = tempReg - (digit_t)(borrow); (borrow) = borrowReg; };
    }

    return borrow;
}


__inline static digit_t mp_subfast(const digit_t* a, const digit_t* b, digit_t* c)
{

 return (0 - (digit_t)mp_sub(a, b, c, 2*8));
}


void fp2mul503_mont(const f2elm_t a, const f2elm_t b, f2elm_t c)
{


    felm_t t1, t2;
    dfelm_t tt1, tt2, tt3;
    digit_t mask;
    unsigned int i, borrow = 0;

    mp_mul(a[0], b[0], tt1, 8);
    mp_mul(a[1], b[1], tt2, 8);
    mp_addfast(a[0], a[1], t1);
    mp_addfast(b[0], b[1], t2);
    mask = mp_subfast(tt1, tt2, tt3);
    for (i = 0; i < 8; i++) {
        { digit_t tempReg = (tt3[8 +i]) + (digit_t)(borrow); (tt3[8 +i]) = (((digit_t*)p503)[i] & mask) + tempReg; (borrow) = (is_digit_lessthan_ct(tempReg, (digit_t)(borrow)) | is_digit_lessthan_ct((tt3[8 +i]), tempReg)); };
    }
    rdc_mont(tt3, c[0]);
    mp_addfastx2(tt1, tt2, tt1);
    mp_mul(t1, t2, tt2, 8);
 mp_subfast(tt2, tt1, tt2);
    rdc_mont(tt2, c[1]);
}


void fpinv503_chain_mont(felm_t a)
{
    unsigned int i, j;
    felm_t t[15], tt;


    fpsqr503_mont(a, tt);
    fpmul503_mont(a, tt, t[0]);
    for (i = 0; i <= 13; i++) fpmul503_mont(t[i], tt, t[i+1]);

    fpcopy503(a, tt);
    for (i = 0; i < 8; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(a, tt, tt);
    for (i = 0; i < 5; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[8], tt, tt);
    for (i = 0; i < 5; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[6], tt, tt);
    for (i = 0; i < 6; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[9], tt, tt);
    for (i = 0; i < 7; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[0], tt, tt);
    for (i = 0; i < 7; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(a, tt, tt);
    for (i = 0; i < 7; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[6], tt, tt);
    for (i = 0; i < 7; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[2], tt, tt);
    for (i = 0; i < 5; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[8], tt, tt);
    for (i = 0; i < 7; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(a, tt, tt);
    for (i = 0; i < 8; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[10], tt, tt);
    for (i = 0; i < 5; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[0], tt, tt);
    for (i = 0; i < 6; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[10], tt, tt);
    for (i = 0; i < 5; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[10], tt, tt);
    for (i = 0; i < 5; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[5], tt, tt);
    for (i = 0; i < 5; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[2], tt, tt);
    for (i = 0; i < 5; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[6], tt, tt);
    for (i = 0; i < 5; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[3], tt, tt);
    for (i = 0; i < 6; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[5], tt, tt);
    for (i = 0; i < 12; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[12], tt, tt);
    for (i = 0; i < 5; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[8], tt, tt);
    for (i = 0; i < 5; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[6], tt, tt);
    for (i = 0; i < 5; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[12], tt, tt);
    for (i = 0; i < 6; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[11], tt, tt);
    for (i = 0; i < 8; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[6], tt, tt);
    for (i = 0; i < 5; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[5], tt, tt);
    for (i = 0; i < 5; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[14], tt, tt);
    for (i = 0; i < 7; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[14], tt, tt);
    for (i = 0; i < 5; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[5], tt, tt);
    for (i = 0; i < 5; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[6], tt, tt);
    for (i = 0; i < 8; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[8], tt, tt);
    for (i = 0; i < 5; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(a, tt, tt);
    for (i = 0; i < 8; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[4], tt, tt);
    for (i = 0; i < 5; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[6], tt, tt);
    for (i = 0; i < 5; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[5], tt, tt);
    for (i = 0; i < 8; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[7], tt, tt);
    for (i = 0; i < 5; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(a, tt, tt);
    for (i = 0; i < 5; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[0], tt, tt);
    for (i = 0; i < 5; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[11], tt, tt);
    for (i = 0; i < 5; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[13], tt, tt);
    for (i = 0; i < 8; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[1], tt, tt);
    for (i = 0; i < 6; i++) fpsqr503_mont(tt, tt);
    fpmul503_mont(t[10], tt, tt);
    for (j = 0; j < 49; j++) {
        for (i = 0; i < 5; i++) fpsqr503_mont(tt, tt);
        fpmul503_mont(t[14], tt, tt);
    }
    fpcopy503(tt, a);
}


void fp2inv503_mont(f2elm_t a)
{
    f2elm_t t1;

    fpsqr503_mont(a[0], t1[0]);
    fpsqr503_mont(a[1], t1[1]);
    fpadd503(t1[0], t1[1], t1[0]);
    fpinv503_mont(t1[0]);
    fpneg503(a[1]);
    fpmul503_mont(a[0], t1[0], a[0]);
    fpmul503_mont(a[1], t1[0], a[1]);
}


void to_fp2mont(const f2elm_t a, f2elm_t mc)
{


    to_mont(a[0], mc[0]);
    to_mont(a[1], mc[1]);
}


void from_fp2mont(const f2elm_t ma, f2elm_t c)
{


    from_mont(ma[0], c[0]);
    from_mont(ma[1], c[1]);
}


__inline unsigned int mp_add(const digit_t* a, const digit_t* b, digit_t* c, const unsigned int nwords)
{
    unsigned int i, carry = 0;

    for (i = 0; i < nwords; i++) {
#pragma HLS loop_tripcount min=1 max=503 avg=252
        { digit_t tempReg = (a[i]) + (digit_t)(carry); (c[i]) = (b[i]) + tempReg; (carry) = (is_digit_lessthan_ct(tempReg, (digit_t)(carry)) | is_digit_lessthan_ct((c[i]), tempReg)); };
    }

    return carry;
}


void mp_shiftleft(digit_t* x, unsigned int shift, const unsigned int nwords)
{
    unsigned int i, j = 0;

    while (shift > 64) {
        j += 1;
        shift -= 64;
    }

    for (i = 0; i < nwords-j; i++) {
#pragma HLS loop_tripcount min=1 max=503 avg=252
        x[nwords-1-i] = x[nwords-1-i-j];
    }

    for (i = nwords-j; i < nwords; i++) {
#pragma HLS loop_tripcount min=1 max=503 avg=252
        x[nwords-1-i] = 0;
    }

    if (shift != 0) {
        for (j = nwords-1; j > 0; j--) {
#pragma HLS loop_tripcount min=1 max=503 avg=252
            (x[j]) = ((x[j]) << (shift)) ^ ((x[j-1]) >> (64 - (shift)));;
        }
        x[0] <<= shift;
    }
}


void mp_shiftr1(digit_t* x, const unsigned int nwords)
{
    unsigned int i;

    for (i = 0; i < nwords-1; i++) {
#pragma HLS loop_tripcount min=1 max=503 avg=252
        (x[i]) = ((x[i]) >> (1)) ^ ((x[i+1]) << (64 - (1)));;
    }
    x[nwords-1] >>= 1;
}


void mp_shiftl1(digit_t* x, const unsigned int nwords)
{
    int i;

    for (i = nwords-1; i > 0; i--) {
#pragma HLS loop_tripcount min=1 max=503 avg=252
        (x[i]) = ((x[i]) << (1)) ^ ((x[i-1]) >> (64 - (1)));;
    }
    x[0] <<= 1;
}
