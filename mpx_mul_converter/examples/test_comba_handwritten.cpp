// test_comba_handwritten.cpp
// 手書き「Comba（積和走査 / product-scanning）」多倍長乗算
//   — mpx_auto_rewriter の検出・変換元
//
// 変換元は ../mp_mul_rewriter/auto/test_orig.cpp の mp_mul_orig を参考。
// SIKE 等で用いられる MSW-first・対角走査（t,u,v 連結アキュムレータ）の Comba。
//   - MUL(x,y,&hi,lo): 64×64→128 部分積
//   - ADDC(cin,a,b,&cout,sum): 桁上げ付き加算
//   - idx_in/idx_out: MSW-first の添字ヘルパ（rewriter が理解する）
//
// 検出（MUL マクロを乗算として数える）:
//   build/mpx_auto_rewriter examples/test_comba_handwritten.cpp \
//     --dry-run --trace --mul-macro=MUL \
//     -- -std=c++17 -DUSE_AP_INT -I<Vitis>/include -I./include
// 変換（MSW-first を強制・default パック乗算へ置換）:
//   build/mpx_auto_rewriter examples/test_comba_handwritten.cpp \
//     --packed-ops-type=default --max-nwords=8 --force-msw-first --mul-macro=MUL \
//     --output=out.cpp -- -std=c++17 -DUSE_AP_INT -I<Vitis>/include -I./include
//
// 本体は数値的にも正しい Comba なので、変換前後どちらでも main() の自己検証が通る。
#include <ap_int.h>
#include <climits>
#include <cstdint>
#include <cstring>
#ifndef __SYNTHESIS__
#include <iostream>
#endif

#define W 64
using digit_t = uint64_t;

// MSW-first の添字ヘルパ（a[0] が最上位語）
static inline unsigned idx_in(unsigned i, unsigned n) { return n - 1 - i; }
static inline unsigned idx_out(unsigned i, unsigned n2) { return n2 - 1 - i; }

// x*y -> (HI, LO)
#define MUL(x, y, HI_ptr, LO_out)                                                 \
  do                                                                              \
  {                                                                               \
    ap_uint<2 * W> _p = (ap_uint<W>)(x) * (ap_uint<W>)(y);                        \
    (LO_out) = (digit_t)_p.range(W - 1, 0);                                       \
    *(HI_ptr) = (digit_t)_p.range(2 * W - 1, W);                                  \
  } while (0)

// cin + a + b -> (cout, sum)
#define ADDC(cin, a, b, cout, sum_out)                                            \
  do                                                                              \
  {                                                                               \
    ap_uint<W + 1> _s = (ap_uint<W + 1>)(cin) + (ap_uint<W>)(a) + (ap_uint<W>)(b);\
    (sum_out) = (digit_t)_s.range(W - 1, 0);                                      \
    (cout) = (unsigned)_s.range(W, W);                                            \
  } while (0)

// Comba（積和走査）多倍長乗算（MSW-first, c は 2*nwords 語）
void mp_mul(const digit_t *a, const digit_t *b, digit_t *c, const unsigned nwords)
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

// HLS トップ関数
void test_mul_comba_handwritten(const digit_t a[8], const digit_t b[8], digit_t c[16])
{
#pragma HLS INTERFACE bram port = a
#pragma HLS INTERFACE bram port = b
#pragma HLS INTERFACE bram port = c
#pragma HLS INTERFACE s_axilite port = return bundle = control
  mp_mul(a, b, c, 8);
}

#ifndef __SYNTHESIS__
// MSW-first 参照（a[0] が最上位）。桁上げ伝搬付き、__int128 桁あふれなし
static void ref_mul_msw(const digit_t *a, const digit_t *b, digit_t *c, unsigned n)
{
  // 論理 LSW 配列へ変換して学校式 → MSW-first で書き戻し
  digit_t la[8], lb[8], lc[16] = {0};
  for (unsigned i = 0; i < n; ++i)
  {
    la[i] = a[n - 1 - i];
    lb[i] = b[n - 1 - i];
  }
  for (unsigned i = 0; i < n; ++i)
  {
    unsigned __int128 carry = 0;
    for (unsigned j = 0; j < n; ++j)
    {
      unsigned __int128 tt = (unsigned __int128)la[i] * lb[j] + lc[i + j] + (digit_t)carry;
      lc[i + j] = (digit_t)tt;
      carry = tt >> 64;
    }
    lc[i + n] = (digit_t)carry;
  }
  for (unsigned i = 0; i < 2 * n; ++i)
    c[i] = lc[2 * n - 1 - i];
}

int main()
{
  digit_t a[8], b[8], c1[16], c2[16];
  for (unsigned i = 0; i < 8; ++i)
  {
    a[i] = digit_t(0x9E3779B97F4A7C15ull * (i + 1));
    b[i] = digit_t(0xC2B2AE3D27D4EB4Full * (i + 3));
  }
  std::memset(c1, 0, sizeof(c1));
  std::memset(c2, 0, sizeof(c2));

  mp_mul(a, b, c1, 8);
  ref_mul_msw(a, b, c2, 8);

  if (std::memcmp(c1, c2, sizeof(c2)) != 0)
  {
    std::cerr << "comba mp_mul vs ref mismatch\n";
    return 1;
  }
  std::cout << "comba mp_mul matches ref\n";
  return 0;
}
#endif
