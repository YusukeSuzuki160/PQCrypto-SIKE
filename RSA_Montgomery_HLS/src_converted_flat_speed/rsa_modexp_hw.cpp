// rsa_modexp_hw.cpp
// 速度重視オプション: 4bit固定窓法(windowed exponentiation) +
// 呼び出し箇所統合によるリソース圧縮。詳細はrsa_modexp_hw.hのコメント参照。
#include "rsa_modexp_hw.h"

// win_idx_from_lsb=0 が最下位側の窓。wbits分のビットを取り出す。
static inline unsigned get_window(const uint32_t d[MW_NWORDS], unsigned win_idx_from_lsb, unsigned wbits)
{
    unsigned bit_start = win_idx_from_lsb * wbits;
    unsigned val = 0;
    for (unsigned b = 0; b < wbits; b++)
    {
        unsigned bitpos = bit_start + b;
        unsigned bit = (d[bitpos >> 5] >> (bitpos & 31u)) & 1u;
        val |= bit << b;
    }
    return val;
}

extern "C" void rsa_modexp_hw(
    const uint32_t c[MW_NWORDS],
    const uint32_t d[MW_NWORDS],
    const uint32_t m[MW_NWORDS],
    uint32_t mprime,
    const uint32_t r2m[MW_NWORDS],
    uint32_t p[MW_NWORDS])
{
#pragma HLS INTERFACE m_axi port = c offset = slave bundle = gmem
#pragma HLS INTERFACE m_axi port = d offset = slave bundle = gmem
#pragma HLS INTERFACE m_axi port = m offset = slave bundle = gmem
#pragma HLS INTERFACE m_axi port = r2m offset = slave bundle = gmem
#pragma HLS INTERFACE m_axi port = p offset = slave bundle = gmem
#pragma HLS INTERFACE s_axilite port = mprime bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control

    constexpr unsigned WBITS = 4;
    constexpr unsigned WSIZE = 1u << WBITS; // 16
    constexpr unsigned NWINDOWS = (MW_NWORDS * 32u) / WBITS; // 128

    uint32_t one[MW_NWORDS];
    for (unsigned k = 0; k < MW_NWORDS; k++) one[k] = 0;
    one[0] = 1;

    // ---- 事前変換+事前計算テーブルを1つのループへ統合 ----
    // table[0]=MontForm(1), table[1]=MontForm(c), table[j]=table[j-1]*table[1]
    // (j=2..15)。以前は「事前変換の2回」と「事前計算チェーンの14回」を
    // 別々のループで書いていたため、呼び出し箇所ごとに専用ハードウェアが
    // 複製される問題(統合前FIOS-CSA-Flatと同根)が生じていた。jはループ
    // 変数(実行時の秘密データではない)なので、j==0/j==1での分岐は定数
    // 時間性を損なわない。1つの呼び出し文にまとめることで1インスタンス
    // への共有を狙う。
    uint32_t table[WSIZE][MW_NWORDS];
    for (unsigned j = 0; j < WSIZE; j++)
    {
        uint32_t opx[MW_NWORDS], opy[MW_NWORDS];
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
        uint32_t result[MW_NWORDS];
        montMult_words(opx, opy, m, mprime, result);
        for (unsigned k = 0; k < MW_NWORDS; k++) table[j][k] = result[k];
    }

    // ---- メインループ: MSB側から4bitずつウィンドウ処理(左から右へ) ----
    uint32_t z[MW_NWORDS];
    for (unsigned k = 0; k < MW_NWORDS; k++) z[k] = table[0][k]; // z = MontForm(1)

    for (unsigned win = 0; win < NWINDOWS; win++)
    {
        unsigned win_from_lsb = NWINDOWS - 1 - win;
        unsigned wval = get_window(d, win_from_lsb, WBITS);

        // 定数時間テーブル参照: 全WSIZEエントリを毎回読み、一致した1つだけ
        // をビットマスクで選択する。完全展開(UNROLL)しないと256回の
        // AND/OR操作が直列スケジュールされ、窓あたり600サイクル超という
        // 大きなオーバーヘッドになることを実測で確認した。
        uint32_t cand[MW_NWORDS];
        for (unsigned k = 0; k < MW_NWORDS; k++) cand[k] = 0;
        for (unsigned j = 0; j < WSIZE; j++)
        {
#pragma HLS UNROLL
            uint32_t sel = (uint32_t)0 - (uint32_t)(j == wval);
            for (unsigned k = 0; k < MW_NWORDS; k++)
            {
#pragma HLS UNROLL
                cand[k] |= table[j][k] & sel;
            }
        }

        // WBITS回の二乗+1回の窓乗算を同一の呼び出し文(1ループ)へ統一する。
        uint32_t zrun[MW_NWORDS];
        for (unsigned k = 0; k < MW_NWORDS; k++) zrun[k] = z[k];
        for (unsigned t = 0; t <= WBITS; t++)
        {
            uint32_t operand[MW_NWORDS];
            if (t < WBITS)
            {
                for (unsigned k = 0; k < MW_NWORDS; k++) operand[k] = zrun[k];
            }
            else
            {
                for (unsigned k = 0; k < MW_NWORDS; k++) operand[k] = cand[k];
            }
            uint32_t result[MW_NWORDS];
            montMult_words(zrun, operand, m, mprime, result);
            for (unsigned k = 0; k < MW_NWORDS; k++) zrun[k] = result[k];
        }
        for (unsigned k = 0; k < MW_NWORDS; k++) z[k] = zrun[k];
    }

    // ---- FromMont ----
    // (ペアになる呼び出しが存在しないため単独インスタンスのまま残る)
    uint32_t final_x[1][MW_NWORDS], final_y[1][MW_NWORDS], final_out[1][MW_NWORDS];
    for (unsigned k = 0; k < MW_NWORDS; k++) { final_x[0][k] = z[k]; final_y[0][k] = one[k]; }
    for (unsigned s = 0; s < 1; s++)
    {
        montMult_words(final_x[s], final_y[s], m, mprime, final_out[s]);
    }
    for (unsigned k = 0; k < MW_NWORDS; k++) p[k] = final_out[0][k];
}
