// ntt_hls_orig.cpp
// HLS合成用: 変換前の Cooley-Tukey NTT 参照実装
//
// トップ関数: ntt_forward_orig
//   a[256]     : 変換対象 (in-place)
//   roots[256] : 回転子
//   mod        : 素数（例: 998244353）

#include <ap_int.h>
#include <cstdint>

// ===================== モジュラー演算（変換前コード） =====================

static int32_t addmod_orig(int32_t a, int32_t b, int32_t m)
{
#pragma HLS INLINE
    int32_t r = a + b;
    if (r >= m) r -= m;
    return r;
}

static int32_t submod_orig(int32_t a, int32_t b, int32_t m)
{
#pragma HLS INLINE
    int32_t r = a - b;
    if (r < 0) r += m;
    return r;
}

static int32_t mulmod_orig(int32_t a, int32_t b, int32_t m)
{
#pragma HLS INLINE
    ap_int<64> tmp = (ap_int<64>)a * (ap_int<64>)b;
    return (int32_t)(tmp % (ap_int<64>)m);
}

// ===================== 変換前の NTT（HLS プラグマなし） =====================
// ループが展開・パイプライン化されないため遅い

static void ntt_forward_impl(int32_t *a, unsigned n,
                              const int32_t *roots, int32_t mod)
{
    // len <<= 1 Cooley-Tukey DIT
    for (unsigned len = 1; len < n; len <<= 1) {
        for (unsigned i = 0; i < n; i += 2 * len) {
            for (unsigned j = 0; j < len; j++) {
                int32_t u = a[i + j];
                int32_t v = mulmod_orig(a[i + j + len], roots[j], mod);
                a[i + j]       = addmod_orig(u, v, mod);
                a[i + j + len] = submod_orig(u, v, mod);
            }
        }
    }
}

// ===================== HLS トップ関数 =====================
// 固定サイズ N=256 の NTT
void ntt_forward_orig(int32_t a[256],
                      const int32_t roots[256],
                      int32_t mod)
{
#pragma HLS INTERFACE bram port=a
#pragma HLS INTERFACE bram port=roots
#pragma HLS INTERFACE s_axilite port=mod
#pragma HLS INTERFACE s_axilite port=return

    ntt_forward_impl(a, 256, roots, mod);
}
