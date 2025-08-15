#include <ap_int.h>
#include <climits>
#include <cstdint>
#include <vector>
#include <random>
#include <iostream>
#include <algorithm>
#include <type_traits>
#include <cassert>

#include <boost/multiprecision/cpp_int.hpp>

#include "mpx_packed.hpp"

using boost::multiprecision::cpp_int;

template <class Digit>
static cpp_int vec_to_cppint(const std::vector<Digit> &v, bool lsw_first)
{
  static_assert(std::is_unsigned<Digit>::value, "Digit must be unsigned");
  const unsigned W = CHAR_BIT * sizeof(Digit);
  cpp_int x = 0;
  const size_t n = v.size();
  if (lsw_first)
  {
    for (size_t i = 0; i < n; ++i)
    {
      x += cpp_int(v[i]) << (i * W);
    }
  }
  else
  {
    // big-endian limbs: v[0] is MSW
    for (size_t i = 0; i < n; ++i)
    {
      size_t j = n - 1 - i;
      x += cpp_int(v[j]) << (i * W);
    }
  }
  return x;
}

template <class Digit>
static std::vector<Digit> cppint_to_vec(cpp_int x, size_t out_words, bool lsw_first)
{
  const unsigned W = CHAR_BIT * sizeof(Digit);
  std::vector<Digit> out(out_words, 0);
  for (size_t i = 0; i < out_words; ++i)
  {
    cpp_int mask = (cpp_int(1) << W) - 1;
    Digit w = static_cast<Digit>((x >> (i * W)) & mask);
    size_t idx = lsw_first ? i : (out_words - 1 - i);
    out[idx] = w;
  }
  return out;
}

template <class Digit, unsigned MAX_NWORDS, bool LSW_FIRST>
static void check_add_cases(std::mt19937_64 &rng)
{
  using Ops = mpx::PackedOps<Digit, MAX_NWORDS, LSW_FIRST>;
  constexpr unsigned W = CHAR_BIT * sizeof(Digit);
  std::uniform_int_distribution<uint64_t> dist; // will cast down

  for (unsigned n = 1; n <= MAX_NWORDS; ++n)
  {
    // edge: zeros
    {
      std::vector<Digit> a(n, 0), b(n, 0), c(n, 0);
      unsigned carry = Ops::add(a.data(), b.data(), c.data(), n);
      assert(carry == 0);
      for (auto w : c)
        assert(w == 0);
    }
    // edge: all-ones + 1 -> carry=1
    {
      std::vector<Digit> a(n, ~Digit(0)), b(n, 0), c(n, 0);
      if (LSW_FIRST)
        b[0] = 1;
      else
        b[n - 1] = 1;
      cpp_int A = vec_to_cppint(a, LSW_FIRST);
      cpp_int B = vec_to_cppint(b, LSW_FIRST);
      cpp_int S = A + B;
      unsigned carry_expected = (S >> (n * W)) != 0;
      unsigned carry = Ops::add(a.data(), b.data(), c.data(), n);
      auto ref = cppint_to_vec<Digit>(S, n, LSW_FIRST);
      assert(carry == carry_expected);
      assert(c == ref);
    }
    // random
    for (int t = 0; t < 100; ++t)
    {
      std::vector<Digit> a(n), b(n), c(n);
      for (unsigned i = 0; i < n; ++i)
      {
        a[i] = (Digit)dist(rng);
        b[i] = (Digit)dist(rng);
      }
      cpp_int A = vec_to_cppint(a, LSW_FIRST);
      cpp_int B = vec_to_cppint(b, LSW_FIRST);
      cpp_int S = A + B;
      cpp_int mask = (cpp_int(1) << (n * W)) - 1;
      unsigned carry_expected = (S >> (n * W)) != 0;
      auto ref = cppint_to_vec<Digit>(S & mask, n, LSW_FIRST);
      unsigned carry = Ops::add(a.data(), b.data(), c.data(), n);
      if (!(c == ref && carry == carry_expected))
      {
        std::cerr << "ADD mismatch (n=" << n << ")\n";
        std::cerr << "Expected: ";
        for (auto w : ref)
          std::cerr << std::hex << w << " ";
        std::cerr << "\nGot:      ";
        for (auto w : c)
          std::cerr << std::hex << w << " ";
        std::cerr << "\nCarry expected: " << carry_expected << ", got: " << carry << "\n";
        std::abort();
      }
    }
  }
}

template <class Digit, unsigned MAX_NWORDS, bool LSW_FIRST>
static void check_sub_cases(std::mt19937_64 &rng)
{
  using Ops = mpx::PackedOps<Digit, MAX_NWORDS, LSW_FIRST>;
  constexpr unsigned W = CHAR_BIT * sizeof(Digit);
  std::uniform_int_distribution<uint64_t> dist;

  for (unsigned n = 1; n <= MAX_NWORDS; ++n)
  {
    // edge: 0 - 1 => borrow=1, result = 2^(nW)-1
    {
      std::vector<Digit> a(n, 0), b(n, 0), c(n, 0);
      if (LSW_FIRST)
        b[0] = 1;
      else
        b[n - 1] = 1;
      cpp_int A = vec_to_cppint(a, LSW_FIRST);
      cpp_int B = vec_to_cppint(b, LSW_FIRST);
      cpp_int D = (A - B);
      cpp_int mask = (cpp_int(1) << (n * W)) - 1;
      D &= mask;
      unsigned borrow_expected = (A < B);
      unsigned borrow = Ops::sub(a.data(), b.data(), c.data(), n);
      auto ref = cppint_to_vec<Digit>(D, n, LSW_FIRST);
      assert(borrow == borrow_expected);
      assert(c == ref);
    }
    // random
    for (int t = 0; t < 100; ++t)
    {
      std::vector<Digit> a(n), b(n), c(n);
      for (unsigned i = 0; i < n; ++i)
      {
        a[i] = (Digit)dist(rng);
        b[i] = (Digit)dist(rng);
      }
      cpp_int A = vec_to_cppint(a, LSW_FIRST);
      cpp_int B = vec_to_cppint(b, LSW_FIRST);
      cpp_int D = (A - B);
      cpp_int mask = (cpp_int(1) << (n * W)) - 1;
      D &= mask;
      unsigned borrow_expected = (A < B);
      auto ref = cppint_to_vec<Digit>(D, n, LSW_FIRST);
      unsigned borrow = Ops::sub(a.data(), b.data(), c.data(), n);
      if (!(c == ref && borrow == borrow_expected))
      {
        std::cerr << "SUB mismatch (n=" << n << ")\n";
        std::cerr << "Expected: ";
        for (auto w : ref)
          std::cerr << std::hex << w << " ";
        std::cerr << "\nGot:      ";
        for (auto w : c)
          std::cerr << std::hex << w << " ";
        std::cerr << "\nBorrow expected: " << borrow_expected << ", got: " << borrow << "\n";
        std::abort();
      }
    }
  }
}

template <class Digit, unsigned MAX_NWORDS, bool LSW_FIRST>
static void check_mul_cases(std::mt19937_64 &rng)
{
  using Ops = mpx::PackedOps<Digit, MAX_NWORDS, LSW_FIRST>;
  constexpr unsigned W = CHAR_BIT * sizeof(Digit);
  std::uniform_int_distribution<uint64_t> dist;

  for (unsigned n = 1; n <= MAX_NWORDS; ++n)
  {
    // edge: zeros
    {
      std::vector<Digit> a(n, 0), b(n, 0), c(2 * n, 0);
      Ops::mul(a.data(), b.data(), c.data(), n);
      for (auto w : c)
        assert(w == 0);
    }
    // small known: (1) * (1<<k)
    for (unsigned k = 0; k < std::min<unsigned>(n * W, 8 * sizeof(uint32_t)); k += (W / 2 ? W / 2 : 1))
    {
      std::vector<Digit> a(n, 0), b(n, 0), c(2 * n, 0);
      if (LSW_FIRST)
        a[0] = 1;
      else
        a[n - 1] = 1;
      // put 1<<k into vector b
      unsigned word = k / W, bit = k % W;
      if (word < n)
      {
        if (LSW_FIRST)
          b[word] = (Digit(1) << bit);
        else
          b[n - 1 - word] = (Digit(1) << bit);
      }
      cpp_int A = vec_to_cppint(a, LSW_FIRST);
      cpp_int B = vec_to_cppint(b, LSW_FIRST);
      cpp_int P = A * B;
      Ops::mul(a.data(), b.data(), c.data(), n);
      auto ref = cppint_to_vec<Digit>(P, 2 * n, LSW_FIRST);
      assert(c == ref);
    }
    // random
    for (int t = 0; t < 100; ++t)
    {
      std::vector<Digit> a(n), b(n), c(2 * n);
      for (unsigned i = 0; i < n; ++i)
      {
        a[i] = (Digit)dist(rng);
        b[i] = (Digit)dist(rng);
      }
      cpp_int A = vec_to_cppint(a, LSW_FIRST);
      cpp_int B = vec_to_cppint(b, LSW_FIRST);
      cpp_int P = A * B;
      auto ref = cppint_to_vec<Digit>(P, 2 * n, LSW_FIRST);
      Ops::mul(a.data(), b.data(), c.data(), n);
      if (c != ref)
      {
        std::cerr << "MUL mismatch (n=" << n << ")\n";
        std::cerr << "Expected: ";
        for (auto w : ref)
          std::cerr << std::hex << w << " ";
        std::cerr << "\nGot:      ";
        for (auto w : c)
          std::cerr << std::hex << w << " ";
        std::cerr << "\n";
        std::abort();
      }
    }
  }
}

template <class Digit, unsigned MAX_NWORDS, bool LSW_FIRST>
static void check_sqr_cases(std::mt19937_64 &rng)
{
  using Ops = mpx::PackedOps<Digit, MAX_NWORDS, LSW_FIRST>;
  std::uniform_int_distribution<uint64_t> dist;

  for (unsigned n = 1; n <= MAX_NWORDS; ++n)
  {
    // edge: zero
    {
      std::vector<Digit> a(n, 0), c(2 * n, 0);
      Ops::sqr(a.data(), c.data(), n);
      for (auto w : c)
        assert(w == 0);
    }
    // random
    for (int t = 0; t < 100; ++t)
    {
      std::vector<Digit> a(n), c(2 * n);
      for (unsigned i = 0; i < n; ++i)
        a[i] = (Digit)dist(rng);
      cpp_int A = vec_to_cppint(a, LSW_FIRST);
      cpp_int P = A * A;
      auto ref = cppint_to_vec<Digit>(P, 2 * n, LSW_FIRST);
      Ops::sqr(a.data(), c.data(), n);
      if (c != ref)
      {
        std::cerr << "SQR mismatch (n=" << n << ")\n";
        std::cerr << "Expected: ";
        for (auto w : ref)
          std::cerr << std::hex << w << " ";
        std::cerr << "\nGot:      ";
        for (auto w : c)
          std::cerr << std::hex << w << " ";
        std::cerr << "\n";
        std::abort();
      }
    }
  }
}

int main()
{
  std::mt19937_64 rng(0xC0FFEEULL);

  // Run for multiple Digit types, MAX_NWORDS and endianness
  {
    // uint16_t, MAX=8
    check_add_cases<uint16_t, 8, true>(rng);
    check_sub_cases<uint16_t, 8, true>(rng);
    check_mul_cases<uint16_t, 8, true>(rng);
    check_sqr_cases<uint16_t, 8, true>(rng);

    check_add_cases<uint16_t, 8, false>(rng);
    check_sub_cases<uint16_t, 8, false>(rng);
    check_mul_cases<uint16_t, 8, false>(rng);
    check_sqr_cases<uint16_t, 8, false>(rng);
  }
  {
    // uint32_t, MAX=8
    check_add_cases<uint32_t, 8, true>(rng);
    check_sub_cases<uint32_t, 8, true>(rng);
    check_mul_cases<uint32_t, 8, true>(rng);
    check_sqr_cases<uint32_t, 8, true>(rng);

    check_add_cases<uint32_t, 8, false>(rng);
    check_sub_cases<uint32_t, 8, false>(rng);
    check_mul_cases<uint32_t, 8, false>(rng);
    check_sqr_cases<uint32_t, 8, false>(rng);
  }
  {
    // uint64_t, MAX=4 (to keep test time moderate)
    check_add_cases<uint64_t, 4, true>(rng);
    check_sub_cases<uint64_t, 4, true>(rng);
    check_mul_cases<uint64_t, 4, true>(rng);
    check_sqr_cases<uint64_t, 4, true>(rng);

    check_add_cases<uint64_t, 4, false>(rng);
    check_sub_cases<uint64_t, 4, false>(rng);
    check_mul_cases<uint64_t, 4, false>(rng);
    check_sqr_cases<uint64_t, 4, false>(rng);
  }

  std::cout << "[OK] All tests passed\n";
  return 0;
}
