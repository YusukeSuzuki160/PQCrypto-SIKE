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
