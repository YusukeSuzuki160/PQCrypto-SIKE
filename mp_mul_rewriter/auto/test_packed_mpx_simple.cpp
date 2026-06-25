// test_packed_mpx_simple.cpp
// mpx_packed.hppを直接使用するシンプルなテスト（512bit固定）

#include <ap_int.h>
#include <climits>
#include <cstdint>
#include <iostream>
#include <cstring>
#include "mpx_packed.hpp"

using digit_t = uint64_t;
static const unsigned MAX_NWORDS = 8; // 8語 = 512bit固定
static const int LSW_FIRST = 1;

// mpx_packed.hppのPackedOpsを使用した乗算
void mp_mul_packed_simple(const digit_t *a, const digit_t *b, digit_t *c, const unsigned nwords)
{
    mpx::PackedOps<digit_t, MAX_NWORDS, LSW_FIRST>::mul(a, b, c, nwords);
}

// HLS トップ関数
void test_mul_packed_simple(const digit_t a[8], const digit_t b[8], digit_t c[16])
{
#pragma HLS INTERFACE bram port = a
#pragma HLS INTERFACE bram port = b
#pragma HLS INTERFACE bram port = c
#pragma HLS INTERFACE s_axilite port = return bundle = control
    mp_mul_packed_simple(a, b, c, 8);
}

// C シミュレーション用
#ifndef __SYNTHESIS__
int main()
{
    digit_t a[8] = {1, 2, 3, 4, 5, 6, 7, 8};
    digit_t b[8] = {9, 10, 11, 12, 13, 14, 15, 16};
    digit_t c[16] = {0};

    mp_mul_packed_simple(a, b, c, 8);

    std::cout << "mpx_packed.hpp (512bit) multiplication result:\n";
    for (int i = 0; i < 16; i++)
    {
        std::cout << "c[" << i << "] = " << c[i] << "\n";
    }

    return 0;
}
#endif

