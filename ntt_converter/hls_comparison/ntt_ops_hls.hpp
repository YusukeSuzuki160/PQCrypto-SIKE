#pragma once
// ntt_ops_hls.hpp
// Vitis HLS 向け NTT ライブラリ（高性能版）
//
// ハードウェアアーキテクチャを考慮した最適化:
//   1. Barrett リダクション — `%`(srem 反復除算器, ~68 cycle) を排除し、
//      乗算 + シフト + 補正のみで mod を計算 → バタフライを II=1 でパイプライン化可能
//   2. ブランチレス addmod / submod — 比較分岐を算術マスクへ置換しタイミングを改善
//   3. ARRAY_PARTITION complete — ローカル作業バッファを完全分割し、
//      1 バタフライあたり 2read+2write を BRAM の 2 ポート制約から解放（II=1）
//
//  これにより変換後 NTT は変換前（`%` ベース・II≈70）より大幅に高スループット化する。

#include <ap_int.h>
#include <climits>
#include <cstdint>
#include <type_traits>

namespace ntt {

// ===================== モジュラー演算プリミティブ =====================

// ブランチレス・モジュラー加算 (0 <= a,b < m, m < 2^31)
//   r = a + b; if (r >= m) r -= m;  を算術マスクで分岐なしに実装
static inline int32_t addmod32(int32_t a, int32_t b, int32_t m)
{
#pragma HLS INLINE
    int32_t r    = a + b;            // a,b < 2^31 なので int32 でオーバーフローしない
    int32_t mask = -(int32_t)(r >= m); // r>=m なら 0xFFFFFFFF, 否なら 0
    return r - (m & mask);
}

// ブランチレス・モジュラー減算 (0 <= a,b < m)
//   r = a - b; if (r < 0) r += m;
static inline int32_t submod32(int32_t a, int32_t b, int32_t m)
{
#pragma HLS INLINE
    int32_t r    = a - b;
    int32_t mask = -(int32_t)(r < 0);  // r<0 なら 0xFFFFFFFF
    return r + (m & mask);
}

// ---- Barrett 定数の事前計算 ----
// mu = floor(2^63 / m)。m はループ不変なので NTT 1 回につき 1 度だけ計算する。
// （内側ループの外に出るため、ここでの除算は性能に影響しない）
static inline ap_uint<64> barrett_mu(int32_t m)
{
#pragma HLS INLINE
    ap_uint<64> num = (ap_uint<64>)1 << 63;
    return num / (ap_uint<64>)m;
}

// ---- Barrett モジュラー乗算 ----
// 0 <= a,b < m < 2^31 を仮定。x = a*b < 2^62。
//   q = floor(x * mu / 2^63)   … x/m の近似（誤差は最大 2）
//   r = x - q*m                … 0 <= r < ~2m なので最大 2 回の条件付き減算で確定
// `%` を一切使わないため、全段が乗算器/加算器のみで構成され II=1 でパイプライン化できる。
static inline int32_t mulmod32(int32_t a, int32_t b, int32_t m, ap_uint<64> mu)
{
#pragma HLS INLINE
    ap_uint<64>  x  = (ap_uint<64>)a * (ap_uint<64>)b;   // < 2^62
    ap_uint<128> xm = (ap_uint<128>)x * (ap_uint<128>)mu;
    ap_uint<64>  q  = (ap_uint<64>)(xm >> 63);
    ap_uint<64>  r  = x - q * (ap_uint<64>)m;
    ap_uint<64>  mm = (ap_uint<64>)m;
    if (r >= mm) r -= mm;   // 補正1
    if (r >= mm) r -= mm;   // 補正2（安全側）
    return (int32_t)r;
}

// 旧 API 互換（mu を内部計算）— ソフト検証・単発呼び出し用
static inline int32_t mulmod32(int32_t a, int32_t b, int32_t m)
{
#pragma HLS INLINE
    return mulmod32(a, b, m, barrett_mu(m));
}

// ===================== Cooley-Tukey DIT バタフライ =====================
static inline void butterfly_ct_hls(int32_t &u, int32_t &v, int32_t w,
                                     int32_t mod, ap_uint<64> mu)
{
#pragma HLS INLINE
    int32_t t = mulmod32(v, w, mod, mu);
    v = submod32(u, t, mod);
    u = addmod32(u, t, mod);
}

// ===================== Gentleman-Sande DIF バタフライ =====================
static inline void butterfly_gs_hls(int32_t &u, int32_t &v, int32_t w,
                                     int32_t mod, ap_uint<64> mu)
{
#pragma HLS INLINE
    int32_t t = u;
    u = addmod32(t, v, mod);
    v = mulmod32(submod32(t, v, mod), w, mod, mu);
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
        // ローカル作業バッファ（完全分割）— 1 サイクルで任意の 2 要素 read/write を可能にする
        int32_t buf[MAX_N];
        int32_t rt[MAX_N];
#pragma HLS ARRAY_PARTITION variable=buf complete dim=1
#pragma HLS ARRAY_PARTITION variable=rt complete dim=1

        // BRAM -> レジスタへロード
        for (unsigned i = 0; i < n; i++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_N
#pragma HLS PIPELINE II=1
            buf[i] = a[i];
            rt[i]  = roots[i];
        }

        // Barrett 定数を 1 度だけ計算（内側ループ外）
        const ap_uint<64> mu = barrett_mu(mod);

        for (unsigned len = 1; len < n; len <<= 1) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=LOG2N
            for (unsigned i = 0; i < n; i += 2 * len) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_N/2
                for (unsigned j = 0; j < len; j++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_N/2
#pragma HLS PIPELINE II=1
                    // 同一内側ループ内の各 j は互いに素なインデックス(i+j, i+j+len)に
                    // アクセスするため、反復間の依存は偽。これを宣言することで HLS が
                    // Barrett 演算の長い組合せ経路を複数ステージにパイプライン化でき、
                    // II=1 を保ったままクロック周期を短縮できる。
#pragma HLS DEPENDENCE variable=buf type=inter dependent=false
                    butterfly_ct_hls(buf[i + j], buf[i + j + len], rt[j], mod, mu);
                }
            }
        }

        // レジスタ -> BRAM へストア
        for (unsigned i = 0; i < n; i++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_N
#pragma HLS PIPELINE II=1
            a[i] = buf[i];
        }
    }

    // ---- 逆 NTT (Gentleman-Sande DIF, in-place) ----
    static void inverse_ntt(int32_t *a, unsigned n,
                             const int32_t *roots, int32_t mod)
    {
#pragma HLS INLINE off
        int32_t buf[MAX_N];
        int32_t rt[MAX_N];
#pragma HLS ARRAY_PARTITION variable=buf complete dim=1
#pragma HLS ARRAY_PARTITION variable=rt complete dim=1

        for (unsigned i = 0; i < n; i++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_N
#pragma HLS PIPELINE II=1
            buf[i] = a[i];
            rt[i]  = roots[i];
        }

        const ap_uint<64> mu = barrett_mu(mod);

        for (unsigned len = n >> 1; len >= 1; len >>= 1) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=LOG2N
            for (unsigned start = 0; start < n; start += 2 * len) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_N/2
                for (unsigned j = start; j < start + len; j++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_N/2
#pragma HLS PIPELINE II=1
#pragma HLS DEPENDENCE variable=buf type=inter dependent=false
                    butterfly_gs_hls(buf[j], buf[j + len], rt[j - start], mod, mu);
                }
            }
        }

        for (unsigned i = 0; i < n; i++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_N
#pragma HLS PIPELINE II=1
            a[i] = buf[i];
        }
    }
};

} // namespace ntt
