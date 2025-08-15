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
