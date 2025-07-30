#include "../P503_internal.h"  
extern const uint64_t p503[NWORDS_FIELD];
extern const uint64_t p503p1[NWORDS_FIELD]; 
extern const uint64_t p503x2[NWORDS_FIELD];  // 元コード：グローバル定数定義 :contentReference[oaicite:0]{index=0}

//------------------------------------------------------------------------------
// Modular addition, c = a + b mod p503
// 元コード：fpadd503 :contentReference[oaicite:1]{index=1} :contentReference[oaicite:2]{index=2}
__inline void fpadd503(const digit_t* a, const digit_t* b, digit_t* c)
{
#pragma HLS PIPELINE II=1

    unsigned int i, carry = 0;
    digit_t mask;

    for (i = 0; i < NWORDS_FIELD; i++) {
        ADDC(carry, a[i], b[i], carry, c[i]);
    }
    carry = 0;
    for (i = 0; i < NWORDS_FIELD; i++) {
        SUBC(carry, c[i], ((digit_t*)p503x2)[i], carry, c[i]);
    }
    mask = 0 - (digit_t)carry;
    carry = 0;
    for (i = 0; i < NWORDS_FIELD; i++) {
        ADDC(carry, c[i], ((digit_t*)p503x2)[i] & mask, carry, c[i]);
    }
}

//------------------------------------------------------------------------------
// Modular subtraction, c = a - b mod p503
// 元コード：fpsub503 :contentReference[oaicite:3]{index=3} :contentReference[oaicite:4]{index=4}
__inline void fpsub503(const digit_t* a, const digit_t* b, digit_t* c)
{

    unsigned int i, borrow = 0;
    digit_t mask;

    for (i = 0; i < NWORDS_FIELD; i++) {
        SUBC(borrow, a[i], b[i], borrow, c[i]);
    }
    mask = 0 - (digit_t)borrow;
    borrow = 0;
    for (i = 0; i < NWORDS_FIELD; i++) {
        ADDC(borrow, c[i], ((digit_t*)p503x2)[i] & mask, borrow, c[i]);
    }
}

//------------------------------------------------------------------------------
// Modular negation, a = -a mod p503
// 元コード：fpneg503 :contentReference[oaicite:5]{index=5}
__inline void fpneg503(digit_t* a)
{

    unsigned int i, borrow = 0;
    for (i = 0; i < NWORDS_FIELD; i++) {
        SUBC(borrow, ((digit_t*)p503x2)[i], a[i], borrow, a[i]);
    }
}

//------------------------------------------------------------------------------
// Modular division by two, c = a/2 mod p503
// 元コード：fpdiv2_503 :contentReference[oaicite:6]{index=6}
void fpdiv2_503(const digit_t* a, digit_t* c)
{

    unsigned int i, carry = 0;
    digit_t mask = 0 - (digit_t)(a[0] & 1);
    for (i = 0; i < NWORDS_FIELD; i++) {
        ADDC(carry, a[i], ((digit_t*)p503)[i] & mask, carry, c[i]);
    }
    mp_shiftr1(c, NWORDS_FIELD);
}

//------------------------------------------------------------------------------
// Correction to reduce a in [0,2*p503-1] to [0,p503-1]
// 元コード：fpcorrection503 :contentReference[oaicite:7]{index=7} :contentReference[oaicite:8]{index=8}
void fpcorrection503(digit_t* a)
{

    unsigned int i, borrow = 0;
    digit_t mask;

    for (i = 0; i < NWORDS_FIELD; i++) {
        SUBC(borrow, a[i], ((digit_t*)p503)[i], borrow, a[i]);
    }
    mask = 0 - (digit_t)borrow;
    borrow = 0;
    for (i = 0; i < NWORDS_FIELD; i++) {
        ADDC(borrow, a[i], ((digit_t*)p503)[i] & mask, borrow, a[i]);
    }
}

//------------------------------------------------------------------------------
// Digit multiplication, digit * digit -> 2-digit result
// 元コード：digit_x_digit :contentReference[oaicite:9]{index=9}
void digit_x_digit(const digit_t a, const digit_t b, digit_t* c)
{

    register digit_t al, ah, bl, bh, temp;
    digit_t albl, albh, ahbl, ahbh, res1, res2, res3, carry;
    digit_t mask_low  = (digit_t)(-1) >> (sizeof(digit_t) * 4);
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

    res1  = albl >> (sizeof(digit_t) * 4);
    res2  = ahbl & mask_low;
    res3  = albh & mask_low;  
    temp  = res1 + res2 + res3;
    carry = temp >> (sizeof(digit_t) * 4);
    c[0] ^= temp << (sizeof(digit_t) * 4);    

    res1  = ahbl >> (sizeof(digit_t) * 4);
    res2  = albh >> (sizeof(digit_t) * 4);
    res3  = ahbh & mask_low;
    temp  = res1 + res2 + res3 + carry;
    c[1] = temp & mask_low;                   
    carry = temp & mask_high; 
    c[1] ^= (ahbh & mask_high) + carry;       
}

//------------------------------------------------------------------------------
// Multiprecision comba multiply, c = a * b
// 元コード：mp_mul :contentReference[oaicite:10]{index=10} :contentReference[oaicite:11]{index=11}
void mp_mul(const digit_t* a, const digit_t* b, digit_t* c, const unsigned int nwords)
{
    // AXI4 interfaces
// #pragma HLS INTERFACE m_axi      port=a     offset=slave bundle=gmem
// #pragma HLS INTERFACE m_axi      port=b     offset=slave bundle=gmem
// #pragma HLS INTERFACE m_axi      port=c     offset=slave bundle=gmem
// #pragma HLS INTERFACE s_axilite  port=a     bundle=control
// #pragma HLS INTERFACE s_axilite  port=b     bundle=control
// #pragma HLS INTERFACE s_axilite  port=c     bundle=control
// #pragma HLS INTERFACE s_axilite  port=nwords bundle=control
// #pragma HLS INTERFACE s_axilite  port=return  bundle=control

    // Local variables
    unsigned int i, j;
    digit_t      t = 0, u = 0, v = 0, UV[2];
    unsigned int carry = 0;

    // Outer loop pipelined
    for (i = 0; i < nwords; i++) {
        // Inner loop fully unrolled
        for (j = 0; j <= i; j++) {
            MUL(a[j],     b[i-j], UV+1, UV[0]);
            ADDC(0,       UV[0],   v,     carry, v);
            ADDC(carry,   UV[1],   u,     carry, u);
            t += carry;
        }
        c[i] = v;
        v    = u;  u = t;  t = 0;
    }

    // Upper words
    for (i = nwords; i < 2*nwords-1; i++) {
        for (j = i-nwords+1; j < nwords; j++) {
            MUL(a[j],     b[i-j], UV+1, UV[0]);
            ADDC(0,       UV[0],   v,     carry, v);
            ADDC(carry,   UV[1],   u,     carry, u);
            t += carry;
        }
        c[i] = v;
        v    = u;  u = t;  t = 0;
    }
    c[2*nwords-1] = v;
}

//------------------------------------------------------------------------------
// Montgomery reduction, mc = ma * R^-1 mod p503x2
// 元コード：rdc_mont :contentReference[oaicite:12]{index=12}
void rdc_mont(const dfelm_t ma, felm_t mc)
{
    // AXI4 interfaces
// #pragma HLS INTERFACE m_axi      port=ma    offset=slave bundle=gmem
// #pragma HLS INTERFACE m_axi      port=mc    offset=slave bundle=gmem
// #pragma HLS INTERFACE s_axilite  port=ma    bundle=control
// #pragma HLS INTERFACE s_axilite  port=mc    bundle=control
// #pragma HLS INTERFACE s_axilite  port=return bundle=control

    unsigned int i, j, carry, count = p503_ZERO_WORDS;
    digit_t UV[2], t = 0, u = 0, v = 0;

    // Initialize mc
    for (i = 0; i < NWORDS_FIELD; i++) {
        mc[i] = 0;
    }

    // Main reduction loop
    for (i = 0; i < NWORDS_FIELD; i++) {
        for (j = 0; j < i; j++) {
            if (j < (i - p503_ZERO_WORDS + 1)) {
                MUL(mc[j], ((digit_t*)p503p1)[i-j], UV+1, UV[0]);
                ADDC(0, UV[0], v, carry, v);
                ADDC(carry, UV[1], u, carry, u);
                t += carry;
            }
        }
        ADDC(0, v, ma[i], carry, v);
        ADDC(carry, u, 0, carry, u);
        t += carry;
        mc[i] = v;  v = u;  u = t;  t = 0;
    }

    // Final words
    for (i = NWORDS_FIELD; i < 2*NWORDS_FIELD-1; i++) {
        if (count > 0) { count--; }
        for (j = i-NWORDS_FIELD+1; j < NWORDS_FIELD; j++) {
            if (j < (NWORDS_FIELD - count)) {
                MUL(mc[j], ((digit_t*)p503p1)[i-j], UV+1, UV[0]);
                ADDC(0, UV[0], v, carry, v);
                ADDC(carry, UV[1], u, carry, u);
                t += carry;
            }
        }
        ADDC(0, v, ma[i], carry, v);
        ADDC(carry, u, 0, carry, u);
        t += carry;
        mc[i-NWORDS_FIELD] = v;  v = u;  u = t;  t = 0;
    }
    ADDC(0, v, ma[2*NWORDS_FIELD-1], carry, v);
    mc[NWORDS_FIELD-1] = v;
}
