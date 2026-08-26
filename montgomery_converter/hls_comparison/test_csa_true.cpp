// test_csa_true.cpp — mont_ops_fios_csa_true.hpp の正確性の集中検証
// g++ -std=c++17 -O0 -o test_csa_true test_csa_true.cpp && ./test_csa_true
#include <cstdio>
#include <cstdint>
#include <cstdlib>
#include <random>
#include "../include/mont_ops_fast.hpp"
#include "../include/mont_ops_fios_csa_true.hpp"

using T = uint64_t;
static constexpr unsigned N = 4;
using CIOS = mont::MontOps_Fast<T, N>;
using CSA_TRUE = mont_fios_csa_true::MontOps_FIOS_CSA_True<T, N>;

int main() {
    // 2^255 - 19 の下位 4 語 x 64bit
    T mod[N] = {
        0xFFFFFFFFFFFFFFEDULL,
        0xFFFFFFFFFFFFFFFFULL,
        0xFFFFFFFFFFFFFFFFULL,
        0x7FFFFFFFFFFFFFFFULL
    };
    T mprime;
    {
        uint64_t m = mod[0], inv = 1;
        for (int i = 0; i < 63; i++) inv = inv * (2 - m * inv);
        mprime = static_cast<T>(-inv);
    }
    printf("mod[0]=0x%016llX mprime=0x%016llX\n",
           (unsigned long long)mod[0], (unsigned long long)mprime);
    uint64_t check = (uint64_t)mod[0] * mprime + 1;
    printf("check (should be 0) = 0x%016llX\n\n", (unsigned long long)check);

    std::mt19937_64 rng(12345);
    int fails = 0, total = 0;

    auto run_one = [&](T a[N], T b[N], const char* label) {
        T ref[N], got[N];
        CIOS::mul(a, b, ref, mod, mprime);
        CSA_TRUE::mul(a, b, got, mod, mprime);
        bool ok = true;
        for (unsigned j = 0; j < N; j++) if (ref[j] != got[j]) ok = false;
        total++;
        if (!ok) {
            fails++;
            printf("[FAIL] %s\n  a: ");
            for (unsigned j=0;j<N;j++) printf("%016llX ", (unsigned long long)a[j]); printf("\n  b: ");
            for (unsigned j=0;j<N;j++) printf("%016llX ", (unsigned long long)b[j]); printf("\n  ref: ");
            for (unsigned j=0;j<N;j++) printf("%016llX ", (unsigned long long)ref[j]); printf("\n  got: ");
            for (unsigned j=0;j<N;j++) printf("%016llX ", (unsigned long long)got[j]); printf("\n");
        }
    };

    // 決め打ちケース
    T a1[N] = {1,0,0,0}, b1[N] = {1,0,0,0};
    run_one(a1, b1, "1*1");

    T a2[N] = {0xDEADBEEFCAFEBABEULL, 0x0123456789ABCDEFULL,
               0xFEDCBA9876543210ULL, 0x0FFFFFFFFFFFFFFFULL};
    T b2[N] = {0x1111111111111111ULL, 0x2222222222222222ULL,
               0x3333333333333333ULL, 0x0555555555555555ULL};
    run_one(a2, b2, "fixed pattern");

    // ランダムケース (mod未満に制限)
    for (int t = 0; t < 20000; t++) {
        T a[N], b[N];
        for (unsigned j = 0; j < N; j++) { a[j] = rng(); b[j] = rng(); }
        a[N-1] &= 0x7FFFFFFFFFFFFFFFULL;
        b[N-1] &= 0x7FFFFFFFFFFFFFFFULL;
        run_one(a, b, "random");
    }

    printf("\n%d / %d passed (%d failed)\n", total - fails, total, fails);
    return fails ? 1 : 0;
}
