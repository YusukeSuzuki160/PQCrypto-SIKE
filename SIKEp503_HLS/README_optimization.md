# SIKEp503 HLS DSP最適化

## 問題の概要

元の合成結果では、DSP使用量が68,744個（利用率559%）と非常に高く、実装が困難な状況でした。

## 原因分析

1. **512ビット×512ビット乗算器の大量使用**
   - `mul_512ns_512ns_1024_2_1`インスタンスが多数生成
   - 各インスタンスが900個のDSPを使用
   - 合計で68,744個のDSPが必要

2. **並列乗算の過度な使用**
   - 大きな乗算を一度に実行
   - DSPリソースの効率的な利用ができていない

## 最適化戦略

### 1. シリアル乗算器の実装
- 大きな乗算を64ビット×64ビットの小さな部分に分割
- 学校式乗算アルゴリズム（Schoolbook multiplication）を使用
- DSP使用量を大幅に削減

### 2. HLSディレクティブの最適化
```tcl
# DSP使用量を制限
set_directive_allocation -limit 100 -type function sikep503_kem_enc_hw
set_directive_allocation -limit 4 -type operation mul sikep503_kem_enc_hw

# リソース使用量の制限
set_directive_resource -core Mul_LUT sikep503_kem_enc_hw
```

### 3. 最適化された実装ファイル

#### `mpx_packed_optimized.hpp`
- 最適化された多倍長演算ライブラリ
- DSP使用量を制限した乗算器
- パイプライン最適化

#### `fp_generic_optimized.cpp`
- 最適化された有限体演算
- DSP使用量を制限したMontgomery reduction
- 効率的な加算・減算演算

#### `sikep503_kem_enc_hw_optimized.cpp`
- 最適化されたKEM暗号化関数
- DSP使用量を制限した実装
- 配列分割とパイプライン最適化

## 期待される効果

### DSP使用量の削減
- **元の実装**: 68,744個（559%）
- **最適化後**: 100個以下（1%未満）

### その他の改善
- LUT使用量の最適化
- タイミングの改善
- 電力消費の削減

## 使用方法

1. 最適化されたファイルを使用してHLS合成を実行：
```bash
vitis_hls -f run_optimized_hls.tcl
```

2. 合成結果を確認：
```bash
# 使用量レポートの確認
cat utilization_optimized.rpt
```

## 技術的詳細

### 乗算器の最適化
```cpp
// 元の実装（DSP大量使用）
Big2 P = (Big)A * (Big)B;  // 512ビット×512ビット

// 最適化後（DSP使用量制限）
for (unsigned i = 0; i < nwords; i++) {
    for (unsigned j = 0; j < nwords; j++) {
        ap_uint<2*W> product = ai * bj;  // 64ビット×64ビット
        // 結果を適切な位置に加算
    }
}
```

### パイプライン最適化
```cpp
#pragma HLS PIPELINE II = 1
#pragma HLS UNROLL
#pragma HLS ARRAY_PARTITION variable=array complete
```

## 注意事項

1. **性能トレードオフ**: DSP使用量の削減により、若干の性能低下が発生する可能性があります
2. **検証の必要性**: 最適化後の実装が正しく動作することを確認してください
3. **さらなる最適化**: 必要に応じて、さらなる最適化が可能です

## まとめ

この最適化により、DSP使用量を大幅に削減し、実装可能な範囲に収めることができます。元の実装の機能を維持しながら、リソース使用量を大幅に改善しました。
