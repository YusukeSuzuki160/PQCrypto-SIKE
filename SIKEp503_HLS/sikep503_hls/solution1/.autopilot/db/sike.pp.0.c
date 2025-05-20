# 1 "src/sike.c"
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
# 1 "src/sike.c" 2






# 1 "/usr/include/string.h" 1 3 4
# 26 "/usr/include/string.h" 3 4
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
# 27 "/usr/include/string.h" 2 3 4






# 1 "/home2/meltpoint/Xilinx/Vitis/2024.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stddef.h" 1 3 4
# 62 "/home2/meltpoint/Xilinx/Vitis/2024.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 34 "/usr/include/string.h" 2 3 4
# 43 "/usr/include/string.h" 3 4
extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern void *memmove (void *__dest, const void *__src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));





extern void *memccpy (void *__restrict __dest, const void *__restrict __src,
        int __c, size_t __n)
    __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2))) ;




extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int memcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 80 "/usr/include/string.h" 3 4
extern int __memcmpeq (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 107 "/usr/include/string.h" 3 4
extern void *memchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 141 "/usr/include/string.h" 3 4
extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern char *strcat (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncat (char *__restrict __dest, const char *__restrict __src,
        size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int strcmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern int strncmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcoll (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern size_t strxfrm (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
    __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2))) ;




# 1 "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/__locale_t.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/types/__locale_t.h" 3 4
struct __locale_struct
{

  struct __locale_data *__locales[13];


  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;


  const char *__names[13];
};

typedef struct __locale_struct *__locale_t;
# 23 "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h" 2 3 4

typedef __locale_t locale_t;
# 173 "/usr/include/string.h" 2 3 4


extern int strcoll_l (const char *__s1, const char *__s2, locale_t __l)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));


extern size_t strxfrm_l (char *__dest, const char *__src, size_t __n,
    locale_t __l) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 4)))
                                           ;





extern char *strdup (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));






extern char *strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
# 246 "/usr/include/string.h" 3 4
extern char *strchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 273 "/usr/include/string.h" 3 4
extern char *strrchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 286 "/usr/include/string.h" 3 4
extern char *strchrnul (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern size_t strcspn (const char *__s, const char *__reject)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern size_t strspn (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 323 "/usr/include/string.h" 3 4
extern char *strpbrk (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 350 "/usr/include/string.h" 3 4
extern char *strstr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strtok (char *__restrict __s, const char *__restrict __delim)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));



extern char *__strtok_r (char *__restrict __s,
    const char *__restrict __delim,
    char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));

extern char *strtok_r (char *__restrict __s, const char *__restrict __delim,
         char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
# 380 "/usr/include/string.h" 3 4
extern char *strcasestr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));







extern void *memmem (const void *__haystack, size_t __haystacklen,
       const void *__needle, size_t __needlelen)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 3)))

                                         ;



extern void *__mempcpy (void *__restrict __dest,
   const void *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern void *mempcpy (void *__restrict __dest,
        const void *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));




extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));




extern size_t strnlen (const char *__string, size_t __maxlen)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));




extern char *strerror (int __errnum) __attribute__ ((__nothrow__ ));
# 432 "/usr/include/string.h" 3 4
extern int strerror_r (int __errnum, char *__buf, size_t __buflen) __asm__ ("" "__xpg_strerror_r") __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)))


                                          ;
# 458 "/usr/include/string.h" 3 4
extern char *strerror_l (int __errnum, locale_t __l) __attribute__ ((__nothrow__ ));




# 1 "/usr/include/strings.h" 1 3 4
# 23 "/usr/include/strings.h" 3 4
# 1 "/home2/meltpoint/Xilinx/Vitis/2024.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stddef.h" 1 3 4
# 24 "/usr/include/strings.h" 2 3 4
# 34 "/usr/include/strings.h" 3 4
extern int bcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern void bcopy (const void *__src, void *__dest, size_t __n)
  __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern void bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 68 "/usr/include/strings.h" 3 4
extern char *index (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 96 "/usr/include/strings.h" 3 4
extern char *rindex (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));






extern int ffs (int __i) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));





extern int ffsl (long int __l) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
__extension__ extern int ffsll (long long int __ll)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));



extern int strcasecmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strncasecmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));






extern int strcasecmp_l (const char *__s1, const char *__s2, locale_t __loc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));



extern int strncasecmp_l (const char *__s1, const char *__s2,
     size_t __n, locale_t __loc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 4)));
# 463 "/usr/include/string.h" 2 3 4



extern void explicit_bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)))
                                                  ;



extern char *strsep (char **__restrict __stringp,
       const char *__restrict __delim)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));




extern char *strsignal (int __sig) __attribute__ ((__nothrow__ ));
# 489 "/usr/include/string.h" 3 4
extern char *__stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));



extern char *__stpncpy (char *__restrict __dest,
   const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));




extern size_t strlcpy (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
  __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2))) ;



extern size_t strlcat (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
  __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2))) ;
# 8 "src/sike.c" 2
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
# 9 "src/sike.c" 2
# 1 "src/sha3/fips202.h" 1
# 10 "src/sha3/fips202.h"
void shake128_absorb(uint64_t *s, const unsigned char *input, unsigned int inputByteLen);
void shake128_squeezeblocks(unsigned char *output, unsigned long long nblocks, uint64_t *s);
void shake128(unsigned char *output, unsigned long long outlen, const unsigned char *input, unsigned long long inlen);

void cshake128_simple_absorb(uint64_t *s, uint16_t cstm, const unsigned char *in, unsigned long long inlen);
void cshake128_simple_squeezeblocks(unsigned char *output, unsigned long long nblocks, uint64_t *s);
void cshake128_simple(unsigned char *output, unsigned long long outlen, uint16_t cstm, const unsigned char *in, unsigned long long inlen);

void shake256_absorb(uint64_t *s, const unsigned char *input, unsigned int inputByteLen);
void shake256_squeezeblocks(unsigned char *output, unsigned long long nblocks, uint64_t *s);
void shake256(unsigned char *output, unsigned long long outlen, const unsigned char *input, unsigned long long inlen);

void cshake256_simple_absorb(uint64_t *s, uint16_t cstm, const unsigned char *in, unsigned long long inlen);
void cshake256_simple_squeezeblocks(unsigned char *output, unsigned long long nblocks, uint64_t *s);
void cshake256_simple(unsigned char *output, unsigned long long outlen, uint16_t cstm, const unsigned char *in, unsigned long long inlen);
# 10 "src/sike.c" 2
# 1 "src/random/random.h" 1








void randombytes(unsigned char *x, unsigned long long xlen);
# 11 "src/sike.c" 2


int crypto_kem_keypair(unsigned char *pk, unsigned char *sk)
{




    randombytes(sk, 24);
    random_mod_order_B(sk + 24);


    EphemeralKeyGeneration_B(sk + 24, pk);


    memcpy(&sk[24 + (253 + 7) / 8], pk, 378);

    return 0;
}


int crypto_kem_enc(unsigned char *ct, unsigned char *ss, const unsigned char *pk)
{



    const uint16_t G = 0;
    const uint16_t H = 1;
    const uint16_t P = 2;
    unsigned char ephemeralsk[(250 + 7) / 8];
    unsigned char jinvariant[2 * ((503 + 7) / 8)];
    unsigned char h[24];
    unsigned char temp[402 +24];
    unsigned int i;


    randombytes(temp, 24);
    memcpy(&temp[24], pk, 378);
    cshake256_simple(ephemeralsk, (250 + 7) / 8, G, temp, 378 +24);
    ephemeralsk[(250 + 7) / 8 - 1] &= 0x03;


    EphemeralKeyGeneration_A(ephemeralsk, ct);
    EphemeralSecretAgreement_A(ephemeralsk, pk, jinvariant);
    cshake256_simple(h, 24, P, jinvariant, 2 * ((503 + 7) / 8));
    VITIS_LOOP_56_1: for (i = 0; i < 24; i++) ct[i + 378] = temp[i] ^ h[i];


    memcpy(&temp[24], ct, 402);
    cshake256_simple(ss, 16, H, temp, 402 +24);

    return 0;
}


int crypto_kem_dec(unsigned char *ss, const unsigned char *ct, const unsigned char *sk)
{



    const uint16_t G = 0;
    const uint16_t H = 1;
    const uint16_t P = 2;
    unsigned char ephemeralsk_[(250 + 7) / 8];
    unsigned char jinvariant_[2 * ((503 + 7) / 8)];
    unsigned char h_[24];
    unsigned char c0_[378];
    unsigned char temp[402 +24];
    unsigned int i;


    EphemeralSecretAgreement_B(sk + 24, ct, jinvariant_);
    cshake256_simple(h_, 24, P, jinvariant_, 2 * ((503 + 7) / 8));
    VITIS_LOOP_84_1: for (i = 0; i < 24; i++) temp[i] = ct[i + 378] ^ h_[i];


    memcpy(&temp[24], &sk[24 + (253 + 7) / 8], 378);
    cshake256_simple(ephemeralsk_, (250 + 7) / 8, G, temp, 378 +24);
    ephemeralsk_[(250 + 7) / 8 - 1] &= 0x03;


    EphemeralKeyGeneration_A(ephemeralsk_, c0_);
    if (memcmp(c0_, ct, 378) != 0) {
        memcpy(temp, sk, 24);
    }
    memcpy(&temp[24], ct, 402);
    cshake256_simple(ss, 16, H, temp, 402 +24);

    return 0;
}
