// test_simple.cpp
// 簡単な多倍長乗算のテスト（ap_int.hを使わない）

#include <iostream>
#include <cstdint>

// 簡単な多倍長乗算関数
void mp_mul_simple(const uint64_t *a, const uint64_t *b, uint64_t *c, const unsigned int nwords)
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
            uint64_t a_val = a[i];
            uint64_t b_val = b[j];

            // 手動で128ビット乗算を実装
            uint64_t a_low = a_val & 0xFFFFFFFF;
            uint64_t a_high = a_val >> 32;
            uint64_t b_low = b_val & 0xFFFFFFFF;
            uint64_t b_high = b_val >> 32;

            uint64_t p0 = a_low * b_low;
            uint64_t p1 = a_low * b_high;
            uint64_t p2 = a_high * b_low;
            uint64_t p3 = a_high * b_high;

            uint64_t low = p0 + ((p1 & 0xFFFFFFFF) << 32);
            uint64_t high = p3 + (p1 >> 32) + (p2 >> 32) + (low < p0 ? 1 : 0);

            // 現在の位置に加算
            uint64_t sum = c[i + j] + low;
            c[i + j] = sum;
            uint64_t carry = (sum < low) ? 1 : 0;

            // キャリーを次の位置に伝播
            unsigned int pos = i + j + 1;
            while (carry > 0 && pos < 2 * nwords)
            {
                uint64_t next_sum = c[pos] + carry;
                c[pos] = next_sum;
                carry = (next_sum < carry) ? 1 : 0;
                pos++;
            }

            // 上位ビットを加算
            if (i + j + 1 < 2 * nwords)
            {
                uint64_t high_sum = c[i + j + 1] + high;
                c[i + j + 1] = high_sum;
                uint64_t high_carry = (high_sum < high) ? 1 : 0;

                // 上位ビットのキャリーも伝播
                pos = i + j + 2;
                while (high_carry > 0 && pos < 2 * nwords)
                {
                    uint64_t next_sum = c[pos] + high_carry;
                    c[pos] = next_sum;
                    high_carry = (next_sum < high_carry) ? 1 : 0;
                    pos++;
                }
            }
        }
    }
}

int main()
{
    // テストケース
    uint64_t a[2] = {0x123456789ABCDEF0, 0xFEDCBA9876543210};
    uint64_t b[2] = {0x1111111111111111, 0x2222222222222222};
    uint64_t c[4] = {0};

    mp_mul_simple(a, b, c, 2);

    std::cout << "Test: Simple multiplication\n";
    std::cout << "a = 0x" << std::hex << a[1] << a[0] << "\n";
    std::cout << "b = 0x" << std::hex << b[1] << b[0] << "\n";
    std::cout << "c = 0x" << std::hex << c[3] << c[2] << c[1] << c[0] << "\n";

    return 0;
}
