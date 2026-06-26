// test_ntt_ct.cpp
// Cooley-Tukey DIT NTT の例題（変換前）
//
// ntt_auto_rewriter での検出ポイント:
//   - 外ループ: len <<= 1  → Cooley-Tukey NTT として検出
//   - 内ループ: a[i+j] と a[i+j+len] への書き込み（バタフライペア）
//   - add / sub / mulmod 呼び出し あり
//
// 変換コマンド例:
//   $ ntt_auto_rewriter --dry-run --trace \
//       test_ntt_ct.cpp -- -std=c++17
//   $ ntt_auto_rewriter --max-log2n=8 --output=test_ntt_ct_converted.cpp \
//       test_ntt_ct.cpp -- -std=c++17

#include <cstdint>

// ---- モジュラー演算ヘルパ（変換前コード内で使用） ----

static inline uint64_t addmod(uint64_t a, uint64_t b, uint64_t mod)
{
    return (a + b) % mod;
}

static inline uint64_t submod(uint64_t a, uint64_t b, uint64_t mod)
{
    return (a + mod - b) % mod;
}

static inline uint64_t mulmod(uint64_t a, uint64_t b, uint64_t mod)
{
    return (unsigned __int128)a * b % mod;
}

// ---- 検出対象: 標準的な Cooley-Tukey NTT ----
// シグネチャ: (T* a, unsigned n, uint64_t mod, const uint64_t* roots)
//   a     : 変換対象配列 (in-place)
//   n     : 配列長 (2 の冪)
//   mod   : 素数
//   roots : 回転子 roots[j] = omega^j
void ntt_forward(uint64_t *a, unsigned n, uint64_t mod, const uint64_t *roots)
{
    // len <<= 1 が Cooley-Tukey NTT の特徴
    for (unsigned len = 1; len < n; len <<= 1) {
        for (unsigned i = 0; i < n; i += 2 * len) {
            for (unsigned j = 0; j < len; j++) {
                uint64_t u = a[i + j];
                uint64_t v = mulmod(a[i + j + len], roots[j], mod);
                // バタフライ書き込み: a[k] と a[k+len] へ
                a[i + j]       = addmod(u, v, mod);
                a[i + j + len] = submod(u, v, mod);
            }
        }
    }
}

// ---- 検出対象: modキャスト有りのCT NTT ----
// (この関数も検出されることを確認するためのバリアント)
void ntt_forward_v2(int64_t *a, int n, int64_t q, const int64_t *w)
{
    for (int len = 1; len < n; len <<= 1) {
        for (int i = 0; i < n; i += 2 * len) {
            for (int j = 0; j < len; j++) {
                int64_t u = a[i + j];
                int64_t t = a[i + j + len] * w[j] % q;
                a[i + j]       = (u + t) % q;
                a[i + j + len] = (u - t + q) % q;
            }
        }
    }
}

// ---- 非検出対象: シフトループなし（誤検出回避のテスト） ----
// この関数はバタフライ構造を持たないため SKIP されるべき
void schoolbook_mul(const uint64_t *a, const uint64_t *b,
                    uint64_t *c, unsigned n, uint64_t mod)
{
    for (unsigned i = 0; i < n; i++) {
        for (unsigned j = 0; j < n; j++) {
            c[i + j] = addmod(c[i + j], mulmod(a[i], b[j], mod), mod);
        }
    }
}

// ---- 非検出対象: 加減算なし（誤検出回避のテスト） ----
// シフトループはあるが add/sub がない → SKIP されるべき
void shift_only(uint64_t *a, unsigned n, uint64_t mod)
{
    for (unsigned len = 1; len < n; len <<= 1) {
        for (unsigned i = 0; i < n; i += len) {
            a[i] = a[i] % mod;
        }
    }
}

// ---- 簡易テスト用 main ----
#include <cstdio>

// 簡単な素数 mod = 998244353 (2^23 * 119 + 1) での検証
static const uint64_t MOD   = 998244353ULL;
static const uint64_t G     = 3ULL;  // 原始根

// pow_mod(base, exp, mod)
static uint64_t pow_mod(uint64_t base, uint64_t exp, uint64_t mod)
{
    uint64_t result = 1;
    base %= mod;
    while (exp > 0) {
        if (exp & 1) result = (unsigned __int128)result * base % mod;
        base = (unsigned __int128)base * base % mod;
        exp >>= 1;
    }
    return result;
}

int main()
{
    const unsigned N = 8;
    uint64_t a[N]     = {1, 2, 3, 4, 5, 6, 7, 8};
    uint64_t roots[N];

    // 原始 N 乗根: omega = G^{(MOD-1)/N}
    uint64_t omega = pow_mod(G, (MOD - 1) / N, MOD);
    roots[0] = 1;
    for (unsigned i = 1; i < N; i++)
        roots[i] = (unsigned __int128)roots[i-1] * omega % MOD;

    printf("Before NTT: ");
    for (unsigned i = 0; i < N; i++) printf("%llu ", (unsigned long long)a[i]);
    printf("\n");

    ntt_forward(a, N, MOD, roots);

    printf("After NTT:  ");
    for (unsigned i = 0; i < N; i++) printf("%llu ", (unsigned long long)a[i]);
    printf("\n");

    return 0;
}
