// rsa_modexp_hw.cpp (64bit語版)
// 速度重視オプション: 5bit固定窓法(windowed exponentiation) +
// 呼び出し箇所統合によるリソース圧縮。src_converted_flat_speed_w5/との
// 違いは語幅のみ(32bit/N=16 → 64bit/N=8)。単体カーネル実測で
// サイクル数-35%・LUT-53%(DSP+82%、device比では8%のまま小さい)を
// 確認したため、全体トップへ適用して効果を検証する。
#include "rsa_modexp_hw.h"

// win_idx_from_lsb=0 が最下位側の窓。wbits分のビットを取り出す。
// 64bit語なのでbitpos>>6(語内オフセットは&63)。512はWBITS=5で
// 割り切れないため、最上位窓の範囲外ビットは0として扱う。
static inline unsigned get_window(const uint64_t d[MW_NWORDS], unsigned win_idx_from_lsb, unsigned wbits)
{
    unsigned bit_start = win_idx_from_lsb * wbits;
    unsigned val = 0;
    for (unsigned b = 0; b < wbits; b++)
    {
        unsigned bitpos = bit_start + b;
        unsigned bit = (bitpos < MW_NWORDS * 64u)
                          ? (unsigned)((d[bitpos >> 6] >> (bitpos & 63u)) & 1ull)
                          : 0u;
        val |= bit << b;
    }
    return val;
}

extern "C" void rsa_modexp_hw(
    const uint64_t c[MW_NWORDS],
    const uint64_t d[MW_NWORDS],
    const uint64_t m[MW_NWORDS],
    uint64_t mprime,
    const uint64_t r2m[MW_NWORDS],
    uint64_t p[MW_NWORDS])
{
#pragma HLS INTERFACE m_axi port = c offset = slave bundle = gmem
#pragma HLS INTERFACE m_axi port = d offset = slave bundle = gmem
#pragma HLS INTERFACE m_axi port = m offset = slave bundle = gmem
#pragma HLS INTERFACE m_axi port = r2m offset = slave bundle = gmem
#pragma HLS INTERFACE m_axi port = p offset = slave bundle = gmem
#pragma HLS INTERFACE s_axilite port = mprime bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control

    constexpr unsigned WBITS = 5;
    constexpr unsigned WSIZE = 1u << WBITS; // 32
    // 512(=MW_NWORDS*64)はWBITS=5で割り切れないため天井除算(103窓)。
    constexpr unsigned NWINDOWS = (MW_NWORDS * 64u + WBITS - 1) / WBITS; // 103

    uint64_t one[MW_NWORDS];
    for (unsigned k = 0; k < MW_NWORDS; k++) one[k] = 0;
    one[0] = 1;

    // ---- 事前変換+事前計算テーブルを1つのループへ統合(Section 4.6の
    // 呼び出し統合パターンを維持) ----
    uint64_t table[WSIZE][MW_NWORDS];
    for (unsigned j = 0; j < WSIZE; j++)
    {
        uint64_t opx[MW_NWORDS], opy[MW_NWORDS];
        if (j == 0)
        {
            for (unsigned k = 0; k < MW_NWORDS; k++) { opx[k] = one[k]; opy[k] = r2m[k]; }
        }
        else if (j == 1)
        {
            for (unsigned k = 0; k < MW_NWORDS; k++) { opx[k] = c[k]; opy[k] = r2m[k]; }
        }
        else
        {
            for (unsigned k = 0; k < MW_NWORDS; k++) { opx[k] = table[j - 1][k]; opy[k] = table[1][k]; }
        }
        uint64_t result[MW_NWORDS];
        montMult_words(opx, opy, m, mprime, result);
        for (unsigned k = 0; k < MW_NWORDS; k++) table[j][k] = result[k];
    }

    // ---- メインループ: MSB側から5bitずつウィンドウ処理(左から右へ) ----
    uint64_t z[MW_NWORDS];
    for (unsigned k = 0; k < MW_NWORDS; k++) z[k] = table[0][k]; // z = MontForm(1)

    for (unsigned win = 0; win < NWINDOWS; win++)
    {
        unsigned win_from_lsb = NWINDOWS - 1 - win;
        unsigned wval = get_window(d, win_from_lsb, WBITS);

        uint64_t cand[MW_NWORDS];
        for (unsigned k = 0; k < MW_NWORDS; k++) cand[k] = 0;
        for (unsigned j = 0; j < WSIZE; j++)
        {
#pragma HLS UNROLL
            uint64_t sel = (uint64_t)0 - (uint64_t)(j == wval);
            for (unsigned k = 0; k < MW_NWORDS; k++)
            {
#pragma HLS UNROLL
                cand[k] |= table[j][k] & sel;
            }
        }

        uint64_t zrun[MW_NWORDS];
        for (unsigned k = 0; k < MW_NWORDS; k++) zrun[k] = z[k];
        for (unsigned t = 0; t <= WBITS; t++)
        {
            uint64_t operand[MW_NWORDS];
            if (t < WBITS)
            {
                for (unsigned k = 0; k < MW_NWORDS; k++) operand[k] = zrun[k];
            }
            else
            {
                for (unsigned k = 0; k < MW_NWORDS; k++) operand[k] = cand[k];
            }
            uint64_t result[MW_NWORDS];
            montMult_words(zrun, operand, m, mprime, result);
            for (unsigned k = 0; k < MW_NWORDS; k++) zrun[k] = result[k];
        }
        for (unsigned k = 0; k < MW_NWORDS; k++) z[k] = zrun[k];
    }

    // ---- FromMont(孤立呼び出し、統合不可のまま残存) ----
    uint64_t final_x[1][MW_NWORDS], final_y[1][MW_NWORDS], final_out[1][MW_NWORDS];
    for (unsigned k = 0; k < MW_NWORDS; k++) { final_x[0][k] = z[k]; final_y[0][k] = one[k]; }
    for (unsigned s = 0; s < 1; s++)
    {
        montMult_words(final_x[s], final_y[s], m, mprime, final_out[s]);
    }
    for (unsigned k = 0; k < MW_NWORDS; k++) p[k] = final_out[0][k];
}
