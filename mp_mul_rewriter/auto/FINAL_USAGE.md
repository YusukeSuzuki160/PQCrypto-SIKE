# 最終的な使用方法

## 作成されたファイル一覧

### 基本テストファイル
- `test_orig.cpp` - 変換前の学校式
- `test_converted.cpp` - 変換後のPackedOps
- `test_comba.cpp` - Comba法（固定）

### 計算ビット幅変更可能なテストファイル
- `test_comba_configurable.cpp` - Comba法（可変CHUNK_BITS）★
- `test_iface_configurable.cpp` - mpx_ifaceスタイル（可変BLOCK_BITS）★

### 実行スクリプト
- `quick_test.sh` - 基本3バージョンの高速比較（推奨）
- `compare_all.sh` - 基本バージョンの完全比較
- `test_both_configurable.sh` - mpx_ifaceとmpx_combaでビット幅バリエーション★
- `compare_all_variants.sh` - すべてのバージョンを一括テスト★

## 推奨される実行順序

### 1. まずは簡単な比較（5分程度）

```bash
cd /home/meltpoint/eeic/PQCrypto-SIKE/mp_mul_rewriter/auto
./quick_test.sh
```

### 2. mpx_ifaceとmpx_combaの両方でビット幅の影響を調べる

```bash
./test_both_configurable.sh
```

このスクリプトは以下を実行します：
- mpx_iface: BLOCK_BITS = 16, 32, 64, 128, 256
- mpx_comba: CHUNK_BITS = 16, 32, 64, 128, 256

合計10種類のテストケース（実行には数時間かかります）

### 3. 完全な比較（すべてのバージョン）

```bash
./compare_all_variants.sh
```

基本実装 + mpx_iface/mpx_combaのビット幅バリエーションをすべて実行します。

## 結果の確認

### 生成されるレポート

基本テスト:
- `orig_csynth.rpt`
- `converted_csynth.rpt`
- `comba_csynth.rpt`

mpx_iface (BLOCK_BITS):
- `iface_bits16_csynth.rpt`
- `iface_bits32_csynth.rpt`
- `iface_bits64_csynth.rpt`
- `iface_bits128_csynth.rpt`
- `iface_bits256_csynth.rpt`

mpx_comba (CHUNK_BITS):
- `comba_bits16_csynth.rpt`
- `comba_bits32_csynth.rpt`
- `comba_bits64_csynth.rpt`
- `comba_bits128_csynth.rpt`
- `comba_bits256_csynth.rpt`

### 結果を表示

```bash
# すべてのレポートを一覧
ls -lh hls_comparison_results/

# メトリクスを抽出
./extract_metrics.sh hls_comparison_results/*.rpt

# 特定のビット幅を比較
./extract_metrics.sh hls_comparison_results/iface_bits*.rpt
./extract_metrics.sh hls_comparison_results/comba_bits*.rpt
```

## 期待される結果

### ビット幅の影響

| ビット幅 | mpx_iface (BLOCK_BITS) | mpx_comba (CHUNK_BITS) |
|----------|------------------------|------------------------|
| 16       | 小さいリソース、長いレイテンシ | 同様の傾向 |
| 32       | バランス型 | 同様の傾向 |
| 64       | 標準的、推奨 | 同様の傾向 |
| 128      | 高速だがDSP使用増加 | 同様の傾向 |
| 256      | 最大性能だが面積増大 | 同様の傾向 |

### 主な比較ポイント

1. **Original vs Converted**
   - レイテンシの改善
   - リソース使用量の変化

2. **mpx_iface vs mpx_comba**
   - 実装方式による違い
   - ビット幅による最適化度

3. **ビット幅による影響**
   - 面積 vs 性能のトレードオフ
   - DSP使用量の変化
   - タイミング制約への影響

## 注意事項

- **実行時間**: `test_both_configurable.sh` は10種類のテストを順次実行するため、数時間かかる場合があります
- **メモリ**: 大きなビット幅（256など）ではメモリ不足になる可能性があります
- **推奨**: まずは `quick_test.sh` で基本比較を行い、その後 `test_both_configurable.sh` で詳細分析

## 次のステップ

結果を分析して、以下を決定します：

1. **アプリケーションの要求に最適な実装**
   - レイテンシ重視
   - 面積重視
   - バランス型

2. **最適なビット幅設定**
   - ターゲットデバイスのリソース制約
   - 性能要件
   - 面積制約

3. **推奨される選択**
   - 一般的には64-bit設定がバランスが良い
   - 面積重視なら16-32bit
   - 性能重視なら128-256bit

