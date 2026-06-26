// test_ntt_gs.cpp
// Gentleman-Sande DIF NTT / INTT の例題（変換前）
//
// ntt_auto_rewriter での検出ポイント:
//   - 外ループ: len >>= 1  → Gentleman-Sande NTT として検出
//   - 内ループ: a[j] と a[j+len] への書き込み（バタフライペア）
//   - add / sub / mul (twiddle) / mod あり
//
// KYBER / DILITHIUM スタイルの NTT コードも含む
//
// 変換コマンド例:
//   $ ntt_auto_rewriter --dry-run --trace \
//       test_ntt_gs.cpp -- -std=c++17
//   $ ntt_auto_rewriter --ntt-type=inverse --max-log2n=8 \
//       --output=test_ntt_gs_converted.cpp \
//       test_ntt_gs.cpp -- -std=c++17

#include <cstdint>

// ---- 検出対象: Gentleman-Sande DIF NTT (汎用) ----
// 外ループが len >>= 1 なので GS として検出される
void ntt_inverse_gs(uint64_t *a, unsigned n, uint64_t mod, const uint64_t *roots)
{
    // len >>= 1 が Gentleman-Sande NTT の特徴
    for (unsigned len = n >> 1; len >= 1; len >>= 1) {
        for (unsigned start = 0; start < n; start += 2 * len) {
            for (unsigned j = start; j < start + len; j++) {
                uint64_t u = a[j];
                uint64_t v = a[j + len];
                // GS バタフライ: a[j] = u+v, a[j+len] = (u-v)*w
                a[j]       = (u + v) % mod;
                uint64_t diff = (u + mod - v) % mod;
                a[j + len] = (unsigned __int128)diff * roots[j - start] % mod;
            }
        }
    }
    // 呼び出し側で各要素に n^{-1} mod を掛けること
}

// ---- 検出対象: KYBER スタイルの NTT (int16_t, 固定 n=256) ----
// CRYSTALS-KYBER の参照実装に近いパターン
static const int16_t KYBER_Q = 3329;

// fqmul: a*b mod KYBER_Q（KYBER参照実装のヘルパ）
static int16_t fqmul(int16_t a, int16_t b)
{
    return (int32_t)a * b % KYBER_Q;
}

// 検出対象: KYBER NTT (Gentleman-Sande, len >>= 1)
void ntt_kyber(int16_t r[], const int16_t zetas[])
{
    int k = 0;
    int16_t zeta;
    int32_t t;

    for (unsigned len = 128; len >= 1; len >>= 1) {
        for (unsigned start = 0; start < 256; start += 2 * len) {
            zeta = zetas[k++];
            for (unsigned j = start; j < start + len; j++) {
                t          = fqmul(zeta, r[j + len]);
                r[j + len] = r[j] - (int16_t)t;
                r[j]       = r[j] + (int16_t)t;
            }
        }
    }
}

// 検出対象: KYBER INTT (GS DIF, len <<= 1 で逆順)
void intt_kyber(int16_t r[], const int16_t zetas_inv[])
{
    unsigned k    = 0;
    int16_t  zeta;
    int32_t  t;

    for (unsigned len = 1; len < 256; len <<= 1) {
        for (unsigned start = 0; start < 256; start += 2 * len) {
            zeta = zetas_inv[k++];
            for (unsigned j = start; j < start + len; j++) {
                t          = r[j];
                r[j]       = (int16_t)((t + r[j + len]) % KYBER_Q);
                r[j + len] = (int16_t)(fqmul(zeta, t - r[j + len]));
            }
        }
    }
    // スケーリング (n^{-1} mod q = 3303)
    const int16_t n_inv = 3303;
    for (int i = 0; i < 256; i++)
        r[i] = fqmul(n_inv, r[i]);
}

// ---- 検出対象: DILITHIUM スタイルの NTT ----
// q = 8380417
static const int32_t DILITHIUM_Q = 8380417;

static int32_t montgomery_reduce(int64_t a)
{
    // Montgomery reduction (簡略実装)
    int32_t t = (int32_t)((int32_t)a * (int32_t)(-8265825) % (1LL << 32));
    t = (int32_t)((a - (int64_t)t * DILITHIUM_Q) >> 32);
    return t;
}

// 検出対象: DILITHIUM NTT (Cooley-Tukey 変形)
void ntt_dilithium(int32_t a[], const int32_t zetas[])
{
    unsigned len, start, j, k = 0;
    int32_t zeta, t;

    for (len = 128; len >= 1; len >>= 1) {  // GS DIF
        for (start = 0; start < 256; start = j + len) {
            zeta = zetas[k++];
            for (j = start; j < start + len; j++) {
                t         = montgomery_reduce((int64_t)zeta * a[j + len]);
                a[j + len] = a[j] - t;
                a[j]       = a[j] + t;
            }
        }
    }
}

// ---- 非検出対象: 加算のみ（誤検出なしの確認） ----
void only_add(int64_t *a, int n, int64_t mod)
{
    for (int len = n >> 1; len >= 1; len >>= 1) {
        for (int j = 0; j < len; j++) {
            a[j] = (a[j] + a[j + len]) % mod;
        }
    }
}

// ---- 簡易テスト用 main ----
#include <cstdio>
#include <cstring>

static const uint64_t MOD_998 = 998244353ULL;
static const uint64_t G_998   = 3ULL;

static uint64_t pow_mod_u64(uint64_t base, uint64_t exp, uint64_t mod)
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

// CT NTT (from test_ntt_ct style) — 検証用
static void ntt_ct_ref(uint64_t *a, unsigned n, uint64_t mod, const uint64_t *roots)
{
    for (unsigned len = 1; len < n; len <<= 1) {
        for (unsigned i = 0; i < n; i += 2 * len) {
            for (unsigned j = 0; j < len; j++) {
                uint64_t u = a[i + j];
                uint64_t v = (unsigned __int128)a[i + j + len] * roots[j] % mod;
                a[i + j]       = (u + v) % mod;
                a[i + j + len] = (u + mod - v) % mod;
            }
        }
    }
}

int main()
{
    const unsigned N = 8;
    uint64_t orig[N] = {1, 2, 3, 4, 5, 6, 7, 8};
    uint64_t a[N];
    uint64_t roots[N], inv_roots[N];

    uint64_t omega     = pow_mod_u64(G_998, (MOD_998 - 1) / N, MOD_998);
    uint64_t inv_omega = pow_mod_u64(omega, MOD_998 - 2, MOD_998);

    roots[0]     = inv_roots[0] = 1;
    for (unsigned i = 1; i < N; i++) {
        roots[i]     = (unsigned __int128)roots[i-1]     * omega     % MOD_998;
        inv_roots[i] = (unsigned __int128)inv_roots[i-1] * inv_omega % MOD_998;
    }

    // CT NTT → GS INTT のラウンドトリップ検証
    memcpy(a, orig, sizeof(orig));
    ntt_ct_ref(a, N, MOD_998, roots);

    printf("After CT NTT: ");
    for (unsigned i = 0; i < N; i++) printf("%llu ", (unsigned long long)a[i]);
    printf("\n");

    ntt_inverse_gs(a, N, MOD_998, inv_roots);

    // スケーリング n^{-1} mod q
    uint64_t n_inv = pow_mod_u64(N, MOD_998 - 2, MOD_998);
    printf("After GS INTT (before scale): ");
    for (unsigned i = 0; i < N; i++) printf("%llu ", (unsigned long long)a[i]);
    printf("\n");

    printf("After GS INTT (after  scale): ");
    for (unsigned i = 0; i < N; i++)
        printf("%llu ", (unsigned long long)((unsigned __int128)a[i] * n_inv % MOD_998));
    printf("\n");

    printf("Original:                     ");
    for (unsigned i = 0; i < N; i++) printf("%llu ", (unsigned long long)orig[i]);
    printf("\n");

    return 0;
}
