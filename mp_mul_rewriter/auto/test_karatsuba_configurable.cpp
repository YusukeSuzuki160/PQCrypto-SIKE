// 設定可能な Karatsuba 乗算テスト（HLS / C シミュレーション）
//
// ビット幅・分割基底を変更する例:
//   sed 's/#define MPX_KARA_BASE_WORDS 4/#define MPX_KARA_BASE_WORDS 2/' \
//       test_karatsuba_configurable.cpp > test_kara_base2.cpp

#ifndef MPX_KARA_BASE_WORDS
#define MPX_KARA_BASE_WORDS 4 // 1/2/4/8 … この語数以下で直接乗算
#endif

#ifndef MPX_MUL_BITS
#define MPX_MUL_BITS 256 // 0 で W*MPX_KARA_BASE_WORDS。128/256/512 など
#endif

#include "mpx_packed_karatsuba.hpp"
#include <ap_int.h>
#include <climits>
#include <cstdint>
#include <cstring>
#ifndef __SYNTHESIS__
#include <iostream>
#endif

using digit_t = uint64_t;
static const unsigned MAX_NWORDS = 8;

void mp_mul_kara(const digit_t *a, const digit_t *b, digit_t *c, const unsigned nwords)
{
  mpx::PackedOps<digit_t, MAX_NWORDS, true>::mul(a, b, c, nwords);
}

void test_mul_karatsuba_configurable(const digit_t a[8], const digit_t b[8], digit_t c[16])
{
#pragma HLS INTERFACE bram port = a
#pragma HLS INTERFACE bram port = b
#pragma HLS INTERFACE bram port = c
#pragma HLS INTERFACE s_axilite port = return bundle = control
  mp_mul_kara(a, b, c, 8);
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
  digit_t a[8], b[8], c1[16], c2[16];
  for (unsigned i = 0; i < 8; ++i)
  {
    a[i] = digit_t(1 + i * 0x111);
    b[i] = digit_t(3 + i * 0x222);
  }
  std::memset(c1, 0, sizeof(c1));
  std::memset(c2, 0, sizeof(c2));
  mp_mul_kara(a, b, c1, 8);
  ref_mul(a, b, c2, 8);
  if (std::memcmp(c1, c2, sizeof(c2)) != 0)
  {
    std::cerr << "mismatch BASE=" << MPX_KARA_BASE_WORDS << " MUL_BITS=" << MPX_MUL_BITS << "\n";
    return 1;
  }
  std::cout << "ok BASE=" << MPX_KARA_BASE_WORDS << " MUL_BITS=" << MPX_MUL_BITS << "\n";
  return 0;
}
#endif
