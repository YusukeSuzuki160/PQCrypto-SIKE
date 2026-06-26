#pragma once
// ntt_ops_hls.hpp
// Vitis HLS 向け NTT ライブラリ
//  - __uint128_t を使わず ap_int<64> を使用
//  - 条件分岐をシンプルに保ち HLS のスケジューリングを助ける
//  - #pragma HLS PIPELINE / LOOP_TRIPCOUNT を適切に配置

#include <ap_int.h>
#include <climits>
#include <cstdint>
#include <type_traits>

namespace ntt {

// ===================== モジュラー演算プリミティブ =====================

// 32ビット整数向け符号付きモジュラー加算
static inline int32_t addmod32(int32_t a, int32_t b, int32_t m)
{
#pragma HLS INLINE
    int32_t r = a + b;
    if (r >= m) r -= m;
    return r;
}

// 32ビット整数向け符号付きモジュラー減算
static inline int32_t submod32(int32_t a, int32_t b, int32_t m)
{
#pragma HLS INLINE
    int32_t r = a - b;
    if (r < 0) r += m;
    return r;
}

// 32ビット整数向けモジュラー乗算（ap_int<64> を使用）
static inline int32_t mulmod32(int32_t a, int32_t b, int32_t m)
{
#pragma HLS INLINE
    ap_int<64> tmp = (ap_int<64>)a * (ap_int<64>)b;
    return (int32_t)(tmp % (ap_int<64>)m);
}

// ===================== Cooley-Tukey DIT バタフライ =====================
static inline void butterfly_ct_hls(int32_t &u, int32_t &v, int32_t w, int32_t mod)
{
#pragma HLS INLINE
    int32_t t = mulmod32(v, w, mod);
    v = submod32(u, t, mod);
    u = addmod32(u, t, mod);
}

// ===================== Gentleman-Sande DIF バタフライ =====================
static inline void butterfly_gs_hls(int32_t &u, int32_t &v, int32_t w, int32_t mod)
{
#pragma HLS INLINE
    int32_t t = u;
    u = addmod32(t, v, mod);
    v = mulmod32(submod32(t, v, mod), w, mod);
}

// ===================== NTTOps テンプレート（HLS版） =====================

template <unsigned LOG2N>
struct NTTOps
{
    static constexpr unsigned MAX_N = 1u << LOG2N;

    // ---- 前進 NTT (Cooley-Tukey DIT, in-place) ----
    static void forward_ntt(int32_t *a, unsigned n,
                             const int32_t *roots, int32_t mod)
    {
#pragma HLS INLINE off
        for (unsigned len = 1; len < n; len <<= 1) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=LOG2N
            for (unsigned i = 0; i < n; i += 2 * len) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_N/2
                for (unsigned j = 0; j < len; j++) {
#pragma HLS PIPELINE II=1
                    butterfly_ct_hls(a[i + j], a[i + j + len], roots[j], mod);
                }
            }
        }
    }

    // ---- 逆 NTT (Gentleman-Sande DIF, in-place) ----
    static void inverse_ntt(int32_t *a, unsigned n,
                             const int32_t *roots, int32_t mod)
    {
#pragma HLS INLINE off
        for (unsigned len = n >> 1; len >= 1; len >>= 1) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=LOG2N
            for (unsigned start = 0; start < n; start += 2 * len) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_N/2
                for (unsigned j = start; j < start + len; j++) {
#pragma HLS PIPELINE II=1
                    butterfly_gs_hls(a[j], a[j + len], roots[j - start], mod);
                }
            }
        }
    }
};

} // namespace ntt
