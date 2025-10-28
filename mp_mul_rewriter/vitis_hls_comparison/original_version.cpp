// mp_mul_original_version.cpp
// 元の学校式実装（HLS対応）
// Vitis HLS用トップ関数としてmp_mul_origを定義

#include <cstdint>
#include <climits>
#include <cstring>
#include <ap_int.h>

// ====== 設定（必要に応じて変更） ======
using digit_t = uint64_t;             // 語幅: 64bit
static const unsigned MAX_NWORDS = 8; // 想定最大語数
static const int LSW_FIRST = 1;       // 1: a[0]がLSW, 0: a[0]がMSW

// ====== HLS 向け ap_uint を使用 ======
#define USE_AP_INT
#include <ap_int.h>
#define W (CHAR_BIT * sizeof(digit_t))

// x*y -> (HI, LO) に分割
#define MUL(x, y, HI_ptr, LO_out)                              \
    do                                                         \
    {                                                          \
        ap_uint<2 * W> _p = (ap_uint<W>)(x) * (ap_uint<W>)(y); \
        (LO_out) = (digit_t)_p;                                \
        *(HI_ptr) = (digit_t)(_p >> W);                        \
    } while (0)

// cin + a + b -> (cout, sum)
#define ADDC(cin, a, b, cout, sum_out)                                                 \
    do                                                                                 \
    {                                                                                  \
        ap_uint<W + 1> _s = (ap_uint<W + 1>)(cin) + (ap_uint<W>)(a) + (ap_uint<W>)(b); \
        (sum_out) = (digit_t)_s;                                                       \
        (cout) = (unsigned)(_s >> W);                                                  \
    } while (0)

// ====== INDEX ヘルパ ======
static inline unsigned idx_in(unsigned i, unsigned n)
{
    return LSW_FIRST ? i : (n - 1 - i);
}
static inline unsigned idx_out(unsigned i, unsigned n2)
{
    // 出力2n語のインデックス
    return LSW_FIRST ? i : (n2 - 1 - i);
}

// 乗算: c = a * b（2n語）, 学校式下三角+上三角
void mp_mul_orig(const digit_t *a, const digit_t *b, digit_t *c, const unsigned nwords)
{
#pragma HLS INTERFACE m_axi port = a offset = slave bundle = gmem
#pragma HLS INTERFACE m_axi port = b offset = slave bundle = gmem
#pragma HLS INTERFACE m_axi port = c offset = slave bundle = gmem
#pragma HLS INTERFACE s_axilite port = a bundle = control
#pragma HLS INTERFACE s_axilite port = b bundle = control
#pragma HLS INTERFACE s_axilite port = c bundle = control
#pragma HLS INTERFACE s_axilite port = nwords bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control

    unsigned i, j;
    digit_t t = 0, u = 0, v = 0, UV[2];
    unsigned carry = 0;

    // 下三角: i=0..n-1, j=0..i
    for (i = 0; i < nwords; i++)
    {
#pragma HLS PIPELINE II = 1
        for (j = 0; j <= i; j++)
        {
#pragma HLS UNROLL
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
#pragma HLS PIPELINE II = 1
        for (j = i - nwords + 1; j < nwords; j++)
        {
#pragma HLS UNROLL
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

// HLSトップ関数
void mp_mul_top(const digit_t *a, const digit_t *b, digit_t *c, unsigned int nwords)
{
#pragma HLS INTERFACE m_axi port = a offset = slave bundle = gmem
#pragma HLS INTERFACE m_axi port = b offset = slave bundle = gmem
#pragma HLS INTERFACE m_axi port = c offset = slave bundle = gmem
#pragma HLS INTERFACE s_axilite port = a bundle = control
#pragma HLS INTERFACE s_axilite port = b bundle = control
#pragma HLS INTERFACE s_axilite port = c bundle = control
#pragma HLS INTERFACE s_axilite port = nwords bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control

    mp_mul_orig(a, b, c, nwords);
}
