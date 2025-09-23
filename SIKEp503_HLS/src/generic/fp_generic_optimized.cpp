#include <ap_int.h>
#include <climits>
#include <type_traits>
#include "mpx_packed_optimized.hpp"
// fp_generic_optimized.cpp
// DSP使用量を削減した最適化版

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
void fpadd503_optimized(const digit_t *a, const digit_t *b, digit_t *c)
{
    unsigned int i;
    unsigned int carry = 0;
    digit_t mask;

    // a + b
    for (i = 0; i < NWORDS_FIELD; i++)
    {
#pragma HLS PIPELINE II = 1
        ADDC(carry, a[i], b[i], carry, c[i]);
    }
    // subtract p503x2
    carry = 0;
    for (i = 0; i < NWORDS_FIELD; i++)
    {
#pragma HLS PIPELINE II = 1
        SUBC(carry, c[i], ((digit_t *)p503x2)[i], carry, c[i]);
    }
    mask = 0 - (digit_t)carry;
    // conditional add p503
    carry = 0;
    for (i = 0; i < NWORDS_FIELD; i++)
    {
#pragma HLS PIPELINE II = 1
        ADDC(carry, c[i], ((digit_t *)p503x2)[i] & mask, carry, c[i]);
    }
}

//------------------------------------------------------------------------------
// Modular subtraction, c = a - b mod p503
void fpsub503_optimized(const digit_t *a, const digit_t *b, digit_t *c)
{
    unsigned int i;
    unsigned int borrow = 0;
    digit_t mask;

    // a - b
    for (i = 0; i < NWORDS_FIELD; i++)
    {
#pragma HLS PIPELINE II = 1
        SUBC(borrow, a[i], b[i], borrow, c[i]);
    }
    mask = 0 - (digit_t)borrow;
    // conditional add p503
    borrow = 0;
    for (i = 0; i < NWORDS_FIELD; i++)
    {
#pragma HLS PIPELINE II = 1
        ADDC(borrow, c[i], ((digit_t *)p503x2)[i] & mask, borrow, c[i]);
    }
}

//------------------------------------------------------------------------------
// Modular negation, c = -a mod p503
void fpneg503_optimized(digit_t *a)
{
    unsigned int i, borrow = 0;
    for (i = 0; i < NWORDS_FIELD; i++)
    {
#pragma HLS PIPELINE II = 1
        SUBC(borrow, ((digit_t *)p503x2)[i], a[i], borrow, a[i]);
    }
}

//------------------------------------------------------------------------------
// Division by 2, c = a / 2 mod p503
void fpdiv2_503_optimized(const digit_t *a, digit_t *c)
{
    unsigned int i, carry = 0;
    digit_t mask = 0 - (digit_t)(a[0] & 1);
    for (i = 0; i < NWORDS_FIELD; i++)
    {
#pragma HLS PIPELINE II = 1
        ADDC(carry, a[i], ((digit_t *)p503)[i] & mask, carry, c[i]);
    }
    mp_shiftr1(c, NWORDS_FIELD);
}

//------------------------------------------------------------------------------
// Correction to ensure 0 <= a < p503
void fpcorrection503_optimized(digit_t *a)
{
    unsigned int i, borrow = 0;
    digit_t mask;

    for (i = 0; i < NWORDS_FIELD; i++)
    {
#pragma HLS PIPELINE II = 1
        SUBC(borrow, a[i], ((digit_t *)p503)[i], borrow, a[i]);
    }
    mask = 0 - (digit_t)borrow;
    borrow = 0;
    for (i = 0; i < NWORDS_FIELD; i++)
    {
#pragma HLS PIPELINE II = 1
        ADDC(borrow, a[i], ((digit_t *)p503)[i] & mask, borrow, a[i]);
    }
}

//------------------------------------------------------------------------------
// 64x64-bit multiplication using DSP efficiently
void digit_x_digit_optimized(const digit_t a, const digit_t b, digit_t *c)
{
    // DSP使用量を制限するため、明示的に64ビット乗算を使用
#pragma HLS BIND_OP variable = c op = mul impl = dsp
    ap_uint<64> a_uint = (ap_uint<64>)a;
    ap_uint<64> b_uint = (ap_uint<64>)b;
    ap_uint<128> product = a_uint * b_uint;

    c[0] = (digit_t)product.range(63, 0);   // 下位64ビット
    c[1] = (digit_t)product.range(127, 64); // 上位64ビット
}

//------------------------------------------------------------------------------
// DSP使用量を削減した多倍長乗算
void mp_mul_optimized(const digit_t *a, const digit_t *b, digit_t *c, const unsigned int nwords)
{
    // 最適化されたPackedOpsを使用
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

    // DSP使用量を制限するディレクティブ
#pragma HLS ALLOCATION instances = mul limit = 4 function = mp_mul_optimized
    mpx::PackedOpsOptimized<Digit, MAX_NWORDS, true>::mul(a, b, c, nwords);
}

//------------------------------------------------------------------------------
// Montgomery reduction with optimized DSP usage
void rdc_mont_optimized(const dfelm_t ma, felm_t mc)
{
    unsigned int i, j, carry, count = p503_ZERO_WORDS;
    digit_t UV[2], t = 0, u = 0, v = 0;

    // Initialize mc
    for (i = 0; i < NWORDS_FIELD; i++)
    {
#pragma HLS PIPELINE II = 1
        mc[i] = 0;
    }

    // Main reduction loop
    for (i = 0; i < NWORDS_FIELD; i++)
    {
        for (j = 0; j < i; j++)
        {
#pragma HLS PIPELINE II = 1
            if (j < (i - p503_ZERO_WORDS + 1))
            {
                // DSP使用量を制限
#pragma HLS BIND_OP variable = UV op = mul impl = dsp
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

    // Final reduction
    for (i = 0; i < NWORDS_FIELD; i++)
    {
#pragma HLS PIPELINE II = 1
        for (j = i; j < NWORDS_FIELD; j++)
        {
            if (j < (i + p503_ZERO_WORDS))
            {
                MUL(mc[j], ((digit_t *)p503p1)[NWORDS_FIELD + i - j], UV + 1, UV[0]);
                ADDC(0, UV[0], v, carry, v);
                ADDC(carry, UV[1], u, carry, u);
                t += carry;
            }
        }
        ADDC(0, v, 0, carry, v);
        ADDC(carry, u, 0, carry, u);
        t += carry;
        mc[i] = v;
        v = u;
        u = t;
        t = 0;
    }
}

//------------------------------------------------------------------------------
// Optimized field multiplication
void fpmul503_mont_optimized(const digit_t *ma, const digit_t *mb, digit_t *mc)
{
    dfelm_t temp = {0};

    // DSP使用量を制限した乗算
    mp_mul_optimized(ma, mb, temp, NWORDS_FIELD);
    rdc_mont_optimized(temp, mc);
}

//------------------------------------------------------------------------------
// Optimized field squaring
void fpsqr503_mont_optimized(const digit_t *ma, digit_t *mc)
{
    dfelm_t temp = {0};

    // DSP使用量を制限した平方演算
    mp_mul_optimized(ma, ma, temp, NWORDS_FIELD);
    rdc_mont_optimized(temp, mc);
}
