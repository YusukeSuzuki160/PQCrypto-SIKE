// test_csa_square.cpp — mont_ops_fios_csa_square.hpp の正確性検証
#include <cstdio>
#include <cstdint>
#include <random>
#include "../include/mont_ops_fast.hpp"
#include "../include/mont_ops_fios_csa_square.hpp"

using T = uint64_t;
static constexpr unsigned N = 8;
using CIOS = mont::MontOps_Fast<T, N>;
using SQR  = mont_fios_csa_square::MontOps_FIOS_CSA_Square<T, N>;

int main() {
    T mod[N] = {
        0xFFFFFFFFFFFFFFFFULL, 0xFFFFFFFFFFFFFFFFULL, 0xFFFFFFFFFFFFFFFFULL, 0xABFFFFFFFFFFFFFFULL,
        0x13085BDA2211E7A0ULL, 0x1B9BF6C87B7E7DAFULL, 0x6045C6BDDA77A4D0ULL, 0x004066F541811E1EULL
    };
    T mprime = 1;

    std::mt19937_64 rng(20260826);
    int fails = 0, total = 0;
    for (int t = 0; t < 30000; t++) {
        T a[N], ref[N], got[N];
        for (unsigned j = 0; j < N; j++) a[j] = rng();
        a[N-1] %= (mod[N-1]+1);
        CIOS::mul(a, a, ref, mod, mprime);
        SQR::mul(a, got, mod, mprime);
        total++;
        bool ok = true;
        for (unsigned j = 0; j < N; j++) if (ref[j] != got[j]) ok = false;
        if (!ok) {
            fails++;
            if (fails <= 3) {
                printf("[FAIL] a: "); for (unsigned j=0;j<N;j++) printf("%016llX ", (unsigned long long)a[j]);
                printf("\n  ref: "); for (unsigned j=0;j<N;j++) printf("%016llX ", (unsigned long long)ref[j]);
                printf("\n  got: "); for (unsigned j=0;j<N;j++) printf("%016llX ", (unsigned long long)got[j]);
                printf("\n");
            }
        }
    }
    printf("%d / %d passed (%d failed)\n", total - fails, total, fails);
    return fails ? 1 : 0;
}
