// mp_mul_orig 本体に近いコストを測る（呼び出し・chrono・少数回の RDTSC を薄める）
//
// 手法:
//  - mp_mul を __attribute__((always_inline)) で内側ループに直挿し、呼び出しオーバーヘッドを避ける
//  - 内側反復 INNER を大きくし、外側の lfence+rdtsc の割合を小さくする
//  - 同一構造の「空ループ」（volatile カウンタのみ）を差し引き、ループ骨格の見かけ上のコストを除く
//
// 厳密な retired cycles が必要なら root または perf_event_paranoid 緩和のうえ
//   perf stat -e cycles:u ./bench_mp_mul_orig_cycles
// を併用してください（このバイナリ末尾で案内を出す）。

#include <algorithm>
#include <climits>
#include <cstdint>
#include <cstring>
#include <iostream>
#include <string>
#include <vector>
#include <x86intrin.h>

using digit_t = uint64_t;

#define W (CHAR_BIT * sizeof(digit_t))
#define MUL(x, y, HI_ptr, LO_out)                                                                  \
  do                                                                                               \
  {                                                                                                \
    __uint128_t _p = ((__uint128_t)(digit_t)(x) * (__uint128_t)(digit_t)(y));                      \
    (LO_out) = (digit_t)_p;                                                                        \
    *(HI_ptr) = (digit_t)(_p >> W);                                                                \
  } while (0)
#define ADDC(cin, a, b, cout, sum_out)                                                             \
  do                                                                                               \
  {                                                                                                \
    __uint128_t _s = (__uint128_t)(unsigned)(cin) + (__uint128_t)(digit_t)(a) +                     \
                     (__uint128_t)(digit_t)(b);                                                    \
    (sum_out) = (digit_t)_s;                                                                       \
    (cout) = (unsigned)((_s >> W) & 1);                                                            \
  } while (0)

static const int LSW_FIRST = 1;
static inline unsigned idx_in(unsigned i, unsigned n) { return LSW_FIRST ? i : (n - 1 - i); }
static inline unsigned idx_out(unsigned i, unsigned n2) { return LSW_FIRST ? i : (n2 - 1 - i); }

// mp_test_program_orig.cpp の mp_mul_orig と同一アルゴリズム
__attribute__((always_inline)) static inline void
mp_mul_orig_inline(const digit_t *a, const digit_t *b, digit_t *c, const unsigned nwords)
{
  unsigned i, j;
  digit_t t = 0, u = 0, v = 0, UV[2];
  unsigned carry = 0;

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

template <typename F>
static uint64_t rdtsc_min_cycles(unsigned outer, uint64_t inner, F &&fn)
{
  uint64_t best = UINT64_MAX;
  for (unsigned r = 0; r < outer; ++r)
  {
    _mm_lfence();
    const uint64_t t0 = __rdtsc();
    _mm_lfence();
    fn(inner);
    _mm_lfence();
    const uint64_t t1 = __rdtsc();
    _mm_lfence();
    const uint64_t dt = t1 - t0;
    if (dt < best)
      best = dt;
  }
  return best;
}

int main(int argc, char **argv)
{
  unsigned nwords = 8;
  uint64_t inner = 200000;
  unsigned outer = 200;
  for (int i = 1; i < argc; ++i)
  {
    std::string a = argv[i];
    if (a == "--nwords" && i + 1 < argc)
      nwords = (unsigned)std::stoul(argv[++i]);
    else if (a == "--inner" && i + 1 < argc)
      inner = std::stoull(argv[++i]);
    else if (a == "--outer" && i + 1 < argc)
      outer = (unsigned)std::stoul(argv[++i]);
  }

  std::vector<digit_t> av(nwords), bv(nwords), cv(2 * nwords);
  digit_t *a = av.data();
  digit_t *b = bv.data();
  digit_t *c = cv.data();
  for (unsigned i = 0; i < nwords; ++i)
  {
    a[i] = (digit_t)(0x9E3779B97F4A7C15ULL + i * 0xD1);
    b[i] = (digit_t)(0xC2436B387E72A9C1ULL + i * 0x17);
  }

  volatile uint64_t sink = 0;

  // ウォームアップ（分岐予測・キャッシュ）
  for (unsigned w = 0; w < 4000; ++w)
  {
    mp_mul_orig_inline(a, b, c, nwords);
    sink ^= (uint64_t)c[w & 15];
  }

  // ベースライン: 本計測と同じ「c からのロード + XOR」だけ（乗算なし）。
  // c は直前のウォームアップで埋まっているので、ループ内は読み取りのみ。
  const uint64_t cyc_load_xor = rdtsc_min_cycles(outer, inner, [&](uint64_t N) {
    for (uint64_t k = 0; k < N; ++k)
    {
      sink ^= (uint64_t)c[(unsigned)k & 15];
    }
  });

  const uint64_t cyc_mul = rdtsc_min_cycles(outer, inner, [&](uint64_t N) {
    for (uint64_t k = 0; k < N; ++k)
    {
      mp_mul_orig_inline(a, b, c, nwords);
      sink ^= (uint64_t)c[(unsigned)k & 15];
    }
  });

  const double per_mul_tsc = (double)(cyc_mul - cyc_load_xor) / (double)inner;
  const double load_xor_per = (double)cyc_load_xor / (double)inner;

  std::cout << "mp_mul_orig (always_inline, same algorithm as mp_test_program_orig.cpp)\n";
  std::cout << "nwords=" << nwords << " inner=" << inner << " outer(best-of)=" << outer << "\n";
  std::cout << "RDTSC total (mul + load_xor): " << cyc_mul << "\n";
  std::cout << "RDTSC total (load_xor only):  " << cyc_load_xor << "  (same sink pattern, no mul)\n";
  std::cout << "delta / inner (estimated mp_mul body, TSC ticks): " << per_mul_tsc << "\n";
  std::cout << "load_xor / inner (TSC per iter):                  " << load_xor_per << "\n";
  std::cout << "sink=" << sink << "\n\n";
  std::cout << "Note: TSC ticks are not guaranteed to equal CPU retired cycles.\n";
  std::cout << "For hardware cycles, run (if allowed): perf stat -e cycles:u -r 5 ./bench_mp_mul_orig_cycles\n";
  return 0;
}
