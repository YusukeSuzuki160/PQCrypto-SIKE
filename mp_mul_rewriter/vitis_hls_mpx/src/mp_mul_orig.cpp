#include "types.hpp"

#define W (CHAR_BIT * sizeof(digit_t))

// MUL(x, y, HI_ptr, LO_out): digit_t × digit_t → 2Wbit
#define MUL(x, y, HI_ptr, LO_out)                          \
  do                                                       \
  {                                                        \
    ap_uint<2 * W> _p = (ap_uint<W>)(x) * (ap_uint<W>)(y); \
    (LO_out) = (digit_t)_p;                                \
    *(HI_ptr) = (digit_t)(_p >> W);                        \
  } while (0)

// ADDC(cin, a, b, cout, sum_out): cin + a + b
#define ADDC(cin, a, b, cout, sum_out)                                             \
  do                                                                               \
  {                                                                                \
    ap_uint<W + 1> _s = (ap_uint<W + 1>)(cin) + (ap_uint<W>)(a) + (ap_uint<W>)(b); \
    (sum_out) = (digit_t)_s;                                                       \
    (cout) = (unsigned)(_s >> W);                                                  \
  } while (0)

extern "C" void mp_mul_orig(const digit_t *a, const digit_t *b, digit_t *c, const unsigned int nwords)
{
#pragma HLS INTERFACE m_axi port = a offset = slave bundle = gmem
#pragma HLS INTERFACE m_axi port = b offset = slave bundle = gmem
#pragma HLS INTERFACE m_axi port = c offset = slave bundle = gmem
#pragma HLS INTERFACE s_axilite port = a bundle = control
#pragma HLS INTERFACE s_axilite port = b bundle = control
#pragma HLS INTERFACE s_axilite port = c bundle = control
#pragma HLS INTERFACE s_axilite port = nwords bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control

  unsigned int i, j;
  digit_t t = 0, u = 0, v = 0, UV[2];
  unsigned int carry = 0;

// 下三角 - 最大MAX_NWORDS回のループに固定
outer1:
  for (i = 0; i < MAX_NWORDS; i++)
  {
#pragma HLS PIPELINE II = 1
    if (i < nwords)
    {
    inner1:
      for (j = 0; j < MAX_NWORDS; j++)
      {
#pragma HLS UNROLL factor = 2 skip_exit_check
        if (j <= i)
        {
          const unsigned aj = LSW_FIRST ? j : (nwords - 1 - j);
          const unsigned bj = LSW_FIRST ? (i - j) : (nwords - 1 - (i - j));
          MUL(a[aj], b[bj], UV + 1, UV[0]);
          ADDC(0, UV[0], v, carry, v);
          ADDC(carry, UV[1], u, carry, u);
          t += carry;
        }
      }
      const unsigned ci = LSW_FIRST ? i : (2 * nwords - 1 - i);
      c[ci] = v;
      v = u;
      u = t;
      t = 0;
    }
  }

// 上三角 - 最大MAX_NWORDS回のループに固定
outer2:
  for (i = 0; i < MAX_NWORDS; i++)
  {
#pragma HLS PIPELINE II = 1
    if (i < nwords - 1) // nwords-1回のループ
    {
      const unsigned actual_i = i + nwords;
    inner2:
      for (j = 0; j < MAX_NWORDS; j++)
      {
#pragma HLS UNROLL factor = 2 skip_exit_check
        if (j >= i + 1 && j < nwords)
        {
          const unsigned aj = LSW_FIRST ? j : (nwords - 1 - j);
          const unsigned bj = LSW_FIRST ? (actual_i - j) : (nwords - 1 - (actual_i - j));
          MUL(a[aj], b[bj], UV + 1, UV[0]);
          ADDC(0, UV[0], v, carry, v);
          ADDC(carry, UV[1], u, carry, u);
          t += carry;
        }
      }
      const unsigned ci = LSW_FIRST ? actual_i : (2 * nwords - 1 - actual_i);
      c[ci] = v;
      v = u;
      u = t;
      t = 0;
    }
  }

  // 最後の要素の処理
  if (nwords > 0)
  {
    c[LSW_FIRST ? (2 * nwords - 1) : 0] = v;
  }
}
