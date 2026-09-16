// rsa_modexp_hw.cpp
// Vitis HLS トップレベル関数の実装。詳細はrsa_modexp_hw.hのコメント参照。
#include "rsa_modexp_hw.h"

static inline int get_bit(const uint32_t e[MW_NWORDS], unsigned i)
{
    return (int)((e[i >> 5] >> (i & 31u)) & 1u);
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

    uint32_t one[MW_NWORDS];
    for (unsigned k = 0; k < MW_NWORDS; k++) one[k] = 0;
    one[0] = 1;

    uint32_t zarr1[MW_NWORDS], zarr2[MW_NWORDS];
    uint32_t parr1[MW_NWORDS];

    // MontForm(1)とMontForm(c)は別々の文として書くと、Vitis HLSがそれぞれ
    // 専用の物理ハードウェアを複製してしまう(実測で確認: 呼び出し箇所
    // ごとに約87,000〜94,000 LUTのmontMult_wordsが複製され、使用サイクル
    // 数は全体の0.3%程度しかないにもかかわらずLUTの大半を占めていた)。
    // 下側のメインループ内で2回呼ばれるmontMult_wordsが自動的に1インス
    // タンスへ共有されているのと同じ機構(同一ループ本体内での繰り返し
    // 呼び出しは共有されやすい)を使うため、この2回もあえて小さな
    // ループにまとめる。
    uint32_t conv_x[2][MW_NWORDS], conv_y[2][MW_NWORDS], conv_out[2][MW_NWORDS];
    for (unsigned k = 0; k < MW_NWORDS; k++) { conv_x[0][k] = one[k]; conv_y[0][k] = r2m[k]; }
    for (unsigned k = 0; k < MW_NWORDS; k++) { conv_x[1][k] = c[k];   conv_y[1][k] = r2m[k]; }
    for (unsigned s = 0; s < 2; s++)
    {
        montMult_words(conv_x[s], conv_y[s], m, mprime, conv_out[s]);
    }
    for (unsigned k = 0; k < MW_NWORDS; k++) { zarr1[k] = conv_out[0][k]; parr1[k] = conv_out[1][k]; }

    // 固定回数(MW_NWORDS*32=512回)ループ化。dの実ビット数を超える上位
    // ビットは定義上すべて0なので、常に512回実行しても実ビット数ぶん
    // だけ実行した場合と数学的に同じ結果になる(詳細はヘッダのコメント
    // 参照)。ループ本体は毎回同じ計算(二乗+条件付き取り込み)を行う。
    constexpr unsigned MAX_EBITS = MW_NWORDS * 32u;
    for (unsigned i = 0; i < MAX_EBITS; i++)
    {
        // 二乗(tm,parr1)とz候補(zarr1,parr1)は、以前はそれぞれ別の文として
        // 書いていたところ、Vitis HLSが「呼び出し箇所ごとに専用ハード
        // ウェアを複製する」挙動を示すことが分かった(上のMontForm(1)/
        // MontForm(c)統合と同じ問題)。同じ1つのソース行(同一テキスト上の
        // 呼び出し箇所)を小さな内側ループで2回実行する形に統一し、
        // 1インスタンスへの共有を狙う。
        uint32_t loop_x[2][MW_NWORDS], loop_y[2][MW_NWORDS], loop_out[2][MW_NWORDS];
        for (unsigned k = 0; k < MW_NWORDS; k++) { loop_x[0][k] = parr1[k]; loop_y[0][k] = parr1[k]; }
        for (unsigned k = 0; k < MW_NWORDS; k++) { loop_x[1][k] = zarr1[k]; loop_y[1][k] = parr1[k]; }
        for (unsigned s = 0; s < 2; s++)
        {
            montMult_words(loop_x[s], loop_y[s], m, mprime, loop_out[s]);
        }
        uint32_t (&parr2ref)[MW_NWORDS] = loop_out[0]; // parr1^2
        uint32_t (&zcand)[MW_NWORDS] = loop_out[1];    // zarr1*parr1 候補

        // SIKEでの経験と同じ理由により、if(bit==1){高コストな演算}else{安価
        // なコピー}という分岐は反復あたりのコストを実行時データ(指数dの
        // ビット列)に依存させてしまう。常にmontMult_wordsを計算し、
        // 採用するかどうかをビットマスクで選択する(分岐に依存しない
        // 定数時間の手法)。
        uint32_t bitmask = (uint32_t)0 - (uint32_t)get_bit(d, i);
        for (unsigned k = 0; k < MW_NWORDS; k++)
            zarr2[k] = (zcand[k] & bitmask) | (zarr1[k] & ~bitmask);

        for (unsigned k = 0; k < MW_NWORDS; k++) parr1[k] = parr2ref[k];
        for (unsigned k = 0; k < MW_NWORDS; k++) zarr1[k] = zarr2[k];
    }

    montMult_words(zarr1, one, m, mprime, p); // p = FromMont(zarr1)
}
