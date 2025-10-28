# クイックスタートガイド

## 準備

```bash
cd /home/meltpoint/eeic/PQCrypto-SIKE/mp_mul_rewriter/auto
```

## テスト実行

### オプション1: すべてのテストを一度に実行（推奨）

```bash
./compare_all.sh
```

このコマンドは以下の処理を行います：
1. 3つのテストケース（orig, converted, comba）を順次実行
2. 各テストのVitisHLS合成を実行
3. 結果を `hls_comparison_results/` に保存

### オプション2: 個別にテストを実行

```bash
# 1. 変換前のバージョン
vitis_hls -f run_orig.tcl

# 2. 変換後のバージョン
vitis_hls -f run_converted.tcl

# 3. Comba版
vitis_hls -f run_comba.tcl
```

## 結果の確認

### サマリーを表示

```bash
cat hls_comparison_results/summary.txt
```

### 詳細レポートを表示

```bash
cat hls_comparison_results/orig_csynth.rpt
cat hls_comparison_results/converted_csynth.rpt
cat hls_comparison_results/comba_csynth.rpt
```

### メトリクスを抽出

```bash
./extract_metrics.sh hls_comparison_results/*.rpt
```

## 比較ポイント

各実装の違い：

| 実装 | 特徴 | 期待される効果 |
|------|------|----------------|
| orig | 学校式（二重ループ） | ベースライン |
| converted | PackedOps（pack→mul→unpack） | パイプライン化、リソース共有 |
| comba | Comba法（チャンク単位） | 面積効率、タイミング最適化 |

## トラブルシューティング

### VitisHLSが見つからない場合

```bash
which vitis_hls
# または
source /opt/Xilinx/Vivado/2023.1/settings64.sh
```

### メモリ不足の場合

個別にテストを実行してください。

## 次のステップ

結果を分析し、最適な実装を選択します：
- Latencyが重要な場合: 最も低いレイテンシの実装
- Areaが重要な場合: 最も小さいリソース使用量の実装
- バランスが重要な場合: 両者のバランスが良い実装

