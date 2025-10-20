// test_mpx_mul.cpp  (乗算ライブラリのテスト例)
// コンパイル: g++ -I. test_mpx_mul.cpp -o test_mpx_mul

#include "mpx_camba_mul.hpp"
#include "mpx_karatsuba_mul.hpp"
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
    std::cout << "=== 乗算ライブラリテスト ===" << std::endl;

    // テストデータの準備
    TestDigit a[MAX_NWORDS] = {0};
    TestDigit b[MAX_NWORDS] = {0};
    TestDigit c_comba[2 * MAX_NWORDS] = {0};
    TestDigit c_karatsuba[2 * MAX_NWORDS] = {0};

    // 簡単なテストケース
    a[0] = 0x123456789ABCDEF0;
    a[1] = 0xFEDCBA9876543210;
    b[0] = 0x1111111111111111;
    b[1] = 0x2222222222222222;

    const unsigned nwords = 2;

    std::cout << "\n--- 入力データ ---" << std::endl;
    print_array("a", a, nwords);
    print_array("b", b, nwords);

    // Comba法での乗算
    std::cout << "\n--- Comba法 ---" << std::endl;
    PackedOps<TestDigit, MAX_NWORDS, true>::mul(a, b, c_comba, nwords);
    print_array("a * b (Comba)", c_comba, 2 * nwords);

    // Karatsuba法での乗算
    std::cout << "\n--- Karatsuba法 ---" << std::endl;
    PackedOps<TestDigit, MAX_NWORDS, true>::mul(a, b, c_karatsuba, nwords);
    print_array("a * b (Karatsuba)", c_karatsuba, 2 * nwords);

    // 結果の比較
    std::cout << "\n--- 結果比較 ---" << std::endl;
    bool results_match = arrays_equal(c_comba, c_karatsuba, 2 * nwords);
    std::cout << "結果一致: " << (results_match ? "YES" : "NO") << std::endl;

    if (!results_match)
    {
        std::cout << "エラー: Comba法とKaratsuba法の結果が一致しません" << std::endl;
        return 1;
    }

    // より大きなテストケース
    std::cout << "\n--- 大きなテストケース (4語) ---" << std::endl;

    // 配列をクリア
    for (unsigned i = 0; i < MAX_NWORDS; ++i)
    {
        a[i] = b[i] = 0;
    }
    for (unsigned i = 0; i < 2 * MAX_NWORDS; ++i)
    {
        c_comba[i] = c_karatsuba[i] = 0;
    }

    // 4語のテストデータ
    a[0] = 0x123456789ABCDEF0;
    a[1] = 0xFEDCBA9876543210;
    a[2] = 0x1111111111111111;
    a[3] = 0x2222222222222222;

    b[0] = 0x3333333333333333;
    b[1] = 0x4444444444444444;
    b[2] = 0x5555555555555555;
    b[3] = 0x6666666666666666;

    const unsigned nwords_large = 4;

    print_array("a (large)", a, nwords_large);
    print_array("b (large)", b, nwords_large);

    // Comba法
    PackedOps<TestDigit, MAX_NWORDS, true>::mul(a, b, c_comba, nwords_large);
    print_array("a * b (Comba, large)", c_comba, 2 * nwords_large);

    // Karatsuba法
    PackedOps<TestDigit, MAX_NWORDS, true>::mul(a, b, c_karatsuba, nwords_large);
    print_array("a * b (Karatsuba, large)", c_karatsuba, 2 * nwords_large);

    // 結果の比較
    bool results_match_large = arrays_equal(c_comba, c_karatsuba, 2 * nwords_large);
    std::cout << "大きなテスト結果一致: " << (results_match_large ? "YES" : "NO") << std::endl;

    if (!results_match_large)
    {
        std::cout << "エラー: 大きなテストケースで結果が一致しません" << std::endl;
        return 1;
    }

    std::cout << "\n=== 全テスト完了 ===" << std::endl;
    return 0;
}
