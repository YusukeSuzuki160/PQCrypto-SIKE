// test_new_algos.cpp
// FIOS / SOS / Karatsuba / FIOS-Flat / FIOS-CSA-Flat / 新規変種 の正確性確認
// g++ -std=c++17 -O0 -o test_new_algos test_new_algos.cpp && ./test_new_algos
//
// 基準: mont_ops_fast.hpp の MontOps_Fast (既存 CIOS) の出力と一致するか確認。

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include "../include/mont_ops_fast.hpp"
#include "../include/mont_ops_fios.hpp"
#include "../include/mont_ops_fios_csa.hpp"
#include "../include/mont_ops_fios_flat.hpp"
#include "../include/mont_ops_fios_csa_flat.hpp"
#include "../include/mont_ops_fios_csa_flat_lat.hpp"
#include "../include/mont_ops_fios_csa_true.hpp"
#include "../include/mont_ops_fios_csa_flat_bindop.hpp"
#include "../include/mont_ops_sos.hpp"
#include "../include/mont_ops_karatsuba.hpp"
#include "../include/mont_ops_karatsuba_csa.hpp"
#include "../include/mont_ops_fios_csa_dataflow.hpp"

using T = uint32_t;
static constexpr unsigned N = 8;  // 256-bit with 32-bit words

using CIOS              = mont::MontOps_Fast<T, N>;
using FIOS              = mont_fios::MontOps_FIOS<T, N>;
using FIOS_CSA          = mont_fios_csa::MontOps_FIOS_CSA<T, N>;
using FIOS_FLAT         = mont_fios_flat::MontOps_FIOS_Flat<T, N>;
using FIOS_CSA_FLAT     = mont_fios_csa_flat::MontOps_FIOS_CSA_Flat<T, N>;
using FIOS_CSA_FLAT_LAT = mont_fios_csa_flat_lat::MontOps_FIOS_CSA_Flat_Lat<T, N>;
using FIOS_CSA_TRUE     = mont_fios_csa_true::MontOps_FIOS_CSA_True<T, N>;
using FIOS_CSA_FLAT_BOP = mont_fios_csa_flat_bindop::MontOps_FIOS_CSA_Flat_BindOp<T, N>;
using SOS               = mont_sos::MontOps_SOS<T, N>;
using KARA              = mont_karatsuba::MontOps_Karatsuba<T, N>;
using KARA_CSA          = mont_karatsuba_csa::MontOps_Karatsuba_CSA<T, N>;

// p-434 from SIDH (256-bit の代わりに 32-bit 語 8 語で近似)
// 実際には 256-bit の奇数 mod を使う
static const T MOD[N] = {
    0xFFFFFFABu, 0xFFFFFFFFu, 0xFFFFFFFFu, 0xFFFFFFFFu,
    0xFFFFFFFFu, 0xFFFFFFFFu, 0xFFFFFFFFu, 0x3FFFFFFFu
};
// mprime = -MOD[0]^{-1} mod 2^32
// MOD[0] = 0xFFFFFFAB, mprime = modular inverse computation
// For simplicity, use known values or compute
// mprime * MOD[0] ≡ -1 (mod 2^32)
// 0xFFFFFFAB * mprime ≡ -1 (mod 2^32)
// Approximate: mprime = 0x15555555 works for testing if we use a simpler mod
// Let's use a simple test mod

// Simpler test: use mod = 2^256 - 189 (all-F...FAB)
// mprime: solve 0xFFFFFFAB * x ≡ -1 (mod 2^32)
// x = (2^32 - 1) / 0xFFFFFFAB  ← not exact
// Let's compute properly:
// 0xFFFFFFAB * mprime ≡ 0xFFFFFFFF (mod 2^32)   (i.e., -1)
// mprime * 0xFFFFFFAB = 2^32 k - 1
// Use extended Euclidean or just note:
// 0xFFFFFFAB = 2^32 - 85, so mprime = (85^{-1}) mod 2^32
// 85 * 3 = 255, 85 * x ≡ 1 mod 256: x = 3 (since 85*3=255≡-1, so 85*(-3)≡1)
// More carefully: need 85 * x ≡ 1 mod 2^32
// 85 is odd, use: 85 * x ≡ 1 mod 2 → x odd
// 85 ≡ 1 mod 4 → x ≡ 1 mod 4 etc. (Hensel lifting)
// Faster: just pick a test with known mprime

// Use a simple prime for testing: mod = 7 (but multi-word)
// mod = {7, 0, 0, 0, 0, 0, 0, 0}  ← not good for Montgomery (needs mod[0] odd, ok)
// mprime = -7^{-1} mod 2^32 = -(-7) ...
// 7 * x ≡ -1 mod 2^32: 7 * 0x6DB6DB6D = 0xFFFFFFFF ... ?
// 7 * 0x24924925 = 0x100000007 → mod 2^32 = 7 → need -1
// 7 * mprime ≡ -1 mod 2^32: mprime = (2^32 - 1)/7 = 0x24924924... let me check
// 7 * 0x24924925 = 7 * 613566757 = 4294967299 = 2^32 + 3 → not right
// Use a known test vector instead

// Let's use: test with a=1, b=1, expect c = R^{-1} mod N (Montgomery product of 1*1)
// Easier: use a = R mod N, b = R mod N, expect c = R mod N (since R*R*R^{-1} = R)

// For the test, let's use simple values and compare CIOS vs new algorithms
static T MPRIME_SIMPLE;  // computed below

void compute_mprime(const T mod0, T& mprime) {
    // Solve: mod0 * mprime ≡ -1 (mod 2^WBITS)
    // Use iterative method: mprime = 1
    // mod0 * mprime = 1 + k * 2^WBITS → flip sign
    uint64_t m = mod0;
    uint64_t inv = 1;
    for (int i = 0; i < 31; i++) {
        inv = inv * (2 - m * inv);
    }
    mprime = static_cast<T>(-inv);  // mprime = -mod0^{-1}
}

bool arrays_equal(const T* a, const T* b, unsigned n) {
    for (unsigned i = 0; i < n; i++)
        if (a[i] != b[i]) return false;
    return true;
}

void print_array(const char* name, const T* a, unsigned n) {
    printf("%s: [", name);
    for (unsigned i = 0; i < n; i++)
        printf("%08X%s", a[i], i+1<n?", ":"");
    printf("]\n");
}

void run_test(const char* label, const T* a, const T* b,
              const T* ref, const T* mod, T mprime,
              void (*fn)(const T*, const T*, T*, const T*, T))
{
    T c[N] = {};
    fn(a, b, c, mod, mprime);
    bool ok = arrays_equal(c, ref, N);
    printf("  %-12s: %s", label, ok ? "PASS" : "FAIL");
    if (!ok) {
        printf("\n    expected: "); print_array("", ref, N);
        printf("    got:      "); print_array("", c, N);
    }
    printf("\n");
}

int main() {
    // Simple test mod: first prime > 2^31 fitting in 32 bits
    // Use mod = 0xFFFFFFC5 (a prime) with N=8 words = 256-bit mod
    // But let's keep it simple: use N=8 words all zero except word 0 = some prime
    // That's NOT a proper multi-word mod. Use actual 256-bit prime.

    // Use P = 2^255 - 19 (Curve25519 prime) as our test mod
    // In 32-bit words (little-endian):
    // 2^255 - 19 = 0x7FFFFFFF FFFFFFFF FFFFFFFF FFFFFFFF
    //               FFFFFFFF FFFFFFFF FFFFFFFF FFFFFFED
    // Wait that's 8 × 32-bit = 256-bit
    T mod[N] = {
        0xFFFFFFEDu,  // word 0 (LSW)
        0xFFFFFFFFu,
        0xFFFFFFFFu,
        0xFFFFFFFFu,
        0xFFFFFFFFu,
        0xFFFFFFFFu,
        0xFFFFFFFFu,
        0x7FFFFFFFu   // word 7 (MSW): 2^255 - 19
    };

    T mprime;
    compute_mprime(mod[0], mprime);
    printf("mod[0]   = %08X\n", mod[0]);
    printf("mprime   = %08X\n", mprime);
    // Verify: (mod[0] * mprime + 1) should be 0 mod 2^32
    uint64_t check = (uint64_t)mod[0] * mprime + 1;
    printf("mod[0]*mprime+1 mod 2^32 = %08X (should be 0)\n\n",
           (unsigned)(check & 0xFFFFFFFFu));

    // R = 2^{N*WBITS} = 2^256
    // R mod p: since p < 2^255 < 2^256 = R, R mod p = R - p = 2^256 - p
    // R - p in 256-bit: subtract mod from 2^256
    // 2^256 = {0,0,0,0,0,0,0,0} with carry = 1
    // R mod p = 2^256 - p = complement of p + 1
    T R_mod_p[N];
    {
        uint64_t borrow = 0;
        // compute 0 - p (two's complement for 256-bit)
        for (unsigned j = 0; j < N; j++) {
            uint64_t d = (uint64_t)0 - (uint64_t)mod[j] - borrow;
            R_mod_p[j] = (T)(d & 0xFFFFFFFF);
            borrow = (d >> 32) & 1;
        }
        // Add 1 for 2's complement
        uint64_t carry = 1;
        for (unsigned j = 0; j < N; j++) {
            uint64_t s = (uint64_t)R_mod_p[j] + carry;
            R_mod_p[j] = (T)(s & 0xFFFFFFFF);
            carry = s >> 32;
        }
    }
    printf("R mod p = ");
    print_array("", R_mod_p, N);

    // Test 1: compute R_mod_p * R_mod_p (in Montgomery domain: should give R^2 * R^{-1} = R)
    // i.e., MontMul(R, R) = R^2 / R = R mod p
    printf("\nTest 1: MontMul(R, R) should = R mod p\n");
    T ref1[N];
    CIOS::mul(R_mod_p, R_mod_p, ref1, mod, mprime);
    printf("  CIOS (ref): "); print_array("", ref1, N);

    run_test("FIOS", R_mod_p, R_mod_p, ref1, mod, mprime,
             [](const T* a, const T* b, T* c, const T* m, T mp){
                 FIOS::mul(a, b, c, m, mp); });
    run_test("FIOS_CSA", R_mod_p, R_mod_p, ref1, mod, mprime,
             [](const T* a, const T* b, T* c, const T* m, T mp){
                 FIOS_CSA::mul(a, b, c, m, mp); });
    run_test("FIOS_FLAT", R_mod_p, R_mod_p, ref1, mod, mprime,
             [](const T* a, const T* b, T* c, const T* m, T mp){
                 FIOS_FLAT::mul(a, b, c, m, mp); });
    run_test("FIOS_CSA_FL", R_mod_p, R_mod_p, ref1, mod, mprime,
             [](const T* a, const T* b, T* c, const T* m, T mp){
                 FIOS_CSA_FLAT::mul(a, b, c, m, mp); });
    run_test("CSA_FL_LAT", R_mod_p, R_mod_p, ref1, mod, mprime,
             [](const T* a, const T* b, T* c, const T* m, T mp){
                 FIOS_CSA_FLAT_LAT::mul(a, b, c, m, mp); });
    run_test("CSA_TRUE", R_mod_p, R_mod_p, ref1, mod, mprime,
             [](const T* a, const T* b, T* c, const T* m, T mp){
                 FIOS_CSA_TRUE::mul(a, b, c, m, mp); });
    run_test("CSA_FL_BOP", R_mod_p, R_mod_p, ref1, mod, mprime,
             [](const T* a, const T* b, T* c, const T* m, T mp){
                 FIOS_CSA_FLAT_BOP::mul(a, b, c, m, mp); });
    run_test("SOS",  R_mod_p, R_mod_p, ref1, mod, mprime,
             [](const T* a, const T* b, T* c, const T* m, T mp){
                 SOS::mul(a, b, c, m, mp); });
    run_test("KARA", R_mod_p, R_mod_p, ref1, mod, mprime,
             [](const T* a, const T* b, T* c, const T* m, T mp){
                 KARA::mul(a, b, c, m, mp); });
    run_test("KARA_CSA", R_mod_p, R_mod_p, ref1, mod, mprime,
             [](const T* a, const T* b, T* c, const T* m, T mp){
                 KARA_CSA::mul(a, b, c, m, mp); });

    // Test 2: a*b for random-ish values
    T a[N] = {0x12345678u, 0xABCDEF01u, 0x55AA55AAu, 0x0F0F0F0Fu,
              0xDEADBEEFu, 0xCAFEBABEu, 0x01234567u, 0x0FFFFFFFu};
    T b[N] = {0x89ABCDEF, 0xFEDCBA98u, 0xAA55AA55u, 0xF0F0F0F0u,
              0x01234567u, 0x89ABCDEFu, 0xFEDCBA98u, 0x3FFFFFFFu};
    // Ensure a, b < mod (check MSW)
    a[N-1] &= 0x3FFFFFFFu;
    b[N-1] &= 0x3FFFFFFFu;

    printf("\nTest 2: random a*b\n");
    T ref2[N];
    CIOS::mul(a, b, ref2, mod, mprime);
    printf("  CIOS (ref): "); print_array("", ref2, N);

    run_test("FIOS", a, b, ref2, mod, mprime,
             [](const T* a, const T* b, T* c, const T* m, T mp){
                 FIOS::mul(a, b, c, m, mp); });
    run_test("FIOS_CSA", a, b, ref2, mod, mprime,
             [](const T* a, const T* b, T* c, const T* m, T mp){
                 FIOS_CSA::mul(a, b, c, m, mp); });
    run_test("FIOS_FLAT", a, b, ref2, mod, mprime,
             [](const T* a, const T* b, T* c, const T* m, T mp){
                 FIOS_FLAT::mul(a, b, c, m, mp); });
    run_test("FIOS_CSA_FL", a, b, ref2, mod, mprime,
             [](const T* a, const T* b, T* c, const T* m, T mp){
                 FIOS_CSA_FLAT::mul(a, b, c, m, mp); });
    run_test("CSA_FL_LAT", a, b, ref2, mod, mprime,
             [](const T* a, const T* b, T* c, const T* m, T mp){
                 FIOS_CSA_FLAT_LAT::mul(a, b, c, m, mp); });
    run_test("CSA_TRUE", a, b, ref2, mod, mprime,
             [](const T* a, const T* b, T* c, const T* m, T mp){
                 FIOS_CSA_TRUE::mul(a, b, c, m, mp); });
    run_test("CSA_FL_BOP", a, b, ref2, mod, mprime,
             [](const T* a, const T* b, T* c, const T* m, T mp){
                 FIOS_CSA_FLAT_BOP::mul(a, b, c, m, mp); });
    run_test("SOS",  a, b, ref2, mod, mprime,
             [](const T* a, const T* b, T* c, const T* m, T mp){
                 SOS::mul(a, b, c, m, mp); });
    run_test("KARA", a, b, ref2, mod, mprime,
             [](const T* a, const T* b, T* c, const T* m, T mp){
                 KARA::mul(a, b, c, m, mp); });
    run_test("KARA_CSA", a, b, ref2, mod, mprime,
             [](const T* a, const T* b, T* c, const T* m, T mp){
                 KARA_CSA::mul(a, b, c, m, mp); });

    // Test 3: a = b (squaring)
    printf("\nTest 3: a*a (squaring)\n");
    T ref3[N];
    CIOS::mul(a, a, ref3, mod, mprime);
    printf("  CIOS (ref): "); print_array("", ref3, N);

    run_test("FIOS", a, a, ref3, mod, mprime,
             [](const T* a, const T* b, T* c, const T* m, T mp){
                 FIOS::mul(a, b, c, m, mp); });
    run_test("FIOS_CSA", a, a, ref3, mod, mprime,
             [](const T* a, const T* b, T* c, const T* m, T mp){
                 FIOS_CSA::mul(a, b, c, m, mp); });
    run_test("FIOS_FLAT", a, a, ref3, mod, mprime,
             [](const T* a, const T* b, T* c, const T* m, T mp){
                 FIOS_FLAT::mul(a, b, c, m, mp); });
    run_test("FIOS_CSA_FL", a, a, ref3, mod, mprime,
             [](const T* a, const T* b, T* c, const T* m, T mp){
                 FIOS_CSA_FLAT::mul(a, b, c, m, mp); });
    run_test("CSA_FL_LAT", a, a, ref3, mod, mprime,
             [](const T* a, const T* b, T* c, const T* m, T mp){
                 FIOS_CSA_FLAT_LAT::mul(a, b, c, m, mp); });
    run_test("CSA_TRUE", a, a, ref3, mod, mprime,
             [](const T* a, const T* b, T* c, const T* m, T mp){
                 FIOS_CSA_TRUE::mul(a, b, c, m, mp); });
    run_test("CSA_FL_BOP", a, a, ref3, mod, mprime,
             [](const T* a, const T* b, T* c, const T* m, T mp){
                 FIOS_CSA_FLAT_BOP::mul(a, b, c, m, mp); });
    run_test("SOS",  a, a, ref3, mod, mprime,
             [](const T* a, const T* b, T* c, const T* m, T mp){
                 SOS::mul(a, b, c, m, mp); });
    run_test("KARA", a, a, ref3, mod, mprime,
             [](const T* a, const T* b, T* c, const T* m, T mp){
                 KARA::mul(a, b, c, m, mp); });
    run_test("KARA_CSA", a, a, ref3, mod, mprime,
             [](const T* a, const T* b, T* c, const T* m, T mp){
                 KARA_CSA::mul(a, b, c, m, mp); });

    // Test 4: DATAFLOW 版 (N=4, T=uint64_t 特化テスト)
    printf("\nTest 4: DATAFLOW variant (N=4, T=uint64_t)\n");
    {
        using T4 = uint64_t;
        static constexpr unsigned N4 = 4;
        using CIOS4 = mont::MontOps_Fast<T4, N4>;
        using DF4   = mont_fios_csa_dataflow::MontOps_FIOS_CSA_Dataflow<T4, N4>;

        // 64-bit word 版 mod: 2^255-19 の下位 4 語 × 64bit
        T4 mod4[N4] = {
            0xFFFFFFFFFFFFFFEDULL,
            0xFFFFFFFFFFFFFFFFULL,
            0xFFFFFFFFFFFFFFFFULL,
            0x7FFFFFFFFFFFFFFFULL
        };
        T4 mprime4;
        uint64_t m = mod4[0], inv = 1;
        for (int i = 0; i < 63; i++) inv = inv * (2 - m * inv);
        mprime4 = static_cast<T4>(-inv);
        printf("  mod4[0]=0x%016llX, mprime4=0x%016llX\n",
               (unsigned long long)mod4[0], (unsigned long long)mprime4);

        T4 a4[N4] = {0x1234567890ABCDEFULL, 0xFEDCBA9876543210ULL,
                     0xDEADBEEFCAFEBABEULL, 0x0FFFFFFFFFFFFFFFULL};
        T4 b4[N4] = {0x89ABCDEF01234567ULL, 0x0123456789ABCDEFULL,
                     0xCAFEBABEDEADBEEFULL, 0x0FFFFFFFFFFFFFFFULL};
        a4[N4-1] &= 0x7FFFFFFFFFFFFFFFULL;
        b4[N4-1] &= 0x7FFFFFFFFFFFFFFFULL;

        T4 ref4[N4] = {}, out4[N4] = {};
        CIOS4::mul(a4, b4, ref4, mod4, mprime4);
        DF4::mul(a4, b4, out4, mod4, mprime4);
        bool ok4 = true;
        for (unsigned j = 0; j < N4; j++) if (ref4[j] != out4[j]) { ok4 = false; break; }
        printf("  FIOS_CSA_DF  : %s\n", ok4 ? "PASS" : "FAIL");
        if (!ok4) {
            printf("  ref: "); for (unsigned j=0;j<N4;j++) printf("%016llX ", (unsigned long long)ref4[j]); printf("\n");
            printf("  got: "); for (unsigned j=0;j<N4;j++) printf("%016llX ", (unsigned long long)out4[j]); printf("\n");
        }
    }

    printf("\nDone.\n");
    return 0;
}
