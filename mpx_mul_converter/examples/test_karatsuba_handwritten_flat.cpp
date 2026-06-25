// 手書き Karatsuba（n=8 固定・再帰なし・HLS 合成可能なベースライン）
#include <ap_int.h>
#include <climits>
#include <cstdint>

using digit_t = uint64_t;
static constexpr unsigned W = 64;
static constexpr unsigned N = 8;
static constexpr unsigned N_LO = 4;

using Big4 = ap_uint<W * N_LO>;
using Big8 = ap_uint<W * N>;
using Big16 = ap_uint<2 * W * N>;

static void mul_direct4(const digit_t *a, const digit_t *b, digit_t *c, unsigned nwords)
{
#pragma HLS INLINE
  Big4 A = 0, B = 0;
  for (unsigned i = 0; i < nwords; ++i)
  {
#pragma HLS PIPELINE II = 1
    A.range((i + 1) * W - 1, i * W) = a[i];
    B.range((i + 1) * W - 1, i * W) = b[i];
  }
  ap_uint<2 * W * N_LO> P = (Big4)A * (Big4)B;
  for (unsigned i = 0; i < 2 * nwords; ++i)
  {
#pragma HLS PIPELINE II = 1
    c[i] = (digit_t)P.range((i + 1) * W - 1, i * W);
  }
}

static unsigned add_limbs(const digit_t *xa, unsigned na, const digit_t *xb, unsigned nb, digit_t *dst)
{
  const unsigned n = na > nb ? na : nb;
  ap_uint<W + 1> carry = 0;
  for (unsigned i = 0; i < n; ++i)
  {
#pragma HLS PIPELINE II = 1
    ap_uint<W> av = (i < na) ? (ap_uint<W>)xa[i] : (ap_uint<W>)0;
    ap_uint<W> bv = (i < nb) ? (ap_uint<W>)xb[i] : (ap_uint<W>)0;
    ap_uint<W + 2> s = (ap_uint<W + 2>)av + (ap_uint<W + 2>)bv + (ap_uint<W + 2>)carry;
    dst[i] = (digit_t)s.range(W - 1, 0);
    carry = s.range(W + 1, W);
  }
  dst[n] = (digit_t)(unsigned)carry;
  return carry ? (n + 1) : n;
}

static void mp_mul_flat(const digit_t *a, const digit_t *b, digit_t *c)
{
#pragma HLS INLINE off
  digit_t Al[N_LO], Ah[N_LO], Bl[N_LO], Bh[N_LO];
  for (unsigned i = 0; i < N_LO; ++i)
  {
#pragma HLS PIPELINE II = 1
    Al[i] = a[i];
    Bl[i] = b[i];
    Ah[i] = a[N_LO + i];
    Bh[i] = b[N_LO + i];
  }

  digit_t z0[2 * N_LO], z2[2 * N_LO], z1[2 * (N_LO + 2)];
  digit_t Sal[N_LO + 2], Sbl[N_LO + 2];
  for (unsigned i = 0; i < 2 * N_LO; ++i)
  {
    z0[i] = 0;
    z2[i] = 0;
  }
  for (unsigned i = 0; i < 2 * (N_LO + 2); ++i)
    z1[i] = 0;
  for (unsigned i = 0; i < N_LO + 2; ++i)
  {
    Sal[i] = 0;
    Sbl[i] = 0;
  }

  mul_direct4(Al, Bl, z0, N_LO);
  mul_direct4(Ah, Bh, z2, N_LO);
  const unsigned n_sal = add_limbs(Al, N_LO, Ah, N_LO, Sal);
  const unsigned n_sbl = add_limbs(Bl, N_LO, Bh, N_LO, Sbl);
  const unsigned n_mul = n_sal > n_sbl ? n_sal : n_sbl;
  mul_direct4(Sal, Sbl, z1, n_mul);

  ap_int<2 * W * N + 32> W0 = 0, W2 = 0, W1v = 0;
  for (unsigned i = 0; i < 2 * N_LO; ++i)
  {
#pragma HLS PIPELINE II = 1
    W0 += (ap_int<2 * W * N + 32>)(ap_uint<W>)z0[i] << (int)(i * W);
    W2 += (ap_int<2 * W * N + 32>)(ap_uint<W>)z2[i] << (int)(i * W);
  }
  for (unsigned i = 0; i < 2 * n_mul; ++i)
  {
#pragma HLS PIPELINE II = 1
    W1v += (ap_int<2 * W * N + 32>)(ap_uint<W>)z1[i] << (int)(i * W);
  }

  const ap_int<2 * W * N + 32> mid = W1v - W0 - W2;
  const ap_int<2 * W * N + 32> Pacc =
      W0 + (mid << (int)(N_LO * W)) + (W2 << (int)(2 * N_LO * W));

  Big16 out = 0;
  for (unsigned i = 0; i < 2 * N; ++i)
  {
#pragma HLS PIPELINE II = 1
    ap_int<W + 2> limb = Pacc.range((int)((i + 1) * W - 1), (int)(i * W));
    out.range((i + 1) * W - 1, i * W) = (ap_uint<W>)limb;
  }
  for (unsigned i = 0; i < 2 * N; ++i)
  {
#pragma HLS PIPELINE II = 1
    c[i] = (digit_t)out.range((i + 1) * W - 1, i * W);
  }
}

void test_mul_karatsuba_handwritten_flat(const digit_t a[8], const digit_t b[8], digit_t c[16])
{
#pragma HLS INTERFACE bram port = a
#pragma HLS INTERFACE bram port = b
#pragma HLS INTERFACE bram port = c
#pragma HLS INTERFACE s_axilite port = return bundle = control
  mp_mul_flat(a, b, c);
}
