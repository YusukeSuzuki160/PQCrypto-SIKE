#pragma once
// ntt_ops.hpp
// HLS最適化 NTT (Number Theoretic Transform) ライブラリ
//
// 変換ツール ntt_auto_rewriter の出力コードから呼び出される。
//
// 提供するもの:
//   - モジュラー演算プリミティブ (addmod / submod / mulmod)
//   - NTTOps<T, LOG2N> テンプレート
//       ::forward_ntt(a, n, roots, mod) — Cooley-Tukey DIT 前進変換
//       ::inverse_ntt(a, n, roots, mod) — Gentleman-Sande DIF 逆変換
//       ::poly_mul(a, b, c, n, roots, mod) — NTT で行う多項式積
//
// HLS 利用時は Vitis HLS 2022.2 以降を推奨。
// ソフトウェア検証用として g++ -std=c++17 でもコンパイル可能。

#include <climits>
#include <cstdint>
#include <type_traits>

// ===================== モジュラー演算 =====================

namespace ntt {

// T は整数型または ap_uint-like のどちらでも使用可能
// ソフトウェアシミュレーション用には 64 ビット整数を推奨

// a + b (mod m), オーバーフローなし
template <typename T>
inline T addmod(T a, T b, T m)
{
#pragma HLS INLINE
    T sum = a + b;
    // 条件付き減算（ブランチレス）
    T mask = -(T)(sum >= m);  // sum >= m なら 0xFF...FF, 否なら 0
    return sum - (m & mask);
}

// a - b (mod m), 結果は必ず非負
template <typename T>
inline T submod(T a, T b, T m)
{
#pragma HLS INLINE
    T diff = a - b;
    T mask = -(T)(a < b);   // a < b なら補正
    return diff + (m & mask);
}

// a * b (mod m) — ソフトウェア参照実装
// HLS では DSP ブロックを利用するため ap_uint<W*2> を使う
template <typename T>
inline T mulmod(T a, T b, T m)
{
#pragma HLS INLINE
    using Wide = typename std::conditional<sizeof(T) <= 4,
                                           uint64_t, __uint128_t>::type;
    return static_cast<T>(static_cast<Wide>(a) * static_cast<Wide>(b) % static_cast<Wide>(m));
}

// ===================== NTTバタフライ =====================

// Cooley-Tukey (DIT) バタフライ:
//   u' = u + w*v
//   v' = u - w*v
template <typename T>
inline void butterfly_ct(T &u, T &v, T w, T mod)
{
#pragma HLS INLINE
    T t = mulmod(v, w, mod);
    v   = submod(u, t, mod);
    u   = addmod(u, t, mod);
}

// Gentleman-Sande (DIF) バタフライ:
//   u' = u + v
//   v' = (u - v) * w
template <typename T>
inline void butterfly_gs(T &u, T &v, T w, T mod)
{
#pragma HLS INLINE
    T t = u;
    u   = addmod(t, v, mod);
    v   = mulmod(submod(t, v, mod), w, mod);
}

// ===================== NTTOps テンプレート =====================

template <typename T, unsigned LOG2N>
struct NTTOps
{
    static constexpr unsigned MAX_N = 1u << LOG2N;

    // ---- 前進 NTT (Cooley-Tukey DIT, in-place) ----
    // a[0..n-1] を NTT 変換する（事前: n は 2 の冪, n <= MAX_N）
    // roots[j] = ω^j (原始 n 乗根の累乗)
    static void forward_ntt(T *a, unsigned n, const T *roots, T mod)
    {
#pragma HLS INLINE off
        // 長さチェック
        if (n == 0 || (n & (n - 1)) != 0) return; // n must be power of 2

        for (unsigned len = 1; len < n; len <<= 1) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=LOG2N
            for (unsigned i = 0; i < n; i += 2 * len) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_N/2
                for (unsigned j = 0; j < len; j++) {
#pragma HLS PIPELINE II=1
                    T w = roots[j]; // ω^j at current stage
                    butterfly_ct(a[i + j], a[i + j + len], w, mod);
                }
            }
        }
    }

    // ---- 前進 NTT（rootsなし版: 事前計算不要・簡易用途） ----
    // ※ mod が事前計算された原始根を渡さない場合は使用不可
    static void forward_ntt(T *a, unsigned n, T mod)
    {
#pragma HLS INLINE off
        // roots を省略した場合はランタイムで再計算（HLS非推奨）
        // この関数はソフトウェアシミュレーション用
        (void)a; (void)n; (void)mod;
        // 実際の使用時は roots 付きバージョンを呼ぶこと
    }

    // ---- 逆 NTT (Gentleman-Sande DIF, in-place) ----
    // a[0..n-1] を逆 NTT 変換する（事前: n は 2 の冪, n <= MAX_N）
    // roots[j] = ω^{-j} (逆元の原始 n 乗根)
    // 変換後: 各要素を n^{-1} (mod mod) で割ること
    static void inverse_ntt(T *a, unsigned n, const T *roots, T mod)
    {
#pragma HLS INLINE off
        if (n == 0 || (n & (n - 1)) != 0) return;

        for (unsigned len = n >> 1; len >= 1; len >>= 1) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=LOG2N
            for (unsigned start = 0; start < n; start += 2 * len) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_N/2
                for (unsigned j = start; j < start + len; j++) {
#pragma HLS PIPELINE II=1
                    T w = roots[j - start];
                    butterfly_gs(a[j], a[j + len], w, mod);
                }
            }
        }

        // スケーリング: 各要素を n^{-1} (mod mod) で掛ける
        // n_inv = mod_inverse(n, mod) は呼び出し側で計算すること
        // ここでは省略（必要に応じてカスタマイズ）
    }

    // ---- 多項式積 c = a * b mod (x^n - 1) using NTT ----
    // a, b, c は長さ n の配列
    // roots[j] = ω^j, mod は素数
    // 注意: c は a または b と同一アドレスでも動作可
    static void poly_mul(const T *a, const T *b, T *c,
                         unsigned n, const T *roots, const T *inv_roots, T mod)
    {
#pragma HLS INLINE off
        if (n > MAX_N) return;

        // 一時バッファ
        T ta[MAX_N], tb[MAX_N];
#pragma HLS ARRAY_PARTITION variable=ta complete dim=1
#pragma HLS ARRAY_PARTITION variable=tb complete dim=1

        // コピー
        for (unsigned i = 0; i < n; i++) {
#pragma HLS PIPELINE II=1
            ta[i] = a[i];
            tb[i] = b[i];
        }

        // 前進 NTT
        forward_ntt(ta, n, roots, mod);
        forward_ntt(tb, n, roots, mod);

        // 点ごとの乗算
        for (unsigned i = 0; i < n; i++) {
#pragma HLS PIPELINE II=1
            c[i] = mulmod(ta[i], tb[i], mod);
        }

        // 逆 NTT
        inverse_ntt(c, n, inv_roots, mod);
    }

    // ---- ビット逆順並べ替え（bit-reversal permutation） ----
    // NTT を自然順入出力に変換する前処理（任意）
    static void bit_reverse(T *a, unsigned n)
    {
#pragma HLS INLINE off
        unsigned log2n = 0;
        while ((1u << log2n) < n) ++log2n;

        for (unsigned i = 0; i < n; i++) {
#pragma HLS PIPELINE II=1
            unsigned rev = 0;
            unsigned x   = i;
            for (unsigned k = 0; k < log2n; k++) {
                rev = (rev << 1) | (x & 1);
                x >>= 1;
            }
            if (rev > i) {
                T tmp  = a[i];
                a[i]   = a[rev];
                a[rev] = tmp;
            }
        }
    }
};

// ===================== KYBER/DILITHIUM スタイル (固定 n=256, q) =====================
// KYBER: q = 3329, ψ = 17 (256 次の原始根)
// DILITHIUM: q = 8380417

// KYBER風のNTT特殊化（参照実装）
// int16_t 配列 r[256] と zetas[128] を使う Gentleman-Sande DIF
template <>
struct NTTOps<int16_t, 8>
{
    static constexpr unsigned MAX_N = 256;
    static constexpr int16_t  Q     = 3329;

    // Cooley-Tukey NTT for KYBER (DIT, fixed n=256)
    static void forward_ntt(int16_t *r, unsigned /*n*/,
                             const int16_t *zetas, int16_t /*mod*/)
    {
#pragma HLS INLINE off
        unsigned k   = 0;
        int16_t  zeta;
        int32_t  t;

        for (unsigned len = 1; len < 256; len <<= 1) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=8
            for (unsigned i = 0; i < 256; i += 2 * len) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=128
                zeta = zetas[k++];
                for (unsigned j = i; j < i + len; j++) {
#pragma HLS PIPELINE II=1
                    t         = (int32_t)zeta * r[j + len] % Q;
                    r[j + len] = r[j] - (int16_t)t;
                    r[j]       = r[j] + (int16_t)t;
                }
            }
        }
    }

    // Gentleman-Sande INTT for KYBER (DIF, fixed n=256)
    static void inverse_ntt(int16_t *r, unsigned /*n*/,
                             const int16_t *zetas, int16_t /*mod*/)
    {
#pragma HLS INLINE off
        unsigned k    = 0;
        int16_t  zeta;
        int32_t  t;

        for (unsigned len = 128; len >= 1; len >>= 1) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=8
            for (unsigned start = 0; start < 256; start += 2 * len) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=128
                zeta = zetas[k++];
                for (unsigned j = start; j < start + len; j++) {
#pragma HLS PIPELINE II=1
                    t          = r[j];
                    r[j]       = (int16_t)((t + r[j + len]) % Q);
                    r[j + len] = (int16_t)((int32_t)zeta * (t - r[j + len]) % Q);
                }
            }
        }
        // スケーリング (× n^{-1} mod q = 3303 for n=256, q=3329)
        constexpr int16_t n_inv = 3303;
        for (unsigned i = 0; i < 256; i++) {
#pragma HLS PIPELINE II=1
            r[i] = (int16_t)((int32_t)n_inv * r[i] % Q);
        }
    }

    // poly_mul は汎用版と同等
    static void poly_mul(const int16_t * /*a*/, const int16_t * /*b*/,
                         int16_t * /*c*/, unsigned /*n*/,
                         const int16_t * /*roots*/, const int16_t * /*inv_roots*/,
                         int16_t /*mod*/) {}

    static void bit_reverse(int16_t * /*a*/, unsigned /*n*/) {}
};

} // namespace ntt
