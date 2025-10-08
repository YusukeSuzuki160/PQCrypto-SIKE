#include <ap_int.h>
#include <climits>
#include <type_traits>
#include "mpx_packed.hpp"
// test_packed_ops.cpp
// PackedOpsベースの学校式乗算のテスト

#include <iostream>
#include <cstdint>

// 多倍長乗算関数
void mp_mul_packed_ops(const uint64_t *a, const uint64_t *b, uint64_t *c, const unsigned int nwords)
{
  // Auto-converted by mpx_auto_rewriter_v4_2 (packed ops multiplication)
  constexpr unsigned MAX_NWORDS = 8;
  #include "mpx_packed_128bit.hpp"
  using DigitA = std::remove_cv_t<std::remove_pointer_t<decltype(a)>>;
  using DigitB = std::remove_cv_t<std::remove_pointer_t<decltype(b)>>;
  using DigitC = std::remove_cv_t<std::remove_pointer_t<decltype(c)>>;
  static_assert(sizeof(DigitA) == sizeof(DigitB) && sizeof(DigitA) == sizeof(DigitC),
                "a,b,c digits must have the same size");
  static_assert(std::is_unsigned<DigitA>::value || std::is_class<DigitA>::value,
                "Digit type must be unsigned or ap_uint-like");
  using Digit = DigitA;
  if (nwords > MAX_NWORDS) return;
  mpx::PackedOps<Digit, MAX_NWORDS, true>::mul(a, b, c, nwords);
}


int main() {
    // テストケース
    uint64_t a[2] = {0x123456789ABCDEF0, 0xFEDCBA9876543210};
    uint64_t b[2] = {0x1111111111111111, 0x2222222222222222};
    uint64_t c[4] = {0};
    
    mp_mul_packed_ops(a, b, c, 2);
    
    std::cout << "Test: PackedOps-based multiplication\n";
    std::cout << "a = 0x" << std::hex << a[1] << a[0] << "\n";
    std::cout << "b = 0x" << std::hex << b[1] << b[0] << "\n";
    std::cout << "c = 0x" << std::hex << c[3] << c[2] << c[1] << c[0] << "\n";
    
    return 0;
}
