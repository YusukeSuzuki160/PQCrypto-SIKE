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
    uint32_t parr1[MW_NWORDS], parr2[MW_NWORDS];

    montMult_words(one, r2m, m, mprime, zarr1); // zarr1 = MontForm(1)
    montMult_words(c, r2m, m, mprime, parr1);   // parr1 = MontForm(c)

    // 固定回数(MW_NWORDS*32=512回)ループ化。dの実ビット数を超える上位
    // ビットは定義上すべて0なので、常に512回実行しても実ビット数ぶん
    // だけ実行した場合と数学的に同じ結果になる(詳細はヘッダのコメント
    // 参照)。ループ本体は毎回同じ計算(二乗+条件付き取り込み)を行う。
    constexpr unsigned MAX_EBITS = MW_NWORDS * 32u;
    for (unsigned i = 0; i < MAX_EBITS; i++)
    {
        uint32_t tm[MW_NWORDS];
        for (unsigned k = 0; k < MW_NWORDS; k++) tm[k] = parr1[k];
        montMult_words(tm, parr1, m, mprime, parr2); // parr2 = parr1^2

        // SIKEでの経験と同じ理由により、if(bit==1){高コストな演算}else{安価
        // なコピー}という分岐は反復あたりのコストを実行時データ(指数dの
        // ビット列)に依存させてしまう。常にmontMult_wordsを計算し、
        // 採用するかどうかをビットマスクで選択する(分岐に依存しない
        // 定数時間の手法)。
        uint32_t zcand[MW_NWORDS];
        montMult_words(zarr1, parr1, m, mprime, zcand);
        uint32_t bitmask = (uint32_t)0 - (uint32_t)get_bit(d, i);
        for (unsigned k = 0; k < MW_NWORDS; k++)
            zarr2[k] = (zcand[k] & bitmask) | (zarr1[k] & ~bitmask);

        for (unsigned k = 0; k < MW_NWORDS; k++) parr1[k] = parr2[k];
        for (unsigned k = 0; k < MW_NWORDS; k++) zarr1[k] = zarr2[k];
    }

    montMult_words(zarr1, one, m, mprime, p); // p = FromMont(zarr1)
}
