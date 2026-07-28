// test_mont_cios.cpp
// CIOS モンゴメリ乗算の例題（変換前）
//
// montgomery_auto_rewriter での検出ポイント:
//   - 外ループ i（語数 nwords を走査）+ 内ループ j（部分積/還元走査）の二重ループ
//   - モンゴメリ定数 mprime による還元乗算  m = t[0] * mprime
//   - 法 mod[] の参照  m * mod[j]
//   - 末尾の定数時間 条件付き減算（mod を引く）
//
// 変換コマンド例:
//   $ montgomery_auto_rewriter --dry-run --trace \
//       test_mont_cios.cpp -- -std=c++17 -I../include
//   $ montgomery_auto_rewriter --max-nwords=8 \
//       --output=test_mont_cios_converted.cpp \
//       test_mont_cios.cpp -- -std=c++17 -I../include
//
// 検証コードは mont_ops.hpp の MontOps<>::mul と数値一致することを確認する。

#include <cstdint>
#include <cstdio>

typedef uint32_t digit_t;     // 32 ビット語
typedef uint64_t wide_t;      // 倍幅

#define NW 2                  // 語数（64 ビット法）

// ---- 検出対象: CIOS モンゴメリ乗算（手書き・ソフトウェア記述） ----
//   c = a * b * R^{-1} mod mod,  R = 2^(32*nwords)
//   mprime = -mod[0]^{-1} mod 2^32
void mont_mul(const digit_t *a, const digit_t *b, digit_t *c,
              const digit_t *mod, digit_t mprime, unsigned nwords)
{
    digit_t t[NW + 2];
    for (unsigned k = 0; k < nwords + 2; k++) t[k] = 0;

    for (unsigned i = 0; i < nwords; i++) {
        // (1) 部分積走査: t += a * b[i]
        wide_t C = 0;
        for (unsigned j = 0; j < nwords; j++) {
            wide_t p = (wide_t)t[j] + (wide_t)a[j] * b[i] + C;
            t[j] = (digit_t)p;
            C    = p >> 32;
        }
        wide_t s      = (wide_t)t[nwords] + C;
        t[nwords]     = (digit_t)s;
        t[nwords + 1] = (digit_t)(s >> 32);

        // (2) リダクション走査: m = t0 * n';  t = (t + m*N) / W
        digit_t m  = (digit_t)((wide_t)t[0] * mprime);
        wide_t  p0 = (wide_t)t[0] + (wide_t)m * mod[0];
        C = p0 >> 32;
        for (unsigned j = 1; j < nwords; j++) {
            wide_t p = (wide_t)t[j] + (wide_t)m * mod[j] + C;
            t[j - 1] = (digit_t)p;
            C        = p >> 32;
        }
        wide_t s2     = (wide_t)t[nwords] + C;
        t[nwords - 1] = (digit_t)s2;
        t[nwords]     = (digit_t)((wide_t)t[nwords + 1] + (s2 >> 32));
    }

    // (3) 定数時間 条件付き減算: t >= mod なら mod を引く
    digit_t u[NW];
    wide_t borrow = 0;
    for (unsigned j = 0; j < nwords; j++) {
        wide_t d = (wide_t)t[j] - mod[j] - borrow;
        u[j]     = (digit_t)d;
        borrow   = (d >> 32) & 1;
    }
    digit_t keep_t = (digit_t)0 - (digit_t)(t[nwords] < (digit_t)borrow);
    for (unsigned j = 0; j < nwords; j++)
        c[j] = (t[j] & keep_t) | (u[j] & ~keep_t);
}

// ---- 非検出対象: 法も逆元も使わない学校式乗算（SKIP されるべき） ----
void schoolbook_mul(const digit_t *a, const digit_t *b, digit_t *c, unsigned n)
{
    for (unsigned i = 0; i < 2 * n; i++) c[i] = 0;
    for (unsigned i = 0; i < n; i++) {
        wide_t carry = 0;
        for (unsigned j = 0; j < n; j++) {
            wide_t p = (wide_t)a[i] * b[j] + c[i + j] + carry;
            c[i + j] = (digit_t)p;
            carry    = p >> 32;
        }
        c[i + n] = (digit_t)carry;
    }
}

// ---- 非検出対象: 単一ループの加算（SKIP されるべき） ----
void mp_add(const digit_t *a, const digit_t *b, digit_t *c, unsigned n)
{
    wide_t carry = 0;
    for (unsigned i = 0; i < n; i++) {
        wide_t s = (wide_t)a[i] + b[i] + carry;
        c[i]     = (digit_t)s;
        carry    = s >> 32;
    }
}

// ======================= 検証用 main =======================
#include "mont_ops.hpp"

// N0^{-1} mod 2^32 を Newton 法で求め、mprime = -N0^{-1} mod 2^32 を返す
static digit_t mont_mprime(digit_t n0)
{
    digit_t inv = 1;
    for (int i = 0; i < 5; i++) inv *= (digit_t)2 - n0 * inv; // 2^32 で自動 wrap
    return (digit_t)0 - inv;
}

// 64 ビット値 <-> 2 語配列
static void to_words(uint64_t v, digit_t *w) { w[0] = (digit_t)v; w[1] = (digit_t)(v >> 32); }
static uint64_t from_words(const digit_t *w) { return (uint64_t)w[0] | ((uint64_t)w[1] << 32); }

// 拡張ユークリッドで R^{-1} mod N を求める（R = 2^64）
static uint64_t inv_mod(uint64_t a, uint64_t m)
{
    __int128 old_r = a % m, r = m;
    __int128 old_s = 1,     s = 0;
    while (r != 0) {
        __int128 q = old_r / r;
        __int128 tr = old_r - q * r; old_r = r; r = tr;
        __int128 ts = old_s - q * s; old_s = s; s = ts;
    }
    old_s %= (__int128)m;
    if (old_s < 0) old_s += m;
    return (uint64_t)old_s;
}

// 参照: ref = a * b * R^{-1} mod N
static uint64_t ref_montmul(uint64_t a, uint64_t b, uint64_t N)
{
    unsigned __int128 rinv = inv_mod((uint64_t)(((unsigned __int128)1 << 64) % N), N);
    unsigned __int128 ab   = ((unsigned __int128)a * b) % N;
    return (uint64_t)((ab * rinv) % N);
}

int main()
{
    // 64 ビットの奇数法（適当な合成数でも CIOS は成立する）
    const uint64_t N = 0xFFFFFFFEFFFFFC2FULL; // secp256k1 の下位語に由来する奇数
    digit_t mod[NW];   to_words(N, mod);
    digit_t mprime = mont_mprime(mod[0]);

    struct { uint64_t a, b; } cases[] = {
        {1, 1}, {2, 3}, {12345, 67890},
        {0x123456789ULL, 0xABCDEF01ULL},
        {N - 1, N - 1}, {N - 2, 7}, {0xDEADBEEFCAFEULL, 0x1234567890ABULL},
    };

    int fails = 0;
    for (auto &tc : cases) {
        uint64_t a = tc.a % N, b = tc.b % N;
        digit_t wa[NW], wb[NW], wc1[NW], wc2[NW];
        to_words(a, wa); to_words(b, wb);

        mont_mul(wa, wb, wc1, mod, mprime, NW);                       // 手書き
        mont::MontOps<digit_t, 8>::mul(wa, wb, wc2, mod, mprime, NW); // ライブラリ

        uint64_t got1 = from_words(wc1);
        uint64_t got2 = from_words(wc2);
        uint64_t exp  = ref_montmul(a, b, N);

        bool ok = (got1 == exp) && (got2 == exp);
        printf("a=%016llx b=%016llx  hand=%016llx lib=%016llx ref=%016llx  %s\n",
               (unsigned long long)a, (unsigned long long)b,
               (unsigned long long)got1, (unsigned long long)got2,
               (unsigned long long)exp, ok ? "OK" : "FAIL");
        if (!ok) ++fails;
    }

    // redc（モンゴメリ・リダクション）の検証: REDC(a*b) == MontMul(a,b)
    {
        uint64_t a = 0x123456789ULL % N, b = 0xABCDEF01ULL % N;
        digit_t prod[2 * NW];
        digit_t wa[NW], wb[NW];
        to_words(a, wa); to_words(b, wb);
        schoolbook_mul(wa, wb, prod, NW);          // 2n 語の積
        mont::MontOps<digit_t, 8>::redc(prod, mod, mprime, NW);
        uint64_t got = from_words(prod);
        uint64_t exp = ref_montmul(a, b, N);
        bool ok = (got == exp);
        printf("REDC(a*b)=%016llx ref=%016llx  %s\n",
               (unsigned long long)got, (unsigned long long)exp, ok ? "OK" : "FAIL");
        if (!ok) ++fails;
    }

    printf("\n%s (fails=%d)\n", fails == 0 ? "ALL PASS" : "SOME FAILED", fails);
    return fails == 0 ? 0 : 1;
}
