# 1 "src/P503.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 339 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home2/meltpoint/Xilinx/Vitis/2024.2/common/technology/autopilot/etc/autopilot_ssdm_op.h" 1
# 263 "/home2/meltpoint/Xilinx/Vitis/2024.2/common/technology/autopilot/etc/autopilot_ssdm_op.h"
    void _ssdm_op_IfRead() __attribute__ ((nothrow));
    void _ssdm_op_IfWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanWrite() __attribute__ ((nothrow));


    void _ssdm_StreamRead() __attribute__ ((nothrow));
    void _ssdm_StreamWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanWrite() __attribute__ ((nothrow));
    void _ssdm_op_ReadReq() __attribute__ ((nothrow));
    void _ssdm_op_Read() __attribute__ ((nothrow));
    void _ssdm_op_WriteReq() __attribute__ ((nothrow));
    void _ssdm_op_Write() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbReadReq() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_CanReadReq() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbWriteReq() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_CanWriteReq() __attribute__ ((nothrow));




    void _ssdm_op_MemShiftRead() __attribute__ ((nothrow));

    void _ssdm_op_PrintNone() __attribute__ ((nothrow));
    void _ssdm_op_PrintInt() __attribute__ ((nothrow));
    void _ssdm_op_PrintDouble() __attribute__ ((nothrow));

    void _ssdm_op_Wait(int) __attribute__ ((nothrow));
    void _ssdm_op_Poll() __attribute__ ((nothrow));

    void _ssdm_op_Return() __attribute__ ((nothrow));


    void _ssdm_op_SpecSynModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef() __attribute__ ((nothrow));
    void _ssdm_op_SpecPort() __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection() __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel() __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive() __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst() __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap() __attribute__ ((nothrow));

    void _ssdm_op_SpecReset() __attribute__ ((nothrow));

    void _ssdm_op_SpecPlatform() __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain() __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain() __attribute__ ((nothrow));

    int _ssdm_op_SpecRegionBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopName() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopTripCount() __attribute__ ((nothrow));

    int _ssdm_op_SpecStateBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecInterface() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipeline() __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline() __attribute__ ((nothrow));


    void _ssdm_op_SpecLatency() __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel() __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol() __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence() __attribute__ ((nothrow));

    void _ssdm_op_SpecResource() __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit() __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore() __attribute__ ((nothrow));

    void _ssdm_op_SpecExt() __attribute__ ((nothrow));




    void _ssdm_SpecArrayDimSize() __attribute__ ((nothrow));

    void _ssdm_RegionBegin() __attribute__ ((nothrow));
    void _ssdm_RegionEnd() __attribute__ ((nothrow));

    void _ssdm_InlineAll() __attribute__ ((nothrow));
    void _ssdm_InlineLoop() __attribute__ ((nothrow));
    void _ssdm_Inline() __attribute__ ((nothrow));
    void _ssdm_InlineSelf() __attribute__ ((nothrow));
    void _ssdm_InlineRegion() __attribute__ ((nothrow));

    void _ssdm_SpecArrayMap() __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition() __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape() __attribute__ ((nothrow));

    void _ssdm_SpecStream() __attribute__ ((nothrow));

    void _ssdm_op_SpecStable() __attribute__ ((nothrow));
    void _ssdm_op_SpecStableContent() __attribute__ ((nothrow));

    void _ssdm_op_SpecBindPort() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipoDepth() __attribute__ ((nothrow));

    void _ssdm_SpecExpr() __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance() __attribute__ ((nothrow));

    void _ssdm_SpecDependence() __attribute__ ((nothrow));

    void _ssdm_SpecLoopMerge() __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten() __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind() __attribute__ ((nothrow));

    void _ssdm_SpecFuncInstantiation() __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer() __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract() __attribute__ ((nothrow));
    void _ssdm_SpecConstant() __attribute__ ((nothrow));

    void _ssdm_DataPack() __attribute__ ((nothrow));
    void _ssdm_SpecDataPack() __attribute__ ((nothrow));

    void _ssdm_op_SpecBitsMap() __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense() __attribute__ ((nothrow));
# 2 "<built-in>" 2
# 1 "src/P503.c" 2






# 1 "src/P503_internal.h" 1
# 10 "src/P503_internal.h"
# 1 "src/api.h" 1
# 10 "src/api.h"
# 1 "src/config.h" 1
# 10 "src/config.h"
# 1 "/home2/meltpoint/Xilinx/Vitis/2024.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stdint.h" 1 3
# 63 "/home2/meltpoint/Xilinx/Vitis/2024.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stdint.h" 3
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
# 64 "/home2/meltpoint/Xilinx/Vitis/2024.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stdint.h" 2 3
# 11 "src/config.h" 2
# 1 "/home2/meltpoint/Xilinx/Vitis/2024.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stdbool.h" 1 3
# 12 "src/config.h" 2
# 1 "/home2/meltpoint/Xilinx/Vitis/2024.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stddef.h" 1 3
# 51 "/home2/meltpoint/Xilinx/Vitis/2024.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stddef.h" 3
typedef long int ptrdiff_t;
# 62 "/home2/meltpoint/Xilinx/Vitis/2024.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stddef.h" 3
typedef long unsigned int size_t;
# 90 "/home2/meltpoint/Xilinx/Vitis/2024.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stddef.h" 3
typedef int wchar_t;
# 13 "src/config.h" 2
# 61 "src/config.h"
    typedef uint64_t digit_t;
# 76 "src/config.h"
typedef uint64_t uint128_t[2];
# 93 "src/config.h"
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
# 11 "src/api.h" 2
# 27 "src/api.h"
int crypto_kem_keypair(unsigned char *pk, unsigned char *sk);





int crypto_kem_enc(unsigned char *ct, unsigned char *ss, const unsigned char *pk);





int crypto_kem_dec(unsigned char *ss, const unsigned char *ct, const unsigned char *sk);
# 66 "src/api.h"
void random_mod_order_A(unsigned char* random_digits);



void random_mod_order_B(unsigned char* random_digits);




int EphemeralKeyGeneration_A(const unsigned char* PrivateKeyA, unsigned char* PublicKeyA);





int EphemeralKeyGeneration_B(const unsigned char* PrivateKeyB, unsigned char* PublicKeyB);






int EphemeralSecretAgreement_A(const unsigned char* PrivateKeyA, const unsigned char* PublicKeyB, unsigned char* SharedSecretA);






int EphemeralSecretAgreement_B(const unsigned char* PrivateKeyB, const unsigned char* PublicKeyA, unsigned char* SharedSecretB);
# 11 "src/P503_internal.h" 2
# 62 "src/P503_internal.h"
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
# 8 "src/P503.c" 2
# 21 "src/P503.c"
const uint64_t p503[((503 + 63) / 64)] = {0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xABFFFFFFFFFFFFFF,
                                       0x13085BDA2211E7A0, 0x1B9BF6C87B7E7DAF, 0x6045C6BDDA77A4D0, 0x004066F541811E1E};
const uint64_t p503p1[((503 + 63) / 64)] = {0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0xAC00000000000000,
                                         0x13085BDA2211E7A0, 0x1B9BF6C87B7E7DAF, 0x6045C6BDDA77A4D0, 0x004066F541811E1E};
const uint64_t p503x2[((503 + 63) / 64)] = {0xFFFFFFFFFFFFFFFE, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0x57FFFFFFFFFFFFFF,
                                         0x2610B7B44423CF41, 0x3737ED90F6FCFB5E, 0xC08B8D7BB4EF49A0, 0x0080CDEA83023C3C};

const uint64_t Alice_order[((256 + 63) / 64)] = {0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0400000000000000};

const uint64_t Bob_order[((256 + 63) / 64)] = {0xC216F6888479E82B, 0xE6FDB21EDF9F6BC4, 0x1171AF769DE93406, 0x1019BD5060478798};

const uint64_t A_gen[5 * ((503 + 63) / 64)] = {0xE7EF4AA786D855AF, 0xED5758F03EB34D3B, 0x09AE172535A86AA9, 0x237B9CC07D622723,
                                            0xE3A284CBA4E7932D, 0x27481D9176C5E63F, 0x6A323FF55C6E71BF, 0x002ECC31A6FB8773,
                                            0x64D02E4E90A620B8, 0xDAB8128537D4B9F1, 0x4BADF77B8A228F98, 0x0F5DBDF9D1FB7D1B,
                                            0xBEC4DB288E1A0DCC, 0xE76A8665E80675DB, 0x6D6F252E12929463, 0x003188BD1463FACC,
                                            0xB79D41025DE85D56, 0x0B867DA9DF169686, 0x740E5368021C827D, 0x20615D72157BF25C,
                                            0xFF1590013C9B9F5B, 0xC884DCADE8C16CEA, 0xEBD05E53BF724E01, 0x0032FEF8FDA5748C,
                                            0x12E2E849AA0A8006, 0x41CF47008635A1E8, 0x9CD720A70798AED7, 0x42A820B42FCF04CF,
                                            0x7BF9BAD32AAE88B1, 0xF619127A54090BBE, 0x1CB10D8F56408EAA, 0x001D6B54C3C0EDEB,
                                            0x34DB54931CBAAC36, 0x420A18CB8DD5F0C4, 0x32008C1A48C0F44D, 0x3B3BA772B1CFD44D,
                                            0xA74B058FDAF13515, 0x095FC9CA7EEC17B4, 0x448E829D28F120F8, 0x00261EC3ED16A489};

const uint64_t B_gen[5 * ((503 + 63) / 64)] = {0x7EDE37F4FA0BC727, 0xF7F8EC5C8598941C, 0xD15519B516B5F5C8, 0xF6D5AC9B87A36282,
                                            0x7B19F105B30E952E, 0x13BD8B2025B4EBEE, 0x7B96D27F4EC579A2, 0x00140850CAB7E5DE,
                                            0x7764909DAE7B7B2D, 0x578ABB16284911AB, 0x76E2BFD146A6BF4D, 0x4824044B23AA02F0,
                                            0x1105048912A321F3, 0xB8A2E482CF0F10C1, 0x42FF7D0BE2152085, 0x0018E599C5223352,
                                            0x4256C520FB388820, 0x744FD7C3BAAF0A13, 0x4B6A2DDDB12CBCB8, 0xE46826E27F427DF8,
                                            0xFE4A663CD505A61B, 0xD6B3A1BAF025C695, 0x7C3BB62B8FCC00BD, 0x003AFDDE4A35746C,
                                            0x75601CD1E6C0DFCB, 0x1A9007239B58F93E, 0xC1F1BE80C62107AC, 0x7F513B898F29FF08,
                                            0xEA0BEDFF43E1F7B2, 0x2C6D94018CBAE6D0, 0x3A430D31BCD84672, 0x000D26892ECCFE83,
                                            0x1119D62AEA3007A1, 0xE3702AA4E04BAE1B, 0x9AB96F7D59F990E7, 0xF58440E8B43319C0,
                                            0xAF8134BEE1489775, 0xE7F7774E905192AA, 0xF54AE09308E98039, 0x001EF7A041A86112};

const uint64_t Montgomery_R2[((503 + 63) / 64)] = {0x5289A0CF641D011F, 0x9B88257189FED2B9, 0xA3B365D58DC8F17A, 0x5BC57AB6EFF168EC,
                                                0x9E51998BD84D4423, 0xBF8999CBAC3B5695, 0x46E9127BCE14CDB6, 0x003F6CFCE8B81771};

const uint64_t Montgomery_one[((503 + 63) / 64)] = {0x00000000000003F9, 0x0000000000000000, 0x0000000000000000, 0xB400000000000000,
                                                 0x63CB1A6EA6DED2B4, 0x51689D8D667EB37D, 0x8ACD77C71AB24142, 0x0026FBAEC60F5953};

const uint64_t Montgomery_Rprime[((256 + 63) / 64)] = {0x0C2615CA3C5BAA99, 0x5A4FF3072AB6AA6A, 0xA6AFD4B039AD6AA2, 0x010DA06A26DD05CB};

const uint64_t Montgomery_rprime[((256 + 63) / 64)] = {0x49C8A87190C0697D, 0x2EB7968EA0F0A558, 0x944257B696777FA2, 0xBAA4DDCD6139D2B3};

const uint64_t Border_div3[((256 + 64 - 1) / 64)] = {0xEB5CFCD82C28A2B9, 0x4CFF3B5F9FDFCE96, 0xB07B3A7CDF4DBC02, 0x055DE9C5756D2D32};


const unsigned int strat_Alice[125 - 1] = {
    61, 32, 16, 8, 4, 2, 1, 1, 2, 1, 1, 4, 2, 1, 1, 2, 1, 1, 8, 4, 2, 1, 1, 2, 1, 1,
    4, 2, 1, 1, 2, 1, 1, 16, 8, 4, 2, 1, 1, 2, 1, 1, 4, 2, 1, 1, 2, 1, 1, 8, 4, 2, 1,
    1, 2, 1, 1, 4, 2, 1, 1, 2, 1, 1, 29, 16, 8, 4, 2, 1, 1, 2, 1, 1, 4, 2, 1, 1, 2, 1,
    1, 8, 4, 2, 1, 1, 2, 1, 1, 4, 2, 1, 1, 2, 1, 1, 13, 8, 4, 2, 1, 1, 2, 1, 1, 4, 2,
    1, 1, 2, 1, 1, 5, 4, 2, 1, 1, 2, 1, 1, 2, 1, 1, 1};

const unsigned int strat_Bob[159 - 1] = {
    71, 38, 21, 13, 8, 4, 2, 1, 1, 2, 1, 1, 4, 2, 1, 1, 2, 1, 1, 5, 4, 2, 1, 1, 2, 1,
    1, 2, 1, 1, 1, 9, 5, 3, 2, 1, 1, 1, 1, 2, 1, 1, 1, 4, 2, 1, 1, 1, 2, 1, 1, 17, 9,
    5, 3, 2, 1, 1, 1, 1, 2, 1, 1, 1, 4, 2, 1, 1, 1, 2, 1, 1, 8, 4, 2, 1, 1, 1, 2, 1,
    1, 4, 2, 1, 1, 2, 1, 1, 33, 17, 9, 5, 3, 2, 1, 1, 1, 1, 2, 1, 1, 1, 4, 2, 1, 1, 1,
    2, 1, 1, 8, 4, 2, 1, 1, 1, 2, 1, 1, 4, 2, 1, 1, 2, 1, 1, 16, 8, 4, 2, 1, 1, 1, 2,
    1, 1, 4, 2, 1, 1, 2, 1, 1, 8, 4, 2, 1, 1, 2, 1, 1, 4, 2, 1, 1, 2, 1, 1};





# 1 "src/fpx.h" 1






void fpcopy503(const felm_t a, felm_t c);
void fpzero503(felm_t a);
_Bool fpequal503_non_constant_time(const felm_t a, const felm_t b);
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


void to_mont(const felm_t a, felm_t mc);
void from_mont(const felm_t ma, felm_t c);
void to_fp2mont(const f2elm_t a, f2elm_t mc);
void from_fp2mont(const f2elm_t ma, f2elm_t c);


void copy_words(const digit_t *a, digit_t *c, const unsigned int nwords);
unsigned int mp_add(const digit_t *a, const digit_t *b, digit_t *c, const unsigned int nwords);
unsigned int mp_sub(const digit_t *a, const digit_t *b, digit_t *c, const unsigned int nwords);
void mp_shiftleft(digit_t *x, unsigned int shift, const unsigned int nwords);
void mp_shiftr1(digit_t *x, const unsigned int nwords);
void mp_shiftl1(digit_t *x, const unsigned int nwords);
# 86 "src/P503.c" 2
# 1 "src/ec_isogeny.h" 1






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
void LADDER3PT(const f2elm_t xP, const f2elm_t xQ, const f2elm_t xPQ, const digit_t *m, const unsigned int AliceOrBob, point_proj_t R, const f2elm_t A);
# 87 "src/P503.c" 2
# 1 "src/sidh.h" 1







void init_basis(const digit_t *gen, f2elm_t XP, f2elm_t XQ, f2elm_t XR);
int EphemeralKeyGeneration_A(const unsigned char *PrivateKeyA, unsigned char *PublicKeyA);
int EphemeralKeyGeneration_B(const unsigned char *PrivateKeyB, unsigned char *PublicKeyB);
int EphemeralSecretAgreement_A(const unsigned char *PrivateKeyA, const unsigned char *PublicKeyB, unsigned char *SharedSecretA);
int EphemeralSecretAgreement_B(const unsigned char *PrivateKeyB, const unsigned char *PublicKeyA, unsigned char *SharedSecretB);
# 88 "src/P503.c" 2
# 1 "src/sike.h" 1







int crypto_kem_keypair(unsigned char *pk, unsigned char *sk);
int crypto_kem_enc(unsigned char *ct, unsigned char *ss, const unsigned char *pk);
int crypto_kem_dec(unsigned char *ss, const unsigned char *ct, const unsigned char *sk);
# 88 "src/P503.c" 2

