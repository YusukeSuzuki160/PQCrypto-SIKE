# 作成したファイルの概要

## テストファイル

### 基本比較用
1. **test_orig.cpp** - 変換前の学校式乗算（ベースライン）
2. **test_converted.cpp** - 変換後のmpx::PackedOps実装
3. **test_comba.cpp** - Comba法実装（CHUNK_BITS=64固定）

### 高度な分析用
4. **test_comba_configurable.cpp** - 計算ビット数を変更可能なComba乗算
   - `#define MPX_CHUNK_BITS 64` でCHUNK_BITSを変更可能
   - 8/16/32/64/128/256などの値を設定可能

## 実行スクリプト

### 簡単な比較
- **quick_test.sh** - 3つの主要バージョンを並行実行（高速）

### 完全な比較
- **compare_all.sh** - すべての基本バージョンを順次実行
- **test_chunk_variants.sh** - 異なるCHUNK_BITS設定でテスト

### ユーティリティ
- **extract_metrics.sh** - レポートから主要メトリクスを抽出
- **run_single_test.sh** - 個別のテストを実行

## ドキュメント

- **README_hls_comparison.md** - テストの詳細説明
- **COMPLETE_COMPARISON.md** - CHUNK_BITSを含む完全な比較説明
- **QUICK_START.md** - クイックスタートガイド

## 主な違い

### 1. Original vs Converted
- **Original**: 二重ループ構造、逐次処理
- **Converted**: PackedOpsでパイプライン化可能

### 2. 計算ビット数（CHUNK_BITS）の影響

| CHUNK_BITS | リソース使用 | レイテンシ | 推奨用途 |
|------------|--------------|------------|----------|
| 8          | 最小         | 長い       | 面積重視 |
| 16-32      | 低           | 中程度     | バランス |
| 64         | 中           | 短い       | 標準的   |
| 128-256    | 高           | 最短       | 性能重視 |

## 推奨される実行順序

### 1. まずは簡単な比較
```bash
./quick_test.sh
```

### 2. 結果を確認
```bash
./extract_metrics.sh hls_comparison_results/*.rpt
```

### 3. より詳細な分析が必要な場合
```bash
# すべての基本テスト
./compare_all.sh

# CHUNK_BITSの変化を調べる
./test_chunk_variants.sh
```

## 注意事項

- Vitis HLS環境が必要です
- 実行には時間がかかります（各テストで数十分〜数時間）
- CHUNK_BITSのテストは多くのテストケースを実行するため時間がかかります
- まずは `quick_test.sh` で簡易比較することを推奨します

