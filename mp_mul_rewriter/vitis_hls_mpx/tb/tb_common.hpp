#pragma once
#include <ap_int.h>
#include <cstdint>
#include <cstring>
#include <random>
#include <iostream>
#include "../src/types.hpp"

// CPU-side reference (schoolbook, 128-bit carry). digit_t up to 64-bit.
static void ref_mul(const digit_t* a, const digit_t* b, digit_t* c, unsigned n) {
  std::memset(c, 0, sizeof(digit_t) * 2 * n);
  const unsigned W = 8 * sizeof(digit_t);
  for (unsigned i = 0; i < n; ++i) {
    __uint128_t carry = 0;
    for (unsigned j = 0; j < n; ++j) {
      __uint128_t A = a[LSW_FIRST ? i : (n-1-i)];
      __uint128_t B = b[LSW_FIRST ? j : (n-1-j)];
      __uint128_t prod = A * B;
      __uint128_t sum  = (__uint128_t)c[LSW_FIRST ? (i+j) : (2*n-1-(i+j))] + prod + carry;
      c[LSW_FIRST ? (i+j) : (2*n-1-(i+j))] = (digit_t)(sum & (((__uint128_t)1<<W) - 1));
      carry = sum >> W;
    }
    c[LSW_FIRST ? (i+n) : (2*n-1-(i+n))] += (digit_t)carry;
  }
}

static void gen_random(digit_t* x, unsigned n, uint64_t seed) {
  std::mt19937_64 rng(seed);
  for (unsigned i = 0; i < n; ++i) x[i] = (digit_t)rng();
}

static bool equal_words(const digit_t* a, const digit_t* b, unsigned m) {
  for (unsigned i = 0; i < m; ++i) if (a[i] != b[i]) return false;
  return true;
}

static void dump_words(const char* name, const digit_t* x, unsigned n) {
  std::cerr << name << ": ";
  for (unsigned i = 0; i < n; ++i) {
    std::cerr << std::hex << x[i] << (i+1<n?' ':'\n');
  }
  std::cerr << std::dec;
}
