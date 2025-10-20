// debug_karatsuba.cpp  (Karatsuba法のデバッグ用テスト)
// コンパイル: g++ -I. debug_karatsuba.cpp -o debug_karatsuba

#include "mpx_karatsuba_mul.hpp"
#include "mpx_camba_mul.hpp"
#include <iostream>
#include <iomanip>
#include <cassert>

using namespace mpx;

// テスト用の型定義
using TestDigit = ap_uint<64>;
constexpr unsigned MAX_NWORDS = 16;

// 配列を16進数で表示
void print_array(const char *name, const TestDigit *arr, unsigned nwords)
{
    std::cout << name << ": ";
    for (int i = nwords - 1; i >= 0; --i)
    {
        std::cout << std::hex << std::setfill('0') << std::setw(16) << (uint64_t)arr[i];
    }
    std::cout << std::dec << std::endl;
}

// 配列の比較
bool arrays_equal(const TestDigit *a, const TestDigit *b, unsigned nwords)
{
    for (unsigned i = 0; i < nwords; ++i)
    {
        if (a[i] != b[i])
            return false;
    }
    return true;
}

int main()
{
    std::cout << "=== Karatsuba法デバッグテスト ===" << std::endl;

    // 簡単なテストケース（1語）
    TestDigit a1[MAX_NWORDS] = {0};
    TestDigit b1[MAX_NWORDS] = {0};
    TestDigit c_comba1[2 * MAX_NWORDS] = {0};
    TestDigit c_karatsuba1[2 * MAX_NWORDS] = {0};

    a1[0] = 0x123456789ABCDEF0;
    b1[0] = 0x1111111111111111;

    const unsigned nwords1 = 1;

    std::cout << "\n--- 1語テスト ---" << std::endl;
    print_array("a", a1, nwords1);
    print_array("b", b1, nwords1);

    // Comba法
    PackedOps<TestDigit, MAX_NWORDS, true>::mul(a1, b1, c_comba1, nwords1);
    print_array("a * b (Comba)", c_comba1, 2 * nwords1);

    // Karatsuba法
    PackedOps<TestDigit, MAX_NWORDS, true>::mul(a1, b1, c_karatsuba1, nwords1);
    print_array("a * b (Karatsuba)", c_karatsuba1, 2 * nwords1);

    bool results_match1 = arrays_equal(c_comba1, c_karatsuba1, 2 * nwords1);
    std::cout << "結果一致: " << (results_match1 ? "YES" : "NO") << std::endl;

    // 2語テスト
    TestDigit a2[MAX_NWORDS] = {0};
    TestDigit b2[MAX_NWORDS] = {0};
    TestDigit c_comba2[2 * MAX_NWORDS] = {0};
    TestDigit c_karatsuba2[2 * MAX_NWORDS] = {0};

    a2[0] = 0x123456789ABCDEF0;
    a2[1] = 0xFEDCBA9876543210;
    b2[0] = 0x1111111111111111;
    b2[1] = 0x2222222222222222;

    const unsigned nwords2 = 2;

    std::cout << "\n--- 2語テスト ---" << std::endl;
    print_array("a", a2, nwords2);
    print_array("b", b2, nwords2);

    // Comba法
    PackedOps<TestDigit, MAX_NWORDS, true>::mul(a2, b2, c_comba2, nwords2);
    print_array("a * b (Comba)", c_comba2, 2 * nwords2);

    // Karatsuba法
    PackedOps<TestDigit, MAX_NWORDS, true>::mul(a2, b2, c_karatsuba2, nwords2);
    print_array("a * b (Karatsuba)", c_karatsuba2, 2 * nwords2);

    bool results_match2 = arrays_equal(c_comba2, c_karatsuba2, 2 * nwords2);
    std::cout << "結果一致: " << (results_match2 ? "YES" : "NO") << std::endl;

    // 3語テスト
    TestDigit a3[MAX_NWORDS] = {0};
    TestDigit b3[MAX_NWORDS] = {0};
    TestDigit c_comba3[2 * MAX_NWORDS] = {0};
    TestDigit c_karatsuba3[2 * MAX_NWORDS] = {0};

    a3[0] = 0x123456789ABCDEF0;
    a3[1] = 0xFEDCBA9876543210;
    a3[2] = 0x1111111111111111;
    b3[0] = 0x3333333333333333;
    b3[1] = 0x4444444444444444;
    b3[2] = 0x5555555555555555;

    const unsigned nwords3 = 3;

    std::cout << "\n--- 3語テスト ---" << std::endl;
    print_array("a", a3, nwords3);
    print_array("b", b3, nwords3);

    // Comba法
    PackedOps<TestDigit, MAX_NWORDS, true>::mul(a3, b3, c_comba3, nwords3);
    print_array("a * b (Comba)", c_comba3, 2 * nwords3);

    // Karatsuba法
    PackedOps<TestDigit, MAX_NWORDS, true>::mul(a3, b3, c_karatsuba3, nwords3);
    print_array("a * b (Karatsuba)", c_karatsuba3, 2 * nwords3);

    bool results_match3 = arrays_equal(c_comba3, c_karatsuba3, 2 * nwords3);
    std::cout << "結果一致: " << (results_match3 ? "YES" : "NO") << std::endl;

    if (!results_match1 || !results_match2 || !results_match3)
    {
        std::cout << "\nエラー: 結果が一致しません" << std::endl;
        return 1;
    }

    std::cout << "\n=== 全テスト完了 ===" << std::endl;
    return 0;
}
