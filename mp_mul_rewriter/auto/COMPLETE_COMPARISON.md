# 完全なHLS性能比較テスト

## 概要

このテストスイートは、以下の実装を比較します：

1. **Original (学校式)** - 変換前の実装
2. **Converted (PackedOps)** - 変換後の実装
3. **Comba (固定CHUNK_BITS=64)** - Comba法（デフォルト）
4. **Comba (可変CHUNK_BITS)** - 異なるCHUNK_BITS設定でのComba法

## CHUNK_BITSの役割

`MPX_CHUNK_BITS` は内部計算で使用するチャンクのビット幅を指定します：

- **小さい値 (8, 16)**: 
  - リソース使用量が少ない
  - 処理が細かく分割される
  - レイテンシが長くなる可能性

- **中間値 (32, 64)**: 
  - バランスが良い
  - 一般的に推奨される設定

- **大きい値 (128, 256)**: 
  - リソース使用量が多い
  - 処理が高速化される可能性
  - DSPなどの特殊リソースを使用

## 実行方法

### 基本比較（3つのバージョン）

```bash
cd /home/meltpoint/eeic/PQCrypto-SIKE/mp_mul_rewriter/auto
./compare_all.sh
```

### CHUNK_BITSの影響を調べる

```bash
./test_chunk_variants.sh
```

これにより、CHUNK_BITS = 8, 16, 32, 64, 128 での性能を比較できます。

### 全テストを一度に実行

```bash
# まず基本比較
./compare_all.sh

# 次にCHUNK_BITSの変化をテスト
./test_chunk_variants.sh
```

## 結果の見方

### 1. Latency（レイテンシ）

小さいCHUNK_BITSほど多くの繰り返しが必要で、レイテンシが長くなる傾向があります。

### 2. Area（リソース使用量）

| CHUNK_BITS | 期待される影響 |
|------------|----------------|
| 8          | LUT/FF 使用量が少ない |
| 16-32      | バランス型 |
| 64         | デフォルト、標準的 |
| 128-256    | DSP使用増加、面積増加 |

### 3. Timing（タイミング）

大きいCHUNK_BITSでは、単一の乗算器が大きくなるため、タイミングが難しくなる可能性があります。

## サンプル結果の分析

```bash
# 結果を表示
./extract_metrics.sh hls_comparison_results/*.rpt

# 特定のメトリクスだけを抽出
grep "Latency" hls_comparison_results/*.rpt
grep "Total" hls_comparison_results/*.rpt
```

## 最適化のヒント

1. **レイテンシが重要**: CHUNK_BITSを大きくする
2. **面積が重要**: CHUNK_BITSを小さくする
3. **バランス**: CHUNK_BITS = 32 または 64

## ファイル構成

### テストファイル
- `test_orig.cpp` - 変換前の実装
- `test_converted.cpp` - 変換後の実装
- `test_comba.cpp` - Comba法（固定）
- `test_comba_configurable.cpp` - Comba法（可変CHUNK_BITS）

### スクリプト
- `compare_all.sh` - 基本比較
- `test_chunk_variants.sh` - CHUNK_BITS変化のテスト
- `extract_metrics.sh` - メトリクス抽出

## 注意事項

- CHUNK_BITS > 256 はサポートされていません
- 大きいCHUNK_BITSでは合成時間が長くなる可能性があります
- ターゲットデバイスに十分なDSPがあることを確認してください

