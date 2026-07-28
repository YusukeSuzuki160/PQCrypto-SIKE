// verify_equiv.cpp
// 変換後(Barrett版) NTT が変換前(`%`版)と完全に同一出力かを検証する等価性テスト。
// 速くなっても結果が変わってはいけない。
#include <cstdint>
#include <cstdio>
#include <vector>
#include <random>
#include "ntt_ops_hls.hpp"

// ---------- 変換前(リファレンス)実装: ntt_hls_orig.cpp と同一 ----------
static int32_t ref_addmod(int32_t a, int32_t b, int32_t m) { int32_t r=a+b; if(r>=m) r-=m; return r; }
static int32_t ref_submod(int32_t a, int32_t b, int32_t m) { int32_t r=a-b; if(r<0) r+=m; return r; }
static int32_t ref_mulmod(int32_t a, int32_t b, int32_t m) {
    int64_t t = (int64_t)a * (int64_t)b;
    return (int32_t)(t % (int64_t)m);
}
static void ref_forward(int32_t *a, unsigned n, const int32_t *roots, int32_t mod) {
    for (unsigned len = 1; len < n; len <<= 1)
        for (unsigned i = 0; i < n; i += 2*len)
            for (unsigned j = 0; j < len; j++) {
                int32_t u = a[i+j];
                int32_t v = ref_mulmod(a[i+j+len], roots[j], mod);
                a[i+j]     = ref_addmod(u, v, mod);
                a[i+j+len] = ref_submod(u, v, mod);
            }
}

int main() {
    const int32_t mods[] = {998244353, 469762049, 754974721, 3329, 8380417, 2147483647};
    std::mt19937_64 rng(12345);
    int fail = 0;

    // 1) Barrett mulmod 単体の全数的検証
    for (int32_t m : mods) {
        ap_uint<64> mu = ntt::barrett_mu(m);
        for (int t = 0; t < 2000000; t++) {
            int32_t a = (int32_t)(rng() % (uint64_t)m);
            int32_t b = (int32_t)(rng() % (uint64_t)m);
            int32_t got = ntt::mulmod32(a, b, m, mu);
            int32_t exp = ref_mulmod(a, b, m);
            if (got != exp) {
                printf("MULMOD MISMATCH m=%d a=%d b=%d got=%d exp=%d\n", m, a, b, got, exp);
                if (++fail > 5) return 1;
            }
        }
    }
    printf("[OK] Barrett mulmod32 == reference (%lu cases/mod)\n", 2000000ul);

    // 2) フル NTT (n=256) 等価性
    const unsigned n = 256;
    for (int32_t m : mods) {
        if (m <= (int32_t)n) continue;       // 小さすぎる mod はスキップ
        if (m >= (1 << 30)) continue;        // 2m >= 2^31 は int32 add で溢れる（変換前後とも非対応）
        for (int trial = 0; trial < 200; trial++) {
            std::vector<int32_t> a(n), b(n), roots(n);
            for (unsigned i = 0; i < n; i++) {
                a[i] = (int32_t)(rng() % (uint64_t)m);
                roots[i] = (int32_t)(rng() % (uint64_t)m);
            }
            b = a;
            ref_forward(a.data(), n, roots.data(), m);
            ntt::NTTOps<8>::forward_ntt(b.data(), n, roots.data(), m);
            for (unsigned i = 0; i < n; i++) {
                if (a[i] != b[i]) {
                    printf("NTT MISMATCH m=%d trial=%d idx=%u ref=%d got=%d\n", m, trial, i, a[i], b[i]);
                    if (++fail > 5) return 1;
                }
            }
        }
    }
    printf("[OK] forward_ntt(Barrett) == forward_ntt(reference) for n=256\n");

    if (fail) { printf("FAILED: %d mismatches\n", fail); return 1; }
    printf("ALL EQUIVALENCE TESTS PASSED\n");
    return 0;
}
