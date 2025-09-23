#include <ap_int.h>
#include <climits>
#include <type_traits>
#include "mpx_packed.hpp"
// fp_generic_hls.cpp
// Renamed from fp_generic.c for Vivado HLS optimization

#include <ap_int.h>
#include <cassert>
#include <typeinfo>
#include <iostream>
#include "../P503_internal.h"

extern const uint64_t p503[NWORDS_FIELD];
extern const uint64_t p503p1[NWORDS_FIELD];
extern const uint64_t p503x2[NWORDS_FIELD];

// Compute bit-width of a digit
static const int W = sizeof(digit_t) * 8;
static const int W_HALF = W / 2;
static const int W_HALF_MINUS_1 = (W / 2) - 1;

//------------------------------------------------------------------------------
// Modular addition, c = a + b mod p503
// HLS pipeline enabled
void fpadd503(const digit_t *a, const digit_t *b, digit_t *c)
{
    unsigned int i;
    unsigned int carry = 0;
    digit_t mask;

    // a + b
    for (i = 0; i < NWORDS_FIELD; i++)
    {
        ADDC(carry, a[i], b[i], carry, c[i]);
    }
    // subtract p503x2
    carry = 0;
    for (i = 0; i < NWORDS_FIELD; i++)
    {
        SUBC(carry, c[i], ((digit_t *)p503x2)[i], carry, c[i]);
    }
    mask = 0 - (digit_t)carry;
    // conditional add p503
    carry = 0;
    for (i = 0; i < NWORDS_FIELD; i++)
    {
        ADDC(carry, c[i], ((digit_t *)p503x2)[i] & mask, carry, c[i]);
    }
}

//------------------------------------------------------------------------------
// Modular subtraction, c = a - b mod p503
void fpsub503(const digit_t *a, const digit_t *b, digit_t *c)
{
    unsigned int i;
    unsigned int borrow = 0;
    digit_t mask;

    // a - b
    for (i = 0; i < NWORDS_FIELD; i++)
    {
        SUBC(borrow, a[i], b[i], borrow, c[i]);
    }
    mask = 0 - (digit_t)borrow;
    // conditional add p503
    borrow = 0;
    for (i = 0; i < NWORDS_FIELD; i++)
    {
        ADDC(borrow, c[i], ((digit_t *)p503x2)[i] & mask, borrow, c[i]);
    }
}

//------------------------------------------------------------------------------
// Modular negation, c = -a mod p503
void fpneg503(digit_t *a)
{
    unsigned int i, borrow = 0;
    for (i = 0; i < NWORDS_FIELD; i++)
    {
        SUBC(borrow, ((digit_t *)p503x2)[i], a[i], borrow, a[i]);
    }
}

//------------------------------------------------------------------------------
// Division by 2, c = a / 2 mod p503
void fpdiv2_503(const digit_t *a, digit_t *c)
{
    unsigned int i, carry = 0;
    digit_t mask = 0 - (digit_t)(a[0] & 1);
    for (i = 0; i < NWORDS_FIELD; i++)
    {
        ADDC(carry, a[i], ((digit_t *)p503)[i] & mask, carry, c[i]);
    }
    mp_shiftr1(c, NWORDS_FIELD);
}

//------------------------------------------------------------------------------
// Correction to ensure 0 <= a < p503
void fpcorrection503(digit_t *a)
{
    unsigned int i, borrow = 0;
    digit_t mask;

    for (i = 0; i < NWORDS_FIELD; i++)
    {
        SUBC(borrow, a[i], ((digit_t *)p503)[i], borrow, a[i]);
    }
    mask = 0 - (digit_t)borrow;
    borrow = 0;
    for (i = 0; i < NWORDS_FIELD; i++)
    {
        ADDC(borrow, a[i], ((digit_t *)p503)[i] & mask, borrow, a[i]);
    }
}

// void digit_x_digit(const digit_t a, const digit_t b, digit_t* c)
// {

//     register digit_t al, ah, bl, bh, temp;
//     digit_t albl, albh, ahbl, ahbh, res1, res2, res3, carry;
//     digit_t mask_low  = (digit_t)(-1) >> (sizeof(digit_t) * 4);
//     digit_t mask_high = (digit_t)(-1) << (sizeof(digit_t) * 4);

//     al = a & mask_low;
//     ah = a >> (sizeof(digit_t) * 4);
//     bl = b & mask_low;
//     bh = b >> (sizeof(digit_t) * 4);

//     albl = al * bl;
//     albh = al * bh;
//     ahbl = ah * bl;
//     ahbh = ah * bh;
//     c[0] = albl & mask_low;

//     res1  = albl >> (sizeof(digit_t) * 4);
//     res2  = ahbl & mask_low;
//     res3  = albh & mask_low;
//     temp  = res1 + res2 + res3;
//     carry = temp >> (sizeof(digit_t) * 4);
//     c[0] ^= temp << (sizeof(digit_t) * 4);

//     res1  = ahbl >> (sizeof(digit_t) * 4);
//     res2  = albh >> (sizeof(digit_t) * 4);
//     res3  = ahbh & mask_low;
//     temp  = res1 + res2 + res3 + carry;
//     c[1] = temp & mask_low;
//     carry = temp & mask_high;
//     c[1] ^= (ahbh & mask_high) + carry;
// }

void digit_x_digit(const digit_t a, const digit_t b, digit_t *c)
{
#pragma HLS INLINE off
#pragma HLS ALLOCATION instances = mul limit = 1 operation
#pragma HLS RESOURCE core = Mul_LUT
#pragma HLS DATAFLOW off

    register digit_t al, ah, bl, bh, temp;
    digit_t albl, albh, ahbl, ahbh, res1, res2, res3, carry;
    digit_t mask_low = (digit_t)(-1) >> (sizeof(digit_t) * 4);
    digit_t mask_high = (digit_t)(-1) << (sizeof(digit_t) * 4);

    al = a & mask_low;
    ah = a >> (sizeof(digit_t) * 4);
    bl = b & mask_low;
    bh = b >> (sizeof(digit_t) * 4);

    albl = al * bl;
    albh = al * bh;
    ahbl = ah * bl;
    ahbh = ah * bh;
    c[0] = albl & mask_low;

    res1 = albl >> (sizeof(digit_t) * 4);
    res2 = ahbl & mask_low;
    res3 = albh & mask_low;
    temp = res1 + res2 + res3;
    carry = temp >> (sizeof(digit_t) * 4);
    c[0] ^= temp << (sizeof(digit_t) * 4);

    res1 = ahbl >> (sizeof(digit_t) * 4);
    res2 = albh >> (sizeof(digit_t) * 4);
    res3 = ahbh & mask_low;
    temp = res1 + res2 + res3 + carry;
    c[1] = temp & mask_low;
    carry = temp & mask_high;
    c[1] ^= (ahbh & mask_high) + carry;
}

// void mp_mul(const digit_t *a, const digit_t *b, digit_t *c, const unsigned int nwords)
// {
//     // AXI4 interfaces
//     // #pragma HLS INTERFACE m_axi      port=a     offset=slave bundle=gmem
//     // #pragma HLS INTERFACE m_axi      port=b     offset=slave bundle=gmem
//     // #pragma HLS INTERFACE m_axi      port=c     offset=slave bundle=gmem
//     // #pragma HLS INTERFACE s_axilite  port=a     bundle=control
//     // #pragma HLS INTERFACE s_axilite  port=b     bundle=control
//     // #pragma HLS INTERFACE s_axilite  port=c     bundle=control
//     // #pragma HLS INTERFACE s_axilite  port=nwords bundle=control
//     // #pragma HLS INTERFACE s_axilite  port=return  bundle=control

//     // Local variables
//     printf("nwords: %d\n", nwords);
//     unsigned int i, j;
//     digit_t t = 0, u = 0, v = 0;
//     ap_uint<2 * W> tmp;
//     unsigned int carry = 0;

//     // Outer loop pipelined
//     for (i = 0; i < nwords; i++)
//     {
//         // Inner loop fully unrolled
//         for (j = 0; j <= i; j++)
//         {
//             digit_x_digit_hls(a[j], b[i - j], tmp);
//             digit_t lo = tmp.range(W - 1, 0);
//             digit_t hi = tmp.range(2 * W - 1, W);

//             ADDC(0, lo, v, carry, v);
//             ADDC(carry, hi, u, carry, u);
//             t += carry;
//         }
//         c[i] = v;
//         v = u;
//         u = t;
//         t = 0;
//     }

//     // Upper words
//     for (i = nwords; i < 2 * nwords - 1; i++)
//     {
//         for (j = i - nwords + 1; j < nwords; j++)
//         {
//             digit_x_digit_hls(a[j], b[i - j], tmp);
//             digit_t lo = tmp.range(W - 1, 0);
//             digit_t hi = tmp.range(2 * W - 1, W);
//             ADDC(0, lo, v, carry, v);
//             ADDC(carry, hi, u, carry, u);
//             t += carry;
//         }
//         c[i] = v;
//         v = u;
//         u = t;
//         t = 0;
//     }
//     c[2 * nwords - 1] = v;
// }

// static const unsigned MAX_NWORDS = 8;
// // オリジナルと同じシグネチャ
// void mp_mul(const digit_t *a, const digit_t *b, digit_t *c, const unsigned int nwords)
// {
//   // 1) 配列 a, b を「一発で乗算できる大きなレジスタ」にパック
//   ap_uint<W*MAX_NWORDS> A = 0, B = 0;
//   for (unsigned i = 0; i < nwords; i++) {
//     A |= (ap_uint<W*MAX_NWORDS>)a[i] << (i * W);
//     B |= (ap_uint<W*MAX_NWORDS>)b[i] << (i * W);
//   }

//   // 2) 一度だけ普通に 乗算
//   ap_uint<2*W*MAX_NWORDS> P = A * B;

//   // 3) 結果をワードごとにスライスして出力
//   for (unsigned i = 0; i < 2 * nwords; i++) {
//     c[i] = P.range((i+1)*W-1, i*W);
//   }
// }

void mp_mul(const digit_t *a, const digit_t *b, digit_t *c, const unsigned int nwords)
{
#pragma HLS INLINE off
#pragma HLS ALLOCATION instances = mul limit = 1 operation
#pragma HLS ALLOCATION instances = mul limit = 1 function
#pragma HLS RESOURCE variable = a core = RAM_1P
#pragma HLS RESOURCE variable = b core = RAM_1P
#pragma HLS RESOURCE variable = c core = RAM_1P
#pragma HLS BIND_STORAGE variable = a type = RAM_1P
#pragma HLS BIND_STORAGE variable = b type = RAM_1P
#pragma HLS BIND_STORAGE variable = c type = RAM_1P
#pragma HLS RESOURCE core = Mul_LUT
#pragma HLS DATAFLOW off
    // Auto-converted by mpx_auto_rewriter_v4_2 (pack × mul × unpack)
    constexpr unsigned MAX_NWORDS = 8;
    using DigitA = std::remove_cv_t<std::remove_pointer_t<decltype(a)>>;
    using DigitB = std::remove_cv_t<std::remove_pointer_t<decltype(b)>>;
    using DigitC = std::remove_cv_t<std::remove_pointer_t<decltype(c)>>;
    static_assert(sizeof(DigitA) == sizeof(DigitB) && sizeof(DigitA) == sizeof(DigitC),
                  "a,b,c digits must have the same size");
    static_assert(std::is_unsigned<DigitA>::value || std::is_class<DigitA>::value,
                  "Digit type must be unsigned or ap_uint-like");
    using Digit = DigitA;
    if (nwords > MAX_NWORDS)
        return;
    mpx::PackedOps<Digit, MAX_NWORDS, true>::mul(a, b, c, nwords);
}

void rdc_mont(const dfelm_t ma, felm_t mc)
{

    unsigned int i, j, carry, count = p503_ZERO_WORDS;
    digit_t UV[2], t = 0, u = 0, v = 0;

    // Initialize mc
    for (i = 0; i < NWORDS_FIELD; i++)
    {
        mc[i] = 0;
    }

    // Main reduction loop
    for (i = 0; i < NWORDS_FIELD; i++)
    {
        for (j = 0; j < i; j++)
        {
            if (j < (i - p503_ZERO_WORDS + 1))
            {
                MUL(mc[j], ((digit_t *)p503p1)[i - j], UV + 1, UV[0]);
                ADDC(0, UV[0], v, carry, v);
                ADDC(carry, UV[1], u, carry, u);
                t += carry;
            }
        }
        ADDC(0, v, ma[i], carry, v);
        ADDC(carry, u, 0, carry, u);
        t += carry;
        mc[i] = v;
        v = u;
        u = t;
        t = 0;
    }

    // Final words
    for (i = NWORDS_FIELD; i < 2 * NWORDS_FIELD - 1; i++)
    {
        if (count > 0)
        {
            count--;
        }
        for (j = i - NWORDS_FIELD + 1; j < NWORDS_FIELD; j++)
        {
            if (j < (NWORDS_FIELD - count))
            {
                MUL(mc[j], ((digit_t *)p503p1)[i - j], UV + 1, UV[0]);
                ADDC(0, UV[0], v, carry, v);
                ADDC(carry, UV[1], u, carry, u);
                t += carry;
            }
        }
        ADDC(0, v, ma[i], carry, v);
        ADDC(carry, u, 0, carry, u);
        t += carry;
        mc[i - NWORDS_FIELD] = v;
        v = u;
        u = t;
        t = 0;
    }
    ADDC(0, v, ma[2 * NWORDS_FIELD - 1], carry, v);
    mc[NWORDS_FIELD - 1] = v;
}
