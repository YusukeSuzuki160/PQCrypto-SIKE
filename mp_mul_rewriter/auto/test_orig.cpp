// test_orig.cpp
// 変換前のmp_mul_origを使用するテスト
#include <ap_int.h>
#include <climits>
#include <cstdint>
#include <iostream>
#include <cstring>

#define W 64
using digit_t = uint64_t;

static inline unsigned idx_in(unsigned i, unsigned n) { return n - 1 - i; }
static inline unsigned idx_out(unsigned i, unsigned n2) { return n2 - 1 - i; }

#define MUL(x, y, HI_ptr, LO_out)                                                 \
    do                                                                            \
    {                                                                             \
        __uint128_t _p = ((__uint128_t)(digit_t)(x) * (__uint128_t)(digit_t)(y)); \
        (LO_out) = (digit_t)_p;                                                   \
        *(HI_ptr) = (digit_t)(_p >> W);                                           \
    } while (0)

#define ADDC(cin, a, b, cout, sum_out)                                                                         \
    do                                                                                                         \
    {                                                                                                          \
        __uint128_t _s = (__uint128_t)(unsigned)(cin) + (__uint128_t)(digit_t)(a) + (__uint128_t)(digit_t)(b); \
        (sum_out) = (digit_t)_s;                                                                               \
        (cout) = (unsigned)((_s >> W) & 1);                                                                    \
    } while (0)

// 変換前の学校式乗算
void mp_mul_orig(const digit_t *a, const digit_t *b, digit_t *c, const unsigned nwords)
{
    unsigned i, j;
    digit_t t = 0, u = 0, v = 0, UV[2];
    unsigned carry = 0;

    // 下三角: i=0..n-1, j=0..i
    for (i = 0; i < nwords; i++)
    {
        for (j = 0; j <= i; j++)
        {
            const digit_t aj = a[idx_in(j, nwords)];
            const digit_t bj = b[idx_in(i - j, nwords)];
            MUL(aj, bj, UV + 1, UV[0]);
            ADDC(0, UV[0], v, carry, v);
            ADDC(carry, UV[1], u, carry, u);
            t += carry;
        }
        c[idx_out(i, 2 * nwords)] = v;
        v = u;
        u = t;
        t = 0;
    }

    // 上三角: i=n..2n-2, j=i-n+1..n-1
    for (i = nwords; i < 2 * nwords - 1; i++)
    {
        for (j = i - nwords + 1; j < nwords; j++)
        {
            const digit_t aj = a[idx_in(j, nwords)];
            const digit_t bj = b[idx_in(i - j, nwords)];
            MUL(aj, bj, UV + 1, UV[0]);
            ADDC(0, UV[0], v, carry, v);
            ADDC(carry, UV[1], u, carry, u);
            t += carry;
        }
        c[idx_out(i, 2 * nwords)] = v;
        v = u;
        u = t;
        t = 0;
    }
    c[idx_out(2 * nwords - 1, 2 * nwords)] = v;
}

// HLS トップ関数（簡易版）
void test_mul_orig(const digit_t a[8], const digit_t b[8], digit_t c[16])
{
#pragma HLS INTERFACE bram port = a
#pragma HLS INTERFACE bram port = b
#pragma HLS INTERFACE bram port = c
#pragma HLS INTERFACE s_axilite port = return bundle = control
    mp_mul_orig(a, b, c, 8);
}

// C シミュレーション用
#ifndef __SYNTHESIS__
int main()
{
    digit_t a[8] = {1, 2, 3, 4, 5, 6, 7, 8};
    digit_t b[8] = {9, 10, 11, 12, 13, 14, 15, 16};
    digit_t c[16] = {0};

    mp_mul_orig(a, b, c, 8);

    std::cout << "Original multiplication result:\n";
    for (int i = 0; i < 16; i++)
    {
        std::cout << "c[" << i << "] = " << c[i] << "\n";
    }

    return 0;
}
#endif
