// test_schoolbook_handwritten.cpp
// 手書き「学校式（schoolbook）」多倍長乗算 — mpx_auto_rewriter の検出・変換元
//
// 変換元は ../mp_mul_rewriter/auto/test_original.cpp / test_mp_mul_orig.cpp を参考。
// BodyScanner が検出する典型形:
//   二重ループ for i: for j: で a[i]*b[j] を計算し c[i+j] へ加算（桁上げ伝搬）。
//
// 変換例（default = 全幅 pack×1 乗算）:
//   build/mpx_auto_rewriter examples/test_schoolbook_handwritten.cpp \
//     --packed-ops-type=default --max-nwords=8 --output=out.cpp \
//     -- -std=c++17 -DUSE_AP_INT -I<Vitis>/include -I./include
//   変換例（固定ビット幅 256bit 学校式）:
//     ... --packed-ops-type=schoolbook-256 ...
//
// 部分積と桁上げ加算を MUL / ADDC マクロに収めることで、内側ループを
// 「a[i]*b[j] を c[i+j] へ累算する」純粋な学校式として rewriter に検出させる
// （`--mul-macro=MUL` 指定。ap_uint 演算はマクロ内に隠れ innerCalls=0 となる）。
// 本体は数値的にも正しい学校式なので、変換前後どちらでも main() の自己検証が通る。
#include <ap_int.h>
#include <climits>
#include <cstdint>
#include <cstring>
#ifndef __SYNTHESIS__
#include <iostream>
#endif

using digit_t = uint64_t;
#define W 64

// x*y -> (HI, LO)
#define MUL(x, y, HI_ptr, LO_out)                          \
  do                                                       \
  {                                                        \
    ap_uint<2 * W> _p = (ap_uint<W>)(x) * (ap_uint<W>)(y); \
    (LO_out) = (digit_t)_p.range(W - 1, 0);                \
    *(HI_ptr) = (digit_t)_p.range(2 * W - 1, W);           \
  } while (0)

// cin + a + b -> (cout, sum)
#define ADDC(cin, a, b, cout, sum_out)                                             \
  do                                                                               \
  {                                                                                \
    ap_uint<W + 1> _s = (ap_uint<W + 1>)(cin) + (ap_uint<W>)(a) + (ap_uint<W>)(b); \
    (sum_out) = (digit_t)_s.range(W - 1, 0);                                       \
    (cout) = (unsigned)_s.range(W, W);                                             \
  } while (0)

// 学校式多倍長乗算（LSW-first, c は 2*nwords 語）
// 行ごとに a[i] を b 全体へ掛け、(hi:lo) = a[i]*b[j] + c[i+j] + carry を
// 128 ビットで正しく加算して c[i+j] と次桁 carry に分配する。
void mp_mul(const digit_t *a, const digit_t *b, digit_t *c, const unsigned nwords)
{
  // 結果配列を初期化
  for (unsigned i = 0; i < 2 * nwords; ++i)
    c[i] = 0;

  // 学校式乗算アルゴリズム（a[i] * b[j] を c[i+j] へ累算）
  for (unsigned i = 0; i < nwords; ++i)
  {
    digit_t carry = 0;
    for (unsigned j = 0; j < nwords; ++j)
    {
      digit_t hi, lo;
      unsigned k1, k2, k3, k4;
      MUL(a[i], b[j], &hi, lo);      // (hi:lo) = a[i] * b[j]
      ADDC(0, lo, c[i + j], k1, lo); // lo += c[i+j]
      ADDC(0, lo, carry, k2, lo);    // lo += carry
      ADDC(k1, hi, 0, k3, hi);       // hi += k1（低位の桁上げ）
      ADDC(k2, hi, 0, k4, hi);       // hi += k2
      c[i + j] = lo;                 // 確定した下位語
      carry = hi;                    // 次桁への桁上げ（1 語に収まる）
      (void)k3;
      (void)k4;
    }
    c[i + nwords] = carry;
  }
}

// HLS トップ関数
void test_mul_schoolbook_handwritten(const digit_t a[8], const digit_t b[8], digit_t c[16])
{
#pragma HLS INTERFACE bram port = a
#pragma HLS INTERFACE bram port = b
#pragma HLS INTERFACE bram port = c
#pragma HLS INTERFACE s_axilite port = return bundle = control
  mp_mul(a, b, c, 8);
}

#ifndef __SYNTHESIS__
// 桁上げ伝搬付き参照（__int128 桁あふれなし）
static void ref_mul(const digit_t *a, const digit_t *b, digit_t *c, unsigned n)
{
  for (unsigned k = 0; k < 2 * n; ++k)
    c[k] = 0;
  for (unsigned i = 0; i < n; ++i)
  {
    unsigned __int128 carry = 0;
    for (unsigned j = 0; j < n; ++j)
    {
      unsigned __int128 t = (unsigned __int128)a[i] * b[j] + c[i + j] + (digit_t)carry;
      c[i + j] = (digit_t)t;
      carry = t >> 64;
    }
    c[i + n] = (digit_t)carry;
  }
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
  ref_mul(a, b, c2, 8);

  if (std::memcmp(c1, c2, sizeof(c2)) != 0)
  {
    std::cerr << "schoolbook mp_mul vs ref mismatch\n";
    return 1;
  }
  std::cout << "schoolbook mp_mul matches ref\n";
  return 0;
}
#endif
