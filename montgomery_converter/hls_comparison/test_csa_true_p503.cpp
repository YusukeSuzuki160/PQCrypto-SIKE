// test_csa_true_p503.cpp — 実際のSIKEp503定数(mod, mprime)を使い、
// MontOps_FIOS_CSA_True<uint64_t,8> が本物の fpmul_mont/rdc_mont と
// 一致することを検証する。
// g++ -std=c++17 -O0 -o test_csa_true_p503 test_csa_true_p503.cpp && ./test_csa_true_p503
#include <cstdio>
#include <cstdint>
#include <random>
#include "../include/mont_ops_fast.hpp"
#include "../include/mont_ops_fios_csa_true.hpp"

using T = uint64_t;
static constexpr unsigned N = 8;
using CIOS     = mont::MontOps_Fast<T, N>;
using CSA_TRUE = mont_fios_csa_true::MontOps_FIOS_CSA_True<T, N>;

int main() {
    // 実際の p503 (Optimized_Implementation/portable/SIKEp503/P503.c より)
    T mod[N] = {
        0xFFFFFFFFFFFFFFFFULL, 0xFFFFFFFFFFFFFFFFULL, 0xFFFFFFFFFFFFFFFFULL, 0xABFFFFFFFFFFFFFFULL,
        0x13085BDA2211E7A0ULL, 0x1B9BF6C87B7E7DAFULL, 0x6045C6BDDA77A4D0ULL, 0x004066F541811E1EULL
    };
    T mprime = 1;  // p503[0] = -1 mod 2^64 なので mprime = 1

    printf("mod[0]=0x%016llX mprime=0x%016llX\n",
           (unsigned long long)mod[0], (unsigned long long)mprime);
    uint64_t check = (uint64_t)mod[0] * mprime + 1;
    printf("check (mod[0]*mprime+1 mod 2^64, should be 0) = 0x%016llX\n\n",
           (unsigned long long)check);

    std::mt19937_64 rng(20260825);
    int fails = 0, total = 0;

    auto run_one = [&](T a[N], T b[N]) {
        T ref[N], got[N];
        CIOS::mul(a, b, ref, mod, mprime);
        CSA_TRUE::mul(a, b, got, mod, mprime);
        total++;
        bool ok = true;
        for (unsigned j = 0; j < N; j++) if (ref[j] != got[j]) ok = false;
        if (!ok) {
            fails++;
            printf("[FAIL]\n  ref: "); for (unsigned j=0;j<N;j++) printf("%016llX ", (unsigned long long)ref[j]);
            printf("\n  got: "); for (unsigned j=0;j<N;j++) printf("%016llX ", (unsigned long long)got[j]);
            printf("\n");
        }
    };

    // a=b=1 (簡単なケース)
    T a1[N] = {1,0,0,0,0,0,0,0}, b1[N] = {1,0,0,0,0,0,0,0};
    run_one(a1, b1);

    // ランダムケース (mod未満に制限、a[N-1]/b[N-1]の上位ビットをmodに収める)
    for (int t = 0; t < 50000; t++) {
        T a[N], b[N];
        for (unsigned j = 0; j < N; j++) { a[j] = rng(); b[j] = rng(); }
        // 上位語をmodの上位語未満に丸める(粗い制約だが十分にテストになる)
        a[N-1] %= (mod[N-1] + 1);
        b[N-1] %= (mod[N-1] + 1);
        run_one(a, b);
    }

    printf("\n%d / %d passed (%d failed)\n", total - fails, total, fails);
    return fails ? 1 : 0;
}
