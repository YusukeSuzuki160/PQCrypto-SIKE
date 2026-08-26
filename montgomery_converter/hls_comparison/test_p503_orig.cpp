// test_p503_orig.cpp — mont_ops_p503_orig.hpp (mp_mul+rdc_mont移植版) の正確性検証
// 実際の fpmul_mont() および CIOS基準と突き合わせる。
#include <cstdio>
#include <cstdint>
#include <random>
#include "../include/mont_ops_fast.hpp"
#include "../include/mont_ops_p503_orig.hpp"

using T = uint64_t;
static constexpr unsigned N = 8;
using CIOS = mont::MontOps_Fast<T, N>;
using P503ORIG = mont_p503_orig::MontOps_P503_Orig<T, N, 3>;  // p503_ZERO_WORDS = 3

int main() {
    T mod[N] = {
        0xFFFFFFFFFFFFFFFFULL, 0xFFFFFFFFFFFFFFFFULL, 0xFFFFFFFFFFFFFFFFULL, 0xABFFFFFFFFFFFFFFULL,
        0x13085BDA2211E7A0ULL, 0x1B9BF6C87B7E7DAFULL, 0x6045C6BDDA77A4D0ULL, 0x004066F541811E1EULL
    };
    T modp1[N] = {  // p503p1
        0x0000000000000000ULL, 0x0000000000000000ULL, 0x0000000000000000ULL, 0xAC00000000000000ULL,
        0x13085BDA2211E7A0ULL, 0x1B9BF6C87B7E7DAFULL, 0x6045C6BDDA77A4D0ULL, 0x004066F541811E1EULL
    };
    T mprime = 1;

    std::mt19937_64 rng(2026);
    int fails = 0, total = 0;
    for (int t = 0; t < 20000; t++) {
        T a[N], b[N], ref[N], got[N];
        for (unsigned j = 0; j < N; j++) { a[j] = rng(); b[j] = rng(); }
        a[N-1] %= (mod[N-1]+1); b[N-1] %= (mod[N-1]+1);
        CIOS::mul(a, b, ref, mod, mprime);
        P503ORIG::mul(a, b, got, modp1);
        total++;
        bool ok = true;
        for (unsigned j = 0; j < N; j++) if (ref[j] != got[j]) ok = false;
        if (!ok) {
            // lazy reduction: got - ref may equal mod (both representations valid)
            __uint128_t diff = 0; (void)diff;
            bool okLazy = true;
            T borrow = 0;
            T diffw[N];
            for (unsigned j = 0; j < N; j++) {
                __int128 d = (__int128)got[j] - (__int128)ref[j] - (__int128)borrow;
                borrow = (d < 0) ? 1 : 0;
                diffw[j] = (T)d;
            }
            for (unsigned j = 0; j < N; j++) if (diffw[j] != mod[j]) okLazy = false;
            if (!okLazy) {
                fails++;
                if (fails <= 3) {
                    printf("[FAIL]\n  ref: "); for (unsigned j=0;j<N;j++) printf("%016llX ", (unsigned long long)ref[j]);
                    printf("\n  got: "); for (unsigned j=0;j<N;j++) printf("%016llX ", (unsigned long long)got[j]);
                    printf("\n");
                }
            }
        }
    }
    printf("%d / %d passed (%d failed)\n", total - fails, total, fails);
    return fails ? 1 : 0;
}
