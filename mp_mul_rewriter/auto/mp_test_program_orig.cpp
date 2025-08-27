// mp_test_program.cpp
// テスト用の多倍長演算（学校式）+ 自己検証 + 簡易ベンチ
//  - mp_add_orig:   c = a + b (戻り値: carry)
//  - mp_sub_orig:   c = a - b (戻り値: borrow)
//  - mp_mul_orig:   c = a * b (2n語)
//  - mp_sqr_orig:   c = a * a (2n語)
// 参照実装(ref_*)と比較し、ビット一致を自己検証します。

#include <cstdint>
#include <climits>
#include <cstring>
#include <vector>
#include <random>
#include <iostream>
#include <chrono>
#include <string>
#include <cassert>
using namespace std;

// ====== 設定（必要に応じて変更） ======
using digit_t = uint64_t;             // 語幅: 16/32/64 など
static const unsigned MAX_NWORDS = 8; // 想定最大語数
static const int LSW_FIRST = 1;       // 1: a[0]がLSW, 0: a[0]がMSW

// ====== HLS 向け（任意） ======
// Vitis HLS で ap_uint を使いたい場合は -DUSE_AP_INT を付けてビルドし、ap_int.h が見えるようにする
#ifdef USE_AP_INT
#include <ap_int.h>
#define W (CHAR_BIT * sizeof(digit_t))
                                // x*y -> (HI, LO) に分割
#define MUL(x, y, HI_ptr, LO_out)                          \
  do                                                       \
  {                                                        \
    ap_uint<2 * W> _p = (ap_uint<W>)(x) * (ap_uint<W>)(y); \
    (LO_out) = (digit_t)_p;                                \
    *(HI_ptr) = (digit_t)(_p >> W);                        \
  } while (0)
                                // cin + a + b -> (cout, sum)
#define ADDC(cin, a, b, cout, sum_out)                                             \
  do                                                                               \
  {                                                                                \
    ap_uint<W + 1> _s = (ap_uint<W + 1>)(cin) + (ap_uint<W>)(a) + (ap_uint<W>)(b); \
    (sum_out) = (digit_t)_s;                                                       \
    (cout) = (unsigned)(_s >> W);                                                  \
  } while (0)
#else
                                // CPU用（__uint128_tで桁上がりを正確に処理）
#define W (CHAR_BIT * sizeof(digit_t))
#define MUL(x, y, HI_ptr, LO_out)                                             \
  do                                                                          \
  {                                                                           \
    __uint128_t _p = ((__uint128_t)(digit_t)(x) * (__uint128_t)(digit_t)(y)); \
    (LO_out) = (digit_t)_p;                                                   \
    *(HI_ptr) = (digit_t)(_p >> W);                                           \
  } while (0)
#define ADDC(cin, a, b, cout, sum_out)                                                                     \
  do                                                                                                       \
  {                                                                                                        \
    __uint128_t _s = (__uint128_t)(unsigned)(cin) + (__uint128_t)(digit_t)(a) + (__uint128_t)(digit_t)(b); \
    (sum_out) = (digit_t)_s;                                                                               \
    (cout) = (unsigned)((_s >> W) & 1);                                                                    \
  } while (0)
#endif

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

// ====== 多倍長：学校式 実装 ======

// 加算: c = a + b（n語）; 戻り値は carry-out
unsigned mp_add_orig(const digit_t *a, const digit_t *b, digit_t *c, unsigned nwords)
{
  unsigned carry = 0;
  for (unsigned i = 0; i < nwords; ++i)
  {
    const digit_t ai = a[idx_in(i, nwords)];
    const digit_t bi = b[idx_in(i, nwords)];
    digit_t sum;
    unsigned cout;
    ADDC(carry, ai, bi, cout, sum);
    c[idx_in(i, nwords)] = sum;
    carry = cout;
  }
  return carry;
}

// 減算: c = a - b（n語）; 戻り値は borrow（a<bなら1）
unsigned mp_sub_orig(const digit_t *a, const digit_t *b, digit_t *c, unsigned nwords)
{
  unsigned borrow = 0;
  for (unsigned i = 0; i < nwords; ++i)
  {
    const digit_t ai = a[idx_in(i, nwords)];
    const digit_t bi = b[idx_in(i, nwords)];
    // bi' = bi + borrow で繰下り判定
    digit_t bip = bi + (digit_t)borrow;
    unsigned new_borrow = (ai < bip) ? 1u : 0u;
    c[idx_in(i, nwords)] = (digit_t)(ai - bip);
    borrow = new_borrow;
  }
  return borrow;
}

// 乗算: c = a * b（2n語）, 学校式下三角+上三角。自動変換器が検出しやすい典型パターン。
void mp_mul_orig(const digit_t *a, const digit_t *b, digit_t *c, const unsigned nwords)
{
  // HLS I/F（Vitisでトップにする場合はコメント解除）
  // #pragma HLS INTERFACE m_axi     port=a      offset=slave bundle=gmem
  // #pragma HLS INTERFACE m_axi     port=b      offset=slave bundle=gmem
  // #pragma HLS INTERFACE m_axi     port=c      offset=slave bundle=gmem
  // #pragma HLS INTERFACE s_axilite port=a      bundle=control
  // #pragma HLS INTERFACE s_axilite port=b      bundle=control
  // #pragma HLS INTERFACE s_axilite port=c      bundle=control
  // #pragma HLS INTERFACE s_axilite port=nwords bundle=control
  // #pragma HLS INTERFACE s_axilite port=return bundle=control

  unsigned i, j;
  digit_t t = 0, u = 0, v = 0, UV[2];
  unsigned carry = 0;

  // 下三角: i=0..n-1, j=0..i
  for (i = 0; i < nwords; i++)
  {
    // #pragma HLS PIPELINE II=1
    for (j = 0; j <= i; j++)
    {
      // #pragma HLS UNROLL factor=2 skip_exit_check
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
    // #pragma HLS PIPELINE II=1
    for (j = i - nwords + 1; j < nwords; j++)
    {
      // #pragma HLS UNROLL factor=2 skip_exit_check
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

void mp_mul(const digit_t* a, const digit_t* b, digit_t* c, const unsigned int nwords)
{

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

// vector<int> carry_and_fix(vector<int> digit) {
// 	int N = digit.size();
// 	for(int i = 0; i < N - 1; ++i) {
// 		// 繰り上がり処理 (K は繰り上がりの回数)
// 		if(digit[i] >= 10) {
// 			int K = digit[i] / 10;
// 			digit[i] -= K * 10;
// 			digit[i + 1] += K;
// 		}
// 		// 繰り下がり処理 (K は繰り下がりの回数)
// 		if(digit[i] < 0) {
// 			int K = (-digit[i] - 1) / 10 + 1;
// 			digit[i] += K * 10;
// 			digit[i + 1] -= K;
// 		}
// 	}
// 	// 一番上の桁が 10 以上なら、桁数を増やすことを繰り返す
// 	while(digit.back() >= 10) {
// 		int K = digit.back() / 10;
// 		digit.back() -= K * 10;
// 		digit.push_back(K);
// 	}
// 	// 1 桁の「0」以外なら、一番上の桁の 0 (リーディング・ゼロ) を消す
// 	while(digit.size() >= 2 && digit.back() == 0) {
// 		digit.pop_back();
// 	}
// 	return digit;
// }

// vector<int> multiplication(vector<int> digit_a, vector<int> digit_b) {
// 	int NA = digit_a.size(); // A の桁数
// 	int NB = digit_b.size(); // B の桁数
// 	vector<int> res(NA + NB - 1);
// 	for(int i = 0; i < NA; ++i) {
// 		for(int j = 0; j < NB; ++j) {
// 			res[i+j] += digit_a[i] * digit_b[j];
// 			// 答えの i+j の位に digit_a[i] * digit_b[j] を足す
// 		}
// 	}
// 	return carry_and_fix(res);
// }

// 平方: c = a * a（2n語）— 学校式のまま書いてもOKだが、ここでは乗算を流用
void mp_sqr_orig(const digit_t *a, digit_t *c, const unsigned nwords)
{
  mp_mul_orig(a, a, c, nwords);
}

// ====== 参照実装（CPU用、ビット正しさ検証のため） ======
unsigned ref_add(const digit_t *a, const digit_t *b, digit_t *c, unsigned n)
{
  unsigned carry = 0;
  for (unsigned i = 0; i < n; ++i)
  {
    __uint128_t s = (__uint128_t)a[idx_in(i, n)] + b[idx_in(i, n)] + carry;
    c[idx_in(i, n)] = (digit_t)s;
    carry = (unsigned)(s >> W);
  }
  return carry;
}
unsigned ref_sub(const digit_t *a, const digit_t *b, digit_t *c, unsigned n)
{
  unsigned borrow = 0;
  for (unsigned i = 0; i < n; ++i)
  {
    digit_t bi = b[idx_in(i, n)];
    digit_t ai = a[idx_in(i, n)];
    digit_t bip = (digit_t)(bi + (digit_t)borrow);
    unsigned new_borrow = (ai < bip) ? 1u : 0u;
    c[idx_in(i, n)] = (digit_t)(ai - bip);
    borrow = new_borrow;
  }
  return borrow;
}
void ref_mul(const digit_t *a, const digit_t *b, digit_t *c, unsigned n)
{
  std::memset(c, 0, sizeof(digit_t) * 2 * n);
  for (unsigned i = 0; i < n; ++i)
  {
    __uint128_t carry = 0;
    for (unsigned j = 0; j < n; ++j)
    {
      __uint128_t A = a[idx_in(i, n)];
      __uint128_t B = b[idx_in(j, n)];
      __uint128_t sum =
          (__uint128_t)c[idx_out(i + j, 2 * n)] + A * B + carry;
      c[idx_out(i + j, 2 * n)] = (digit_t)sum;
      carry = (sum >> W);
    }
    // 最後の桁上がりを次のワードに足す
    __uint128_t acc = (__uint128_t)c[idx_out(i + n, 2 * n)] + carry;
    c[idx_out(i + n, 2 * n)] = (digit_t)acc;
    // さらに桁上がりが生じるケース（理論上あり得る）も伝播
    unsigned k = i + n + 1;
    while ((acc >> W) && k < 2 * n)
    {
      acc = (__uint128_t)c[idx_out(k, 2 * n)] + 1;
      c[idx_out(k, 2 * n)] = (digit_t)acc;
      ++k;
    }
  }
}
void ref_sqr(const digit_t *a, digit_t *c, unsigned n) { ref_mul(a, a, c, n); }

// ====== ユーティリティ ======
static void gen_rand(digit_t *x, unsigned n, std::mt19937_64 &rng)
{
  for (unsigned i = 0; i < n; ++i)
    x[i] = (digit_t)rng();
}
static bool equal_words(const digit_t *a, const digit_t *b, unsigned m)
{
  for (unsigned i = 0; i < m; ++i)
    if (a[i] != b[i])
      return false;
  return true;
}

// ====== 簡易テスト＋ベンチ ======
int main(int argc, char **argv)
{
  // パラメータ
  unsigned n = 8;        // 語数
  unsigned trials = 200; // 試行回数
  uint64_t seed = 0xC0FFEEULL;

  // 簡易引数処理
  for (int i = 1; i < argc; ++i)
  {
    std::string s = argv[i];
    if (s == "--nwords" && i + 1 < argc)
      n = (unsigned)std::stoul(argv[++i]);
    else if (s == "--trials" && i + 1 < argc)
      trials = (unsigned)std::stoul(argv[++i]);
    else if (s == "--seed" && i + 1 < argc)
      seed = std::stoull(argv[++i]);
    else if (s == "--help")
    {
      std::cout
          << "Usage: " << argv[0] << " [--nwords N] [--trials T] [--seed S]\n"
          << "Config: digit_t=" << (unsigned)(8 * sizeof(digit_t)) << "b, LSW_FIRST=" << LSW_FIRST << "\n";
      return 0;
    }
  }
  if (n == 0 || n > MAX_NWORDS)
  {
    std::cerr << "nwords must be 1.." << MAX_NWORDS << "\n";
    return 1;
  }

  std::mt19937_64 rng(seed);

  // バッファ確保
  std::vector<digit_t> a(n), b(n), c(2 * n), r(2 * n), tmp(n);

  // ===== 正しさテスト =====
  // 1) ADD / SUB
  for (unsigned t = 0; t < trials; ++t)
  {
    gen_rand(a.data(), n, rng);
    gen_rand(b.data(), n, rng);

    unsigned c1 = mp_add_orig(a.data(), b.data(), tmp.data(), n);
    unsigned c2 = ref_add(a.data(), b.data(), r.data(), n);
    if (!equal_words(tmp.data(), r.data(), n) || c1 != c2)
    {
      std::cerr << "ADD mismatch at t=" << t << "\n";
      return 2;
    }

    unsigned br1 = mp_sub_orig(a.data(), b.data(), tmp.data(), n);
    unsigned br2 = ref_sub(a.data(), b.data(), r.data(), n);
    if (!equal_words(tmp.data(), r.data(), n) || br1 != br2)
    {
      std::cerr << "SUB mismatch at t=" << t << "\n";
      return 3;
    }
  }

  // 2) MUL / SQR
  for (unsigned t = 0; t < trials; ++t)
  {
    gen_rand(a.data(), n, rng);
    gen_rand(b.data(), n, rng);
    std::fill(c.begin(), c.end(), 0);
    std::fill(r.begin(), r.end(), 0);

    mp_mul_orig(a.data(), b.data(), c.data(), n);
    ref_mul(a.data(), b.data(), r.data(), n);
    if (!equal_words(c.data(), r.data(), 2 * n))
    {
      std::cerr << "MUL mismatch at t=" << t << "\n";
      return 4;
    }

    std::fill(c.begin(), c.end(), 0);
    std::fill(r.begin(), r.end(), 0);
    mp_sqr_orig(a.data(), c.data(), n);
    ref_sqr(a.data(), r.data(), n);
    if (!equal_words(c.data(), r.data(), 2 * n))
    {
      std::cerr << "SQR mismatch at t=" << t << "\n";
      return 5;
    }
  }

  std::cout << "[OK] correctness passed (n=" << n
            << ", trials=" << trials << ", digit=" << (8 * sizeof(digit_t)) << "b"
            << ", LSW_FIRST=" << LSW_FIRST << ")\n";

  // ===== 簡易ベンチ =====
  const unsigned bench_trials = 2000;
  gen_rand(a.data(), n, rng);
  gen_rand(b.data(), n, rng);

  auto bench = [&](auto fn, const char *name, unsigned out_words)
  {
    auto t0 = std::chrono::high_resolution_clock::now();
    for (unsigned t = 0; t < bench_trials; ++t)
    {
      fn();
    }
    auto t1 = std::chrono::high_resolution_clock::now();
    double ms = std::chrono::duration<double, std::milli>(t1 - t0).count();
    std::cout << "bench " << name << " : "
              << bench_trials << " iters, " << ms << " ms, "
              << (1e6 * bench_trials / ms) << " iters/s\n";
    // 参照と1回だけ比較
    if (std::string(name) == "mul")
    {
      ref_mul(a.data(), b.data(), r.data(), n);
      if (!equal_words(c.data(), r.data(), out_words))
      {
        std::cerr << "Bench result mismatch for " << name << "\n";
        std::exit(6);
      }
    }
  };

  // それぞれ測定
  bench([&]
        { mp_add_orig(a.data(), b.data(), tmp.data(), n); }, "add", n);
  bench([&]
        { mp_sub_orig(a.data(), b.data(), tmp.data(), n); }, "sub", n);
  bench([&]
        { mp_mul_orig(a.data(), b.data(), c.data(), n); }, "mul", 2 * n);
  bench([&]
        { mp_sqr_orig(a.data(), c.data(), n); }, "sqr", 2 * n);

  return 0;
}
