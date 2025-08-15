#!/usr/bin/env bash
set -euo pipefail

root="vitis_hls_mpx"
mkdir -p "$root"/{include,src,tb,scripts}

# ========== include/mpx_packed.hpp ==========
cat >"$root/include/mpx_packed.hpp"<<'EOF'
#pragma once
#include <ap_int.h>
#include <type_traits>
#include <climits>
#include <cstdint>

namespace mpx {

// LSW_FIRST=true: a[0] is least-significant limb.
// false: a[0] is most-significant limb.
template <class Digit, unsigned MAX_NWORDS, bool LSW_FIRST = true>
struct PackedOps {
  static_assert(std::is_unsigned<Digit>::value, "Digit must be unsigned");
  static constexpr unsigned W = CHAR_BIT * sizeof(Digit);
  static_assert(W >= 8, "Digit width must be >= 8");

  using Big  = ap_uint<W * MAX_NWORDS>;
  using Big2 = ap_uint<2 * W * MAX_NWORDS>;

  static Big pack(const Digit* x, unsigned nwords) {
  #pragma HLS INLINE
    Big A = 0;
    for (unsigned i = 0; i < MAX_NWORDS; ++i) {
    #pragma HLS PIPELINE II=1
      if (i < nwords) {
        const unsigned src = LSW_FIRST ? i : (nwords - 1u - i);
        ap_uint<W> w = (ap_uint<W>)x[src];
        A |= (Big)w << (i * W);
      }
    }
    return A;
  }

  template <class Wide>
  static void unpack(const Wide& P, Digit* y, unsigned out_words) {
  #pragma HLS INLINE
    for (unsigned i = 0; i < out_words; ++i) {
    #pragma HLS PIPELINE II=1
      ap_uint<W> w = P.range((i + 1) * W - 1, i * W);
      const unsigned dst = LSW_FIRST ? i : (out_words - 1u - i);
      y[dst] = (Digit)w;
    }
  }

  static unsigned add(const Digit* a, const Digit* b, Digit* c, unsigned nwords) {
    Big A = pack(a, nwords);
    Big B = pack(b, nwords);
    Big S = A + B;
    unpack(S, c, nwords);
    const unsigned shift = nwords * W;
    ap_uint<1> carry = ((S >> shift) != 0);
    return (unsigned)carry;
  }

  static unsigned sub(const Digit* a, const Digit* b, Digit* c, unsigned nwords) {
    Big A = pack(a, nwords);
    Big B = pack(b, nwords);
    ap_uint<1> borrow = (A < B);
    Big D = A - B;
    unpack(D, c, nwords);
    return (unsigned)borrow;
  }

  static void mul(const Digit* a, const Digit* b, Digit* c, unsigned nwords) {
    Big A = pack(a, nwords);
    Big B = pack(b, nwords);
    Big2 P = (Big)A * (Big)B;
    unpack(P, c, 2 * nwords);
  }

  static void sqr(const Digit* a, Digit* c, unsigned nwords) {
    Big A = pack(a, nwords);
    Big2 P = (Big)A * (Big)A;
    unpack(P, c, 2 * nwords);
  }
};

} // namespace mpx
EOF

# ========== src/types.hpp ==========
cat >"$root/src/types.hpp"<<'EOF'
#pragma once
#include <ap_int.h>
#include <climits>
#include <cstdint>

// === Global configuration for synthesis ===
using digit_t = uint64_t;             // 32/64 などに変更可
static const unsigned MAX_NWORDS = 8; // nwords <= MAX_NWORDS
static const bool     LSW_FIRST  = true; // false で MSW-first
EOF

# ========== src/mp_mul_orig.cpp ==========
cat >"$root/src/mp_mul_orig.cpp"<<'EOF'
#include "types.hpp"

#define W (CHAR_BIT * sizeof(digit_t))

// MUL(x, y, HI_ptr, LO_out): digit_t × digit_t → 2Wbit
#define MUL(x, y, HI_ptr, LO_out) do { \
  ap_uint<2*W> _p = (ap_uint<W>)(x) * (ap_uint<W>)(y); \
  (LO_out) = (digit_t)_p; \
  *(HI_ptr) = (digit_t)(_p >> W); \
} while(0)

// ADDC(cin, a, b, cout, sum_out): cin + a + b
#define ADDC(cin, a, b, cout, sum_out) do { \
  ap_uint<W+1> _s = (ap_uint<W+1>)(cin) + (ap_uint<W>)(a) + (ap_uint<W>)(b); \
  (sum_out) = (digit_t)_s; \
  (cout) = (unsigned)(_s >> W); \
} while(0)

extern "C" void mp_mul_orig(const digit_t* a, const digit_t* b, digit_t* c, const unsigned int nwords) {
#pragma HLS INTERFACE m_axi     port=a      offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi     port=b      offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi     port=c      offset=slave bundle=gmem
#pragma HLS INTERFACE s_axilite port=a      bundle=control
#pragma HLS INTERFACE s_axilite port=b      bundle=control
#pragma HLS INTERFACE s_axilite port=c      bundle=control
#pragma HLS INTERFACE s_axilite port=nwords bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

  unsigned int i, j;
  digit_t t = 0, u = 0, v = 0, UV[2];
  unsigned int carry = 0;

  // 下三角
  outer1:
  for (i = 0; i < nwords; i++) {
#pragma HLS PIPELINE II=1
    inner1:
    for (j = 0; j <= i; j++) {
#pragma HLS UNROLL factor=2 skip_exit_check
      const unsigned aj = LSW_FIRST ? j : (nwords-1-j);
      const unsigned bj = LSW_FIRST ? (i-j) : (nwords-1-(i-j));
      MUL(a[aj], b[bj], UV+1, UV[0]);
      ADDC(0,       UV[0], v, carry, v);
      ADDC(carry,   UV[1], u, carry, u);
      t += carry;
    }
    const unsigned ci = LSW_FIRST ? i : (2*nwords-1-i);
    c[ci] = v;
    v = u; u = t; t = 0;
  }

  // 上三角
  outer2:
  for (i = nwords; i < 2*nwords-1; i++) {
#pragma HLS PIPELINE II=1
    inner2:
    for (j = i-nwords+1; j < nwords; j++) {
#pragma HLS UNROLL factor=2 skip_exit_check
      const unsigned aj = LSW_FIRST ? j : (nwords-1-j);
      const unsigned bj = LSW_FIRST ? (i-j) : (nwords-1-(i-j));
      MUL(a[aj], b[bj], UV+1, UV[0]);
      ADDC(0,       UV[0], v, carry, v);
      ADDC(carry,   UV[1], u, carry, u);
      t += carry;
    }
    const unsigned ci = LSW_FIRST ? i : (2*nwords-1-i);
    c[ci] = v;
    v = u; u = t; t = 0;
  }
  c[LSW_FIRST ? (2*nwords-1) : 0] = v;
}
EOF

# ========== src/mp_mul_packed.cpp ==========
cat >"$root/src/mp_mul_packed.cpp"<<'EOF'
#include "types.hpp"
#include "../include/mpx_packed.hpp"

extern "C" void mp_mul_packed(const digit_t* a, const digit_t* b, digit_t* c, const unsigned int nwords) {
#pragma HLS INTERFACE m_axi     port=a      offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi     port=b      offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi     port=c      offset=slave bundle=gmem
#pragma HLS INTERFACE s_axilite port=a      bundle=control
#pragma HLS INTERFACE s_axilite port=b      bundle=control
#pragma HLS INTERFACE s_axilite port=c      bundle=control
#pragma HLS INTERFACE s_axilite port=nwords bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

  if (nwords > MAX_NWORDS) return;
  mpx::PackedOps<digit_t, MAX_NWORDS, LSW_FIRST>::mul(a, b, c, nwords);
}
EOF

# ========== tb/tb_common.hpp ==========
cat >"$root/tb/tb_common.hpp"<<'EOF'
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
EOF

# ========== tb/tb_mul_orig.cpp ==========
cat >"$root/tb/tb_mul_orig.cpp"<<'EOF'
#include "tb_common.hpp"
extern "C" void mp_mul_orig(const digit_t* a, const digit_t* b, digit_t* c, const unsigned int nwords);

int main() {
  for (unsigned n = 1; n <= MAX_NWORDS; ++n) {
    digit_t *a = new digit_t[n];
    digit_t *b = new digit_t[n];
    digit_t *c = new digit_t[2*n];
    digit_t *r = new digit_t[2*n];

    // zero case
    std::memset(a, 0, sizeof(digit_t)*n);
    std::memset(b, 0, sizeof(digit_t)*n);
    std::memset(c, 0, sizeof(digit_t)*2*n);
    std::memset(r, 0, sizeof(digit_t)*2*n);
    mp_mul_orig(a,b,c,n);
    ref_mul(a,b,r,n);
    if (!equal_words(c,r,2*n)) { std::cerr<<"Zero case failed n="<<n<<"\n"; return 1; }

    // random
    for (int t=0; t<50; ++t) {
      gen_random(a, n, 0xA11C0DE + n*997 + t);
      gen_random(b, n, 0xDEADBEEF ^ (n*131 + t));
      std::memset(c, 0, sizeof(digit_t)*2*n);
      std::memset(r, 0, sizeof(digit_t)*2*n);
      mp_mul_orig(a,b,c,n);
      ref_mul(a,b,r,n);
      if (!equal_words(c,r,2*n)) {
        std::cerr<<"Mismatch n="<<n<<" t="<<t<<"\n";
        dump_words("A", a, n);
        dump_words("B", b, n);
        dump_words("C", c, 2*n);
        dump_words("R", r, 2*n);
        return 2;
      }
    }

    delete[] a; delete[] b; delete[] c; delete[] r;
  }
  std::cout << "[tb_orig] PASS\n";
  return 0;
}
EOF

# ========== tb/tb_mul_packed.cpp ==========
cat >"$root/tb/tb_mul_packed.cpp"<<'EOF'
#include "tb_common.hpp"
extern "C" void mp_mul_packed(const digit_t* a, const digit_t* b, digit_t* c, const unsigned int nwords);

int main() {
  for (unsigned n = 1; n <= MAX_NWORDS; ++n) {
    digit_t *a = new digit_t[n];
    digit_t *b = new digit_t[n];
    digit_t *c = new digit_t[2*n];
    digit_t *r = new digit_t[2*n];

    // zero case
    std::memset(a, 0, sizeof(digit_t)*n);
    std::memset(b, 0, sizeof(digit_t)*n);
    std::memset(c, 0, sizeof(digit_t)*2*n);
    std::memset(r, 0, sizeof(digit_t)*2*n);
    mp_mul_packed(a,b,c,n);
    ref_mul(a,b,r,n);
    if (!equal_words(c,r,2*n)) { std::cerr<<"Zero case failed n="<<n<<"\n"; return 1; }

    // random
    for (int t=0; t<50; ++t) {
      gen_random(a, n, 0xBADC0FFEE + n*991 + t);
      gen_random(b, n, 0xFEEDFACE ^ (n*127 + t));
      std::memset(c, 0, sizeof(digit_t)*2*n);
      std::memset(r, 0, sizeof(digit_t)*2*n);
      mp_mul_packed(a,b,c,n);
      ref_mul(a,b,r,n);
      if (!equal_words(c,r,2*n)) {
        std::cerr<<"Mismatch n="<<n<<" t="<<t<<"\n";
        dump_words("A", a, n);
        dump_words("B", b, n);
        dump_words("C", c, 2*n);
        dump_words("R", r, 2*n);
        return 2;
      }
    }

    delete[] a; delete[] b; delete[] c; delete[] r;
  }
  std::cout << "[tb_packed] PASS\n";
  return 0;
}
EOF

# ========== scripts/run_hls.tcl ==========
cat >"$root/scripts/run_hls.tcl"<<'EOF'
# Vitis HLS batch flow to compare "mp_mul_orig" vs "mp_mul_packed".
# Usage: vitis_hls -f scripts/run_hls.tcl
set proj_name mpx_compare
set src_dir   "./src"
set inc_dir   "./include"
set tb_dir    "./tb"

# Env
set part   [expr {[info exists ::env(HLS_PART)] ? $::env(HLS_PART) : "xcu250-figd2104-2L-e"}]
set period [expr {[info exists ::env(HLS_CLK)]  ? $::env(HLS_CLK)  : 3.3}]

# Optional extra include flags
set extra_inc ""
if {[info exists ::env(HLS_INC)] && $::env(HLS_INC) ne ""} {
  set extra_inc $::env(HLS_INC)
}

puts "===> PART=$part, CLOCK=$period ns, EXTRA_INC='$extra_inc'"

open_project -reset $proj_name

# === Solution: Original (schoolbook) ===
set_top mp_mul_orig
add_files -cflags "-I$inc_dir -I$src_dir $extra_inc" $src_dir/mp_mul_orig.cpp
add_files -cflags "-I$inc_dir -I$src_dir $extra_inc" $src_dir/types.hpp
add_files -tb   -cflags "-I$inc_dir -I$src_dir $extra_inc" $tb_dir/tb_mul_orig.cpp

open_solution -reset "orig"
set_part $part
create_clock -period $period -name default
csim_design
csynth_design
# cosim_design -setup -rtl verilog
export_design -format ip_catalog -rtl verilog -output ./export_orig

# === Solution: Packed (ap_uint) ===
set_top mp_mul_packed
add_files -cflags "-I$inc_dir -I$src_dir $extra_inc" $src_dir/mp_mul_packed.cpp
add_files -cflags "-I$inc_dir -I$src_dir $extra_inc" $src_dir/types.hpp
add_files -cflags "-I$inc_dir -I$src_dir $extra_inc" $inc_dir/mpx_packed.hpp
add_files -tb   -cflags "-I$inc_dir -I$src_dir $extra_inc" $tb_dir/tb_mul_packed.cpp

open_solution -reset "packed"
set_part $part
create_clock -period $period -name default
csim_design
csynth_design
# cosim_design -setup -rtl verilog
export_design -format ip_catalog -rtl verilog -output ./export_packed

exit
EOF

echo "Project generated at $root"
