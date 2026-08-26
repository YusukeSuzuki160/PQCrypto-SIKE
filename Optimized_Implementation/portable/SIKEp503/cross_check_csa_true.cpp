// cross_check_csa_true.cpp — 実際の fpmul_mont() と MontOps_FIOS_CSA_True<uint64_t,8>
// を直接突き合わせる。libsike.a とリンクして実行する。
#include <cstdio>
#include <cstdint>
#include <random>
extern "C" {
#include "P503_internal.h"
extern const uint64_t p503[NWORDS_FIELD];
void fpmul503_mont(const felm_t ma, const felm_t mb, felm_t mc);
}
#include "../../../montgomery_converter/include/mont_ops_fios_csa_true.hpp"

using T = uint64_t;
using CSA_TRUE = mont_fios_csa_true::MontOps_FIOS_CSA_True<T, 8>;

int main() {
    T mod[8];
    for (int i = 0; i < 8; i++) mod[i] = ((const uint64_t*)p503)[i];
    T mprime = 1;

    std::mt19937_64 rng(42);
    int fails = 0, total = 0;
    for (int t = 0; t < 20000; t++) {
        T a[8], b[8];
        for (int j = 0; j < 8; j++) { a[j] = rng(); b[j] = rng(); }
        a[7] %= (mod[7] + 1);
        b[7] %= (mod[7] + 1);

        felm_t ref;
        fpmul503_mont((digit_t*)a, (digit_t*)b, ref);

        T got[8];
        CSA_TRUE::mul(a, b, got, mod, mprime);

        total++;
        bool ok = true;
        for (int j = 0; j < 8; j++) if (((digit_t*)ref)[j] != got[j]) ok = false;
        if (!ok) {
            fails++;
            if (fails <= 3) {
                printf("[FAIL] a="); for (int j=0;j<8;j++) printf("%016llX ", (unsigned long long)a[j]);
                printf("\n       b="); for (int j=0;j<8;j++) printf("%016llX ", (unsigned long long)b[j]);
                printf("\n  ref(fpmul_mont): "); for (int j=0;j<8;j++) printf("%016llX ", (unsigned long long)((digit_t*)ref)[j]);
                printf("\n  got(CSA_TRUE)  : "); for (int j=0;j<8;j++) printf("%016llX ", (unsigned long long)got[j]);
                printf("\n");
            }
        }
    }
    printf("%d / %d passed (%d failed)\n", total - fails, total, fails);
    return fails ? 1 : 0;
}
