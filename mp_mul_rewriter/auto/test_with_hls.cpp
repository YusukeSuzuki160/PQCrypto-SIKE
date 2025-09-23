#include <ap_int.h>
#include <climits>
#include <type_traits>
#include "mpx_packed.hpp"
// test_original.cpp
// 元の多倍長乗算のテスト

#include <iostream>
#include <cstdint>

// 多倍長乗算関数（学校式）
void mp_mul_original(const uint64_t *a, const uint64_t *b, uint64_t *c, const unsigned int nwords)
{
  // Auto-converted by mpx_auto_rewriter_v4_2 (schoolbook multiplication)
  constexpr unsigned MAX_NWORDS = 8;
  constexpr unsigned MUL_BITS = 32;
  using DigitA = std::remove_cv_t<std::remove_pointer_t<decltype(a)>>;
  using DigitB = std::remove_cv_t<std::remove_pointer_t<decltype(b)>>;
  using DigitC = std::remove_cv_t<std::remove_pointer_t<decltype(c)>>;
  static_assert(sizeof(DigitA) == sizeof(DigitB) && sizeof(DigitA) == sizeof(DigitC),
                "a,b,c digits must have the same size");
  static_assert(std::is_unsigned<DigitA>::value || std::is_class<DigitA>::value,
                "Digit type must be unsigned or ap_uint-like");
  using Digit = DigitA;
  if (nwords > MAX_NWORDS) return;
  #pragma HLS INLINE off
  #pragma HLS ALLOCATION instances = mul limit = 1 operation
  #pragma HLS ALLOCATION instances = mul limit = 1 function
  #pragma HLS RESOURCE variable = a core = RAM_1P
  #pragma HLS RESOURCE variable = b core = RAM_1P
  #pragma HLS RESOURCE variable = c core = RAM_1P
  #pragma HLS BIND_STORAGE variable = a type = RAM_1P
  #pragma HLS BIND_STORAGE variable = b type = RAM_1P
  #pragma HLS BIND_STORAGE variable = c type = RAM_1P
  #pragma HLS RESOURCE core = Mul_LUT
  #pragma HLS DATAFLOW off
  // 結果配列を初期化
  for (unsigned i = 0; i < 2 * nwords; ++i) {
    c[i] = 0;
  }

  // 学校式乗算アルゴリズム (32ビット単位)
  for (unsigned i = 0; i < nwords; ++i) {
    for (unsigned j = 0; j < nwords; ++j) {
      // 32ビット×32ビットの乗算
      ap_uint<64> product = (ap_uint<32>)a[i] * (ap_uint<32>)b[j];
      ap_uint<32> low = product.range(31, 0);
      ap_uint<32> high = product.range(63, 32);

      // 現在の位置に加算
      ap_uint<64> sum = c[i + j] + low;
      c[i + j] = sum.range(31, 0);
      ap_uint<32> carry = sum.range(63, 32);

      // キャリーを次の位置に伝播
      unsigned int pos = i + j + 1;
      while (carry > 0 && pos < 2 * nwords) {
        ap_uint<64> next_sum = c[pos] + carry;
        c[pos] = next_sum.range(31, 0);
        carry = next_sum.range(63, 32);
        pos++;
      }

      // 上位ビットを加算
      if (i + j + 1 < 2 * nwords) {
        ap_uint<64> high_sum = c[i + j + 1] + high;
        c[i + j + 1] = high_sum.range(31, 0);
        ap_uint<32> high_carry = high_sum.range(63, 32);

        // 上位ビットのキャリーも伝播
        pos = i + j + 2;
        while (high_carry > 0 && pos < 2 * nwords) {
          ap_uint<64> next_sum = c[pos] + high_carry;
          c[pos] = next_sum.range(31, 0);
          high_carry = next_sum.range(63, 32);
          pos++;
        }
      }
    }
  }
}


int main() {
    // テストケース
    uint64_t a[2] = {0x123456789ABCDEF0, 0xFEDCBA9876543210};
    uint64_t b[2] = {0x1111111111111111, 0x2222222222222222};
    uint64_t c[4] = {0};
    
    mp_mul_original(a, b, c, 2);
    
    std::cout << "Test: Original multiplication\n";
    std::cout << "a = 0x" << std::hex << a[1] << a[0] << "\n";
    std::cout << "b = 0x" << std::hex << b[1] << b[0] << "\n";
    std::cout << "c = 0x" << std::hex << c[3] << c[2] << c[1] << c[0] << "\n";
    
    return 0;
}
