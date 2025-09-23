// test_schoolbook.cpp
// 学校式乗算のテストプログラム

#include <ap_int.h>
#include <iostream>
#include <cassert>

// テスト用の多倍長乗算関数（学校式）
void mp_mul_test(const uint64_t *a, const uint64_t *b, uint64_t *c, const unsigned int nwords)
{
    // 結果配列を初期化
    for (unsigned i = 0; i < 2 * nwords; ++i)
    {
        c[i] = 0;
    }

    // 学校式乗算アルゴリズム
    for (unsigned i = 0; i < nwords; ++i)
    {
        for (unsigned j = 0; j < nwords; ++j)
        {
            // 64ビット×64ビットの乗算
            ap_uint<128> product = (ap_uint<64>)a[i] * (ap_uint<64>)b[j];
            ap_uint<64> low = product.range(63, 0);
            ap_uint<64> high = product.range(127, 64);

            // 現在の位置に加算
            ap_uint<128> sum = c[i + j] + low;
            c[i + j] = sum.range(63, 0);
            ap_uint<64> carry = sum.range(127, 64);

            // キャリーを次の位置に伝播
            unsigned int pos = i + j + 1;
            while (carry > 0 && pos < 2 * nwords)
            {
                ap_uint<128> next_sum = c[pos] + carry;
                c[pos] = next_sum.range(63, 0);
                carry = next_sum.range(127, 64);
                pos++;
            }

            // 上位ビットを加算
            if (i + j + 1 < 2 * nwords)
            {
                ap_uint<128> high_sum = c[i + j + 1] + high;
                c[i + j + 1] = high_sum.range(63, 0);
                ap_uint<64> high_carry = high_sum.range(127, 64);

                // 上位ビットのキャリーも伝播
                pos = i + j + 2;
                while (high_carry > 0 && pos < 2 * nwords)
                {
                    ap_uint<128> next_sum = c[pos] + high_carry;
                    c[pos] = next_sum.range(63, 0);
                    high_carry = next_sum.range(127, 64);
                    pos++;
                }
            }
        }
    }
}

int main()
{
    // テストケース1: 小さな数値
    uint64_t a1[2] = {0x123456789ABCDEF0, 0xFEDCBA9876543210};
    uint64_t b1[2] = {0x1111111111111111, 0x2222222222222222};
    uint64_t c1[4] = {0};

    mp_mul_test(a1, b1, c1, 2);

    std::cout << "Test 1: Small numbers\n";
    std::cout << "a = 0x" << std::hex << a1[1] << a1[0] << "\n";
    std::cout << "b = 0x" << std::hex << b1[1] << b1[0] << "\n";
    std::cout << "c = 0x" << std::hex << c1[3] << c1[2] << c1[1] << c1[0] << "\n";

    // テストケース2: 大きな数値
    uint64_t a2[4] = {0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF};
    uint64_t b2[4] = {0x0000000000000001, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000};
    uint64_t c2[8] = {0};

    mp_mul_test(a2, b2, c2, 4);

    std::cout << "\nTest 2: Large numbers\n";
    std::cout << "a = 0x" << std::hex << a2[3] << a2[2] << a2[1] << a2[0] << "\n";
    std::cout << "b = 0x" << std::hex << b2[3] << b2[2] << b2[1] << b2[0] << "\n";
    std::cout << "c = 0x" << std::hex << c2[7] << c2[6] << c2[5] << c2[4] << c2[3] << c2[2] << c2[1] << c2[0] << "\n";

    // テストケース3: ゼロ
    uint64_t a3[2] = {0, 0};
    uint64_t b3[2] = {0x123456789ABCDEF0, 0xFEDCBA9876543210};
    uint64_t c3[4] = {0};

    mp_mul_test(a3, b3, c3, 2);

    std::cout << "\nTest 3: Zero multiplication\n";
    std::cout << "a = 0x" << std::hex << a3[1] << a3[0] << "\n";
    std::cout << "b = 0x" << std::hex << b3[1] << b3[0] << "\n";
    std::cout << "c = 0x" << std::hex << c3[3] << c3[2] << c3[1] << c3[0] << "\n";

    // 結果の検証
    bool all_zero = true;
    for (int i = 0; i < 4; i++)
    {
        if (c3[i] != 0)
        {
            all_zero = false;
            break;
        }
    }

    if (all_zero)
    {
        std::cout << "✓ Zero multiplication test passed\n";
    }
    else
    {
        std::cout << "✗ Zero multiplication test failed\n";
    }

    return 0;
}
