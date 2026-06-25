// 手書き Karatsuba 風（3 回の半長 mp_mul 自己呼び出し）— mpx_auto_rewriter の検出用
// 置換後の一致検証: bash run_karatsuba_rewrite_test.sh（要: build/mpx_auto_rewriter と Vitis 系 include）
#include <ap_int.h>
#include <climits>
#include <cstdint>
#include <cstring>
#ifndef __SYNTHESIS__
#include <iostream>
#endif

using digit_t = uint64_t;

// 基底は学校式（n<=4）。n>4 は半長へ 3 回自己再帰（検出パターン用・数学は簡略）
void mp_mul(const digit_t *a, const digit_t *b, digit_t *c, const unsigned nwords)
{
  if (nwords <= 4)
  {
    for (unsigned i = 0; i < 2 * nwords; ++i)
      c[i] = 0;
    for (unsigned i = 0; i < nwords; ++i)
      for (unsigned j = 0; j < nwords; ++j)
        c[i + j] += a[i] * b[j];
    return;
  }

  digit_t z0[16];
  digit_t z1[16];
  digit_t z2[16];
  for (unsigned i = 0; i < 16; ++i)
  {
    z0[i] = 0;
    z1[i] = 0;
    z2[i] = 0;
  }

  mp_mul(a, b, z0, nwords / 2);
  mp_mul(a, b, z2, nwords / 2);
  mp_mul(a, b, z1, nwords / 2);

  for (unsigned i = 0; i < 2 * nwords; ++i)
    c[i] = z0[i] ^ z1[i] ^ z2[i];
}

void test_mul_karatsuba_handwritten(const digit_t a[8], const digit_t b[8], digit_t c[16],
                                    const unsigned /*unused_for_hls*/)
{
#pragma HLS INTERFACE bram port = a
#pragma HLS INTERFACE bram port = b
#pragma HLS INTERFACE bram port = c
#pragma HLS INTERFACE s_axilite port = return bundle = control
  mp_mul(a, b, c, 8);
}

#ifndef __SYNTHESIS__
static void ref_mul(const digit_t *a, const digit_t *b, digit_t *c, unsigned n)
{
  unsigned __int128 acc[16] = {};
  for (unsigned i = 0; i < n; ++i)
    for (unsigned j = 0; j < n; ++j)
      acc[i + j] += (unsigned __int128)a[i] * (unsigned __int128)b[j];
  unsigned __int128 carry = 0;
  for (unsigned i = 0; i < 2 * n; ++i)
  {
    unsigned __int128 t = acc[i] + carry;
    c[i] = (digit_t)t;
    carry = t >> 64;
  }
}

int main()
{
  digit_t a[8], b[8], c_stub[16], c_ref[16];
  for (unsigned i = 0; i < 8; ++i)
  {
    a[i] = digit_t(1 + i);
    b[i] = digit_t(3 + 2 * i);
  }
  std::memset(c_stub, 0, sizeof(c_stub));
  std::memset(c_ref, 0, sizeof(c_ref));

  mp_mul(a, b, c_stub, 8);
  ref_mul(a, b, c_ref, 8);

  if (std::memcmp(c_stub, c_ref, sizeof(c_ref)) != 0)
  {
    std::cerr << "mp_mul vs ref mismatch\n";
    return 1;
  }

  std::cout << "mp_mul matches ref (post-rewrite Karatsuba PackedOps)\n";
  return 0;
}
#endif
