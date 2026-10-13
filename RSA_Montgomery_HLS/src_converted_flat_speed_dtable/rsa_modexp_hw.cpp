// rsa_modexp_hw.cpp
// 速度重視オプション: 4bit固定窓法(windowed exponentiation) +
// 呼び出し箇所統合によるリソース圧縮。詳細はrsa_modexp_hw.hのコメント参照。
#include "rsa_modexp_hw.h"

// win_idx_from_lsb=0 が最下位側の窓。wbits分のビットを取り出す。
// WBITSが512を割り切らない場合(5bit等)、最上位窓は一部が実際の配列
// 範囲(MW_NWORDS*32ビット)を超えるため、範囲外は0として扱う
// (実ビット数を超える上位ビットが定義上すべて0という既存の前提と同じ)。
static inline unsigned get_window(const uint32_t d[MW_NWORDS], unsigned win_idx_from_lsb, unsigned wbits)
{
    unsigned bit_start = win_idx_from_lsb * wbits;
    unsigned val = 0;
    for (unsigned b = 0; b < wbits; b++)
    {
        unsigned bitpos = bit_start + b;
        unsigned bit = (bitpos < MW_NWORDS * 32u)
                          ? ((d[bitpos >> 5] >> (bitpos & 31u)) & 1u)
                          : 0u;
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

    constexpr unsigned WBITS = 5;
    constexpr unsigned WSIZE = 1u << WBITS; // 32
    // 512はWBITS=5で割り切れないため天井除算(103窓、最上位窓は
    // 上位3bitがget_windowにより常に0として扱われる=無害なゼロ
    // パディング)。
    constexpr unsigned NWINDOWS = (MW_NWORDS * 32u + WBITS - 1) / WBITS; // 103

    uint32_t one[MW_NWORDS];
    for (unsigned k = 0; k < MW_NWORDS; k++) one[k] = 0;
    one[0] = 1;

    // ---- 事前計算テーブル: doubling-ladder構成(案D、WBITS=5固定でハードコード) ----
    // 従来の線形チェーン(table[j]=table[j-1]*table[1])は32段の完全逐次
    // 依存チェーンだった。ここでは base=table[2^(L-1)]を固定した上で
    // table[base+k]=table[k]*table[base] (k=1..base) という関係だけを使い、
    // table[2..31]を依存境界(レベル)ごとに16バッチへ再編成した。各バッチ
    // 内の2エントリは互いに独立(レベル開始前に既知の値のみに依存)なので、
    // 2個の"別々のテキスト上の"呼び出し文を使うことで2物理インスタンス
    // へ空間展開し並列実行させる(Section 5の案Cと同じ考え方——
    // `for(s=0;s<2)`ループで同一呼び出し文を2回実行する書き方は、逆に
    // Section 4.6で確立した「1インスタンスへの共有」を引き起こしてしまい
    // 並列化にならないため、意図的に避ける)。
    // セットアップ(table[0]/table[1]のR^2変換)も同じ2並列呼び出しへ統合し
    // (bidx==0はループ変数分岐であり秘密指数dに一切依存しないため定数
    // 時間性を損なわない)、全17ステップ(セットアップ1+バッチ16)で
    // 線形チェーン版の32ステップ相当を代替する。事前計算テーブル自体は
    // 秘密指数dに一切依存しない公開計算(c, mのみに依存)であり、
    // 依存関係の並べ替え自体はそもそも定数時間性と無関係。
    // batch_a*/batch_b*はbidx==0では未使用(ダミー値)。
    // 最終バッチ(bidx=16)はtable[31]を2回書く(同じ値の冗長計算、無害な
    // パディング)——15個という奇数個のエントリを2幅ループへ揃えるため。
    static const unsigned char batch_dstA[17] = { 0, 2, 3, 5, 7, 9,11,13,15,17,19,21,23,25,27,29,31};
    static const unsigned char batch_dstB[17] = { 1, 2, 4, 6, 8,10,12,14,16,18,20,22,24,26,28,30,31};
    static const unsigned char batch_aA[17]   = { 0, 1, 1, 1, 3, 1, 3, 5, 7, 1, 3, 5, 7, 9,11,13,15};
    static const unsigned char batch_bA[17]   = { 0, 1, 2, 4, 4, 8, 8, 8, 8,16,16,16,16,16,16,16,16};
    static const unsigned char batch_aB[17]   = { 0, 1, 2, 2, 4, 2, 4, 6, 8, 2, 4, 6, 8,10,12,14,15};
    static const unsigned char batch_bB[17]   = { 0, 1, 2, 4, 4, 8, 8, 8, 8,16,16,16,16,16,16,16,16};

    uint32_t table[WSIZE][MW_NWORDS];
    for (unsigned bidx = 0; bidx < 17; bidx++)
    {
        uint32_t opx[2][MW_NWORDS], opy[2][MW_NWORDS], res[2][MW_NWORDS];
        if (bidx == 0)
        {
            for (unsigned k = 0; k < MW_NWORDS; k++) { opx[0][k] = one[k]; opy[0][k] = r2m[k]; }
            for (unsigned k = 0; k < MW_NWORDS; k++) { opx[1][k] = c[k];   opy[1][k] = r2m[k]; }
        }
        else
        {
            unsigned aA = batch_aA[bidx], bA = batch_bA[bidx];
            unsigned aB = batch_aB[bidx], bB = batch_bB[bidx];
            for (unsigned k = 0; k < MW_NWORDS; k++) { opx[0][k] = table[aA][k]; opy[0][k] = table[bA][k]; }
            for (unsigned k = 0; k < MW_NWORDS; k++) { opx[1][k] = table[aB][k]; opy[1][k] = table[bB][k]; }
        }
        // 2物理インスタンスでの空間並列実行を狙い、あえて別々の呼び出し
        // 文として書く(loop化すると1インスタンスへ共有されてしまう)。
        montMult_words(opx[0], opy[0], m, mprime, res[0]);
        montMult_words(opx[1], opy[1], m, mprime, res[1]);
        unsigned dA = batch_dstA[bidx], dB = batch_dstB[bidx];
        for (unsigned k = 0; k < MW_NWORDS; k++) table[dA][k] = res[0][k];
        for (unsigned k = 0; k < MW_NWORDS; k++) table[dB][k] = res[1][k];
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
