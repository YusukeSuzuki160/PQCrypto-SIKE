# 1 "src/sidh.c"
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
# 1 "src/sidh.c" 2






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
# 8 "src/sidh.c" 2
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
# 9 "src/sidh.c" 2
# 1 "src/random/random.h" 1








void randombytes(unsigned char *x, unsigned long long xlen);
# 10 "src/sidh.c" 2

static void clear_words(void *mem, digit_t nwords)
{

    unsigned int i;
    volatile digit_t *v = mem;

    VITIS_LOOP_17_1: for (i = 0; i < nwords; i++)
    {
        v[i] = 0;
    }
}

static void init_basis(digit_t *gen, f2elm_t XP, f2elm_t XQ, f2elm_t XR)
{

    fpcopy503(gen, XP[0]);
    fpcopy503(gen + 8, XP[1]);
    fpcopy503(gen + 2 * 8, XQ[0]);
    fpzero503(XQ[1]);
    fpcopy503(gen + 3 * 8, XR[0]);
    fpcopy503(gen + 4 * 8, XR[1]);
}

static void fp2_encode(const f2elm_t x, unsigned char *enc)
{
    unsigned int i;
    f2elm_t t;

    from_fp2mont(x, t);
    VITIS_LOOP_40_1: for (i = 0; i < 2 * ((503 + 7) / 8) / 2; i++)
    {
        enc[i] = ((unsigned char *)t)[i];
        enc[i + 2 * ((503 + 7) / 8) / 2] = ((unsigned char *)t)[i + 512 / 8];
    }
}

static void fp2_decode(const unsigned char *enc, f2elm_t x)
{
    unsigned int i;

    VITIS_LOOP_51_1: for (i = 0; i < 2 * (512 / 8); i++)
        ((unsigned char *)x)[i] = 0;
    VITIS_LOOP_53_2: for (i = 0; i < 2 * ((503 + 7) / 8) / 2; i++)
    {
        ((unsigned char *)x)[i] = enc[i];
        ((unsigned char *)x)[i + 512 / 8] = enc[i + 2 * ((503 + 7) / 8) / 2];
    }
    to_fp2mont(x, x);
}

void random_mod_order_A(unsigned char *random_digits)
{

    unsigned long long nbytes = (((250)+7)/8);

    clear_words((void *)random_digits, ((256 + 64 - 1) / 64));
    randombytes(random_digits, nbytes);
    random_digits[nbytes - 1] &= 0x03;
}

void random_mod_order_B(unsigned char *random_digits)
{

    unsigned long long nbytes = (((253 - 1)+7)/8);

    clear_words((void *)random_digits, ((256 + 64 - 1) / 64));
    randombytes(random_digits, nbytes);
    random_digits[nbytes - 1] &= 0x0F;
}

int EphemeralKeyGeneration_A(const unsigned char *PrivateKeyA, unsigned char *PublicKeyA)
{


    point_proj_t R, phiP = {0}, phiQ = {0}, phiR = {0}, pts[7];
    f2elm_t XPA, XQA, XRA, coeff[3], A24plus = {0}, C24 = {0}, A = {0};
    unsigned int i, row, m, index = 0, pts_index[7], npts = 0, ii = 0;


    init_basis((digit_t *)A_gen, XPA, XQA, XRA);
    init_basis((digit_t *)B_gen, phiP->X, phiQ->X, phiR->X);
    fpcopy503((digit_t *)&Montgomery_one, (phiP->Z)[0]);
    fpcopy503((digit_t *)&Montgomery_one, (phiQ->Z)[0]);
    fpcopy503((digit_t *)&Montgomery_one, (phiR->Z)[0]);


    fpcopy503((digit_t *)&Montgomery_one, A24plus[0]);
    fp2add503(A24plus, A24plus, C24);


    LADDER3PT(XPA, XQA, XRA, (digit_t *)PrivateKeyA, 0, R, A);


    index = 0;
    VITIS_LOOP_105_1: for (row = 1; row < 125; row++)
    {
        VITIS_LOOP_107_2: while (index < 125 - row)
        {
            fp2copy503(R->X, pts[npts]->X);
            fp2copy503(R->Z, pts[npts]->Z);
            pts_index[npts++] = index;
            m = strat_Alice[ii++];
            xDBLe(R, R, A24plus, C24, (int)(2 * m));
            index += m;
        }
        get_4_isog(R, A24plus, C24, coeff);

        VITIS_LOOP_118_3: for (i = 0; i < npts; i++)
        {
            eval_4_isog(pts[i], coeff);
        }
        eval_4_isog(phiP, coeff);
        eval_4_isog(phiQ, coeff);
        eval_4_isog(phiR, coeff);

        fp2copy503(pts[npts - 1]->X, R->X);
        fp2copy503(pts[npts - 1]->Z, R->Z);
        index = pts_index[npts - 1];
        npts -= 1;
    }

    get_4_isog(R, A24plus, C24, coeff);
    eval_4_isog(phiP, coeff);
    eval_4_isog(phiQ, coeff);
    eval_4_isog(phiR, coeff);

    inv_3_way(phiP->Z, phiQ->Z, phiR->Z);
    fp2mul503_mont(phiP->X, phiP->Z, phiP->X);
    fp2mul503_mont(phiQ->X, phiQ->Z, phiQ->X);
    fp2mul503_mont(phiR->X, phiR->Z, phiR->X);


    fp2_encode(phiP->X, PublicKeyA);
    fp2_encode(phiQ->X, PublicKeyA + 2 * ((503 + 7) / 8));
    fp2_encode(phiR->X, PublicKeyA + 2 * 2 * ((503 + 7) / 8));

    return 0;
}

int EphemeralKeyGeneration_B(const unsigned char *PrivateKeyB, unsigned char *PublicKeyB)
{


    point_proj_t R, phiP = {0}, phiQ = {0}, phiR = {0}, pts[8];
    f2elm_t XPB, XQB, XRB, coeff[3], A24plus = {0}, A24minus = {0}, A = {0};
    unsigned int i, row, m, index = 0, pts_index[8], npts = 0, ii = 0;


    init_basis((digit_t *)B_gen, XPB, XQB, XRB);
    init_basis((digit_t *)A_gen, phiP->X, phiQ->X, phiR->X);
    fpcopy503((digit_t *)&Montgomery_one, (phiP->Z)[0]);
    fpcopy503((digit_t *)&Montgomery_one, (phiQ->Z)[0]);
    fpcopy503((digit_t *)&Montgomery_one, (phiR->Z)[0]);


    fpcopy503((digit_t *)&Montgomery_one, A24plus[0]);
    fp2add503(A24plus, A24plus, A24plus);
    fp2copy503(A24plus, A24minus);
    fp2neg503(A24minus);


    LADDER3PT(XPB, XQB, XRB, (digit_t *)PrivateKeyB, 1, R, A);


    index = 0;
    VITIS_LOOP_176_1: for (row = 1; row < 159; row++)
    {
        VITIS_LOOP_178_2: while (index < 159 - row)
        {
            fp2copy503(R->X, pts[npts]->X);
            fp2copy503(R->Z, pts[npts]->Z);
            pts_index[npts++] = index;
            m = strat_Bob[ii++];
            xTPLe(R, R, A24minus, A24plus, (int)m);
            index += m;
        }
        get_3_isog(R, A24minus, A24plus, coeff);

        VITIS_LOOP_189_3: for (i = 0; i < npts; i++)
        {
            eval_3_isog(pts[i], coeff);
        }
        eval_3_isog(phiP, coeff);
        eval_3_isog(phiQ, coeff);
        eval_3_isog(phiR, coeff);

        fp2copy503(pts[npts - 1]->X, R->X);
        fp2copy503(pts[npts - 1]->Z, R->Z);
        index = pts_index[npts - 1];
        npts -= 1;
    }

    get_3_isog(R, A24minus, A24plus, coeff);
    eval_3_isog(phiP, coeff);
    eval_3_isog(phiQ, coeff);
    eval_3_isog(phiR, coeff);

    inv_3_way(phiP->Z, phiQ->Z, phiR->Z);
    fp2mul503_mont(phiP->X, phiP->Z, phiP->X);
    fp2mul503_mont(phiQ->X, phiQ->Z, phiQ->X);
    fp2mul503_mont(phiR->X, phiR->Z, phiR->X);


    fp2_encode(phiP->X, PublicKeyB);
    fp2_encode(phiQ->X, PublicKeyB + 2 * ((503 + 7) / 8));
    fp2_encode(phiR->X, PublicKeyB + 2 * 2 * ((503 + 7) / 8));

    return 0;
}

int EphemeralSecretAgreement_A(const unsigned char *PrivateKeyA, const unsigned char *PublicKeyB, unsigned char *SharedSecretA)
{




    point_proj_t R, pts[7];
    f2elm_t coeff[3], PKB[3], jinv;
    f2elm_t A24plus = {0}, C24 = {0}, A = {0};
    unsigned int i, row, m, index = 0, pts_index[7], npts = 0, ii = 0;


    fp2_decode(PublicKeyB, PKB[0]);
    fp2_decode(PublicKeyB + 2 * ((503 + 7) / 8), PKB[1]);
    fp2_decode(PublicKeyB + 2 * 2 * ((503 + 7) / 8), PKB[2]);


    get_A(PKB[0], PKB[1], PKB[2], A);
    fpadd503((digit_t *)&Montgomery_one, (digit_t *)&Montgomery_one, C24[0]);
    fp2add503(A, C24, A24plus);
    fpadd503(C24[0], C24[0], C24[0]);


    LADDER3PT(PKB[0], PKB[1], PKB[2], (digit_t *)PrivateKeyA, 0, R, A);


    index = 0;
    VITIS_LOOP_248_1: for (row = 1; row < 125; row++)
    {
        VITIS_LOOP_250_2: while (index < 125 - row)
        {
            fp2copy503(R->X, pts[npts]->X);
            fp2copy503(R->Z, pts[npts]->Z);
            pts_index[npts++] = index;
            m = strat_Alice[ii++];
            xDBLe(R, R, A24plus, C24, (int)(2 * m));
            index += m;
        }
        get_4_isog(R, A24plus, C24, coeff);

        VITIS_LOOP_261_3: for (i = 0; i < npts; i++)
        {
            eval_4_isog(pts[i], coeff);
        }

        fp2copy503(pts[npts - 1]->X, R->X);
        fp2copy503(pts[npts - 1]->Z, R->Z);
        index = pts_index[npts - 1];
        npts -= 1;
    }

    get_4_isog(R, A24plus, C24, coeff);
    fp2div2_503(C24, C24);
    fp2sub503(A24plus, C24, A24plus);
    fp2div2_503(C24, C24);
    j_inv(A24plus, C24, jinv);
    fp2_encode(jinv, SharedSecretA);

    return 0;
}

int EphemeralSecretAgreement_B(const unsigned char *PrivateKeyB, const unsigned char *PublicKeyA, unsigned char *SharedSecretB)
{




    point_proj_t R, pts[8];
    f2elm_t coeff[3], PKB[3], jinv;
    f2elm_t A24plus = {0}, A24minus = {0}, A = {0};
    unsigned int i, row, m, index = 0, pts_index[8], npts = 0, ii = 0;


    fp2_decode(PublicKeyA, PKB[0]);
    fp2_decode(PublicKeyA + 2 * ((503 + 7) / 8), PKB[1]);
    fp2_decode(PublicKeyA + 2 * 2 * ((503 + 7) / 8), PKB[2]);


    get_A(PKB[0], PKB[1], PKB[2], A);
    fpadd503((digit_t *)&Montgomery_one, (digit_t *)&Montgomery_one, A24minus[0]);
    fp2add503(A, A24minus, A24plus);
    fp2sub503(A, A24minus, A24minus);


    LADDER3PT(PKB[0], PKB[1], PKB[2], (digit_t *)PrivateKeyB, 1, R, A);


    index = 0;
    VITIS_LOOP_309_1: for (row = 1; row < 159; row++)
    {
        VITIS_LOOP_311_2: while (index < 159 - row)
        {
            fp2copy503(R->X, pts[npts]->X);
            fp2copy503(R->Z, pts[npts]->Z);
            pts_index[npts++] = index;
            m = strat_Bob[ii++];
            xTPLe(R, R, A24minus, A24plus, (int)m);
            index += m;
        }
        get_3_isog(R, A24minus, A24plus, coeff);

        VITIS_LOOP_322_3: for (i = 0; i < npts; i++)
        {
            eval_3_isog(pts[i], coeff);
        }

        fp2copy503(pts[npts - 1]->X, R->X);
        fp2copy503(pts[npts - 1]->Z, R->Z);
        index = pts_index[npts - 1];
        npts -= 1;
    }

    get_3_isog(R, A24minus, A24plus, coeff);
    fp2add503(A24plus, A24minus, A);
    fp2add503(A, A, A);
    fp2sub503(A24plus, A24minus, A24plus);
    j_inv(A, A24plus, jinv);
    fp2_encode(jinv, SharedSecretB);

    return 0;
}
