// test_original.cpp
// 元の多倍長乗算のテスト

#include <iostream>
#include <cstdint>

// 多倍長乗算関数（学校式）
void mp_mul_original(const uint64_t *a, const uint64_t *b, uint64_t *c, const unsigned int nwords)
{
    // 結果配列を初期化
    for (unsigned i = 0; i < 2 * nwords; ++i) {
        c[i] = 0;
    }

    // 学校式乗算アルゴリズム
    for (unsigned i = 0; i < nwords; ++i) {
        for (unsigned j = 0; j < nwords; ++j) {
            // 64ビット×64ビットの乗算（*演算子を使用）
            uint64_t product = a[i] * b[j];
            
            // 現在の位置に加算
            uint64_t sum = c[i + j] + product;
            c[i + j] = sum;
            
            // オーバーフローをチェック
            if (sum < product) {
                // キャリーを次の位置に伝播
                unsigned int pos = i + j + 1;
                while (pos < 2 * nwords) {
                    c[pos]++;
                    if (c[pos] != 0) break; // オーバーフローしなかった
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
