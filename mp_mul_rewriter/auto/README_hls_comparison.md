# HLS性能比較テスト

## 概要

このディレクトリには、3つの異なる多倍長乗算実装のVitisHLSでの性能を比較するためのテストファイルが含まれています。

## テストケース

### 基本実装（3種類）
1. **test_orig.cpp** - 変換前の学校式乗算
   - 下三角＋上三角の二重ループ構造
   - 元のコード構造を保持

2. **test_converted.cpp** - 変換後のPackedOps実装
   - mp_mul_rewriterによる自動変換
   - pack→mul→unpack の流れ

3. **test_comba.cpp** - Comba法による乗算
   - チャンクベースのComba実装

### 計算ビット幅変更可能な実装（2種類）
4. **test_comba_configurable.cpp** - Comba法（可変CHUNK_BITS）
   - MPX_CHUNK_BITSを変更して内部計算の粒度を調整
   - 16/32/64/128/256などから選択可能

5. **test_iface_configurable.cpp** - mpx_ifaceスタイル（可変BLOCK_BITS）
   - BLOCK_BITSを変更して内部計算の粒度を調整
   - 16/32/64/128/256などから選択可能

## 使用方法

### すべてのテストを実行

```bash
cd /home/meltpoint/eeic/PQCrypto-SIKE/mp_mul_rewriter/auto
./compare_all.sh
```

これにより3つのテストが順次実行され、結果が `hls_comparison_results/` に保存されます。

### 個別のテストを実行

```bash
./run_single_test.sh orig "Original (pre-conversion)" test_orig.cpp
```

### CHUNK_BITSの影響を調べる

#### mpx_combaとmpx_ifaceの両方で異なるビット幅をテスト

```bash
./test_both_configurable.sh
```

これにより、mpx_combaとmpx_ifaceの両方で、BLOCK_BITS/CHUNK_BITS = 16, 32, 64, 128, 256での性能を比較できます。

#### すべてのバージョンを一括テスト

```bash
./compare_all_variants.sh
```

基本実装とビット幅バリエーションのすべてをテストします。

### メトリクスを抽出

```bash
./extract_metrics.sh hls_comparison_results/*.rpt
```

## 結果の見方

各テストで以下のメトリクスが重要です：

- **Latency**: 演算完了までのサイクル数
- **Area**: リソース使用量（LUT, FF, BRAM, DSP）
- **Timing**: タイミング制約の達成状況

## ファイル構成

- `test_orig.cpp` - 変換前の乗算実装
- `test_converted.cpp` - 変換後のPackedOps実装  
- `test_comba.cpp` - Comba法実装
- `compare_all.sh` - すべてのテストを実行するスクリプト
- `run_single_test.sh` - 単一テストを実行するスクリプト
- `extract_metrics.sh` - メトリクス抽出スクリプト
- `mpx_packed.hpp` - PackedOps実装ヘッダ

## 注意事項

- Vitis HLS環境が必要です
- 実行には数時間かかる場合があります
- メモリ使用量に注意してください

## 期待される結果

変換前と変換後では以下の違いが期待されます：

1. **Latency**: パイプライン効果により変換後の方が短い
2. **Area**: リソース変換により使用量が異なる
3. **Timing**: HLS指示子により最適化度が異なる

Comba法は一般的に面積効率が高いですが、実装の詳細により性能は異なります。

### CHUNK_BITSの影響

- **小さい値 (8-16)**: リソース使用量が少ないが、処理が多段階になる
- **中間値 (32-64)**: バランスが良く、一般的に推奨
- **大きい値 (128-256)**: 高速化が期待できるが、DSP使用量が増加

詳細は `COMPLETE_COMPARISON.md` を参照してください。

