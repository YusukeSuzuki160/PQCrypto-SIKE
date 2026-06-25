# Karatsuba 乗算: 分割数スイープ — Vitis HLS 合成レポート（改善版）

**実施日:** 2026-06-25  
**ツール:** Vitis HLS 2024.2.2  
**ターゲット:** `xcvu9p-flga2104-2-i` (Virtex UltraScale+)  
**クロック:** 10 ns (100 MHz 目標)  
**問題サイズ:** `digit_t = uint64_t`, `nwords = 8` (512-bit × 512-bit)

本レポートは **`mpx_mul_converter/include/mpx_packed_karatsuba.hpp` 改善後**（LSW 直通・`mul_sized` インライン化・配列縮小・combine 簡素化）の HLS 合成結果です。

---

## 1. 比較対象

| ID | ソース | 説明 |
|----|--------|------|
| **flat** | `examples/test_karatsuba_handwritten_flat.cpp` | 変換前ベースライン（n=8 固定・手書き平坦 Karatsuba） |
| **base1–8** | `examples/test_kara_sweep_base*.cpp` + `include/mpx_packed_karatsuba.hpp` | 変換後 PackedOps（`MPX_KARA_BASE_WORDS` / `MPX_MUL_BITS` 変更） |

合成スクリプト: [`scripts/run_karatsuba_base_sweep.sh`](../scripts/run_karatsuba_base_sweep.sh)

---

## 2. 分割数スイープ結果（改善後）

`MPX_MUL_BITS = BASE × 64`（語幅 64-bit）で合成。

| バリアント | BASE | MUL_BITS | Karatsuba 段数 (n=8) | 合成 | レイテンシ (cycles) | 絶対時間 | DSP | FF | LUT | 推定 CP |
|-----------|------|----------|----------------------|------|---------------------|----------|-----|-----|-----|---------|
| **flat（変換前）** | — | — | 1 段 (4+4) | 成功 | **104 – 108** | 1.04 – 1.08 µs | **450** | 11,663 | 17,205 | 6.216 ns |
| **base8** | 8 | 512 | 0 段（直接乗算） | 成功 | **34** | **0.34 µs** | 900 | 2,475 | 1,811 | **5.581 ns** |
| **base4** | 4 | 256 | 1 段 (8→4) | 成功 | **91 – 95** | **0.91 – 0.95 µs** | **225** | 9,073 | 16,077 | 6.216 ns |
| **base2** | 2 | 128 | 2 段 (8→4→2) | 成功 | **124 – 132** | 1.24 – 1.32 µs | 100 | 19,096 | 46,385 | 7.180 ns |
| **base1** | 1 | 64 | 3 段 (8→4→2→1) | 成功 | **195** (min) | 1.95 µs (min) | 112 | 50,119 | 109,452 | 7.213 ns |

- レポート: [`karatsuba_base1_csynth.rpt`](karatsuba_base1_csynth.rpt) … [`karatsuba_base8_csynth.rpt`](karatsuba_base8_csynth.rpt), [`karatsuba_flat_csynth.rpt`](karatsuba_flat_csynth.rpt)
- ログ: [`hls_kara_base4.log`](hls_kara_base4.log), [`hls_kara_flat.log`](hls_kara_flat.log)
- base1 は HLS レポート上 max レイテンシが `?`（可変幅）のため min のみ記載

### 2.1 段数と設定

```
nwords = 8:

BASE=1: 8 → 4 → 2 → 1   (3 分割)   64-bit  乗算器
BASE=2: 8 → 4 → 2        (2 分割)   128-bit 乗算器
BASE=4: 8 → 4             (1 分割)   256-bit 乗算器  ← flat と同分割
BASE=8: 直接乗算          (0 分割)   512-bit 乗算器
```

---

## 3. 変換前（flat）との比較

| バリアント | レイテンシ (cycles) | vs flat | DSP | vs flat | LUT | vs flat |
|-----------|---------------------|---------|-----|---------|-----|---------|
| **flat** | 104 – 108 | — | 450 | — | 17,205 | — |
| base8 | 34 | **−67%** | 900 | +2.0× | 1,811 | **−89%** |
| **base4** | 91 – 95 | **−12〜13%** | 225 | **−50%** | 16,077 | −7% |
| base2 | 124 – 132 | +15〜22% | 100 | −78% | 46,385 | +2.7× |
| base1 | ≥195 | +81% 以上 | 112 | −75% | 109,452 | +6.4× |

**同分割数（BASE=4）では、改善後の変換版が flat をレイテンシ・DSP の両面で上回る。**

---

## 4. 改善前後の比較（BASE スイープ）

`mpx_packed_karatsuba.hpp` 最適化前（2026-06-25 午前）と改善後（同日 午後）の対比。

| バリアント | 改善前 レイテンシ | 改善後 レイテンシ | レイテンシ変化 | 改善前 DSP | 改善後 DSP |
|-----------|------------------|------------------|---------------|-----------|-----------|
| flat | 104 – 108 | 104 – 108 | 同等 | 450 | 450 |
| base8 | 73 | **34** | **−53%** | 900 | 900 |
| base4 | 187 – 191 | **91 – 95** | **−51%** | 450 | **225** |
| base2 | 412 – 511 | **124 – 132** | **−70%** | 200 | **100** |
| base1 | 822 – 1435 | **≥195** | **−76% 以上** | 160 | 112 |

### 4.1 改善内容（要約）

| 項目 | 改善前 | 改善後 |
|------|--------|--------|
| LSW-first 経路 | `phys_to_logical` / `logical_to_phys` で配列コピー | `PackedOpsLSW::mul` を直接呼び出し |
| `mul_sized` | `#pragma HLS INLINE off` → サブ関数分割 | `#pragma HLS INLINE` → 1 関数に統合 |
| ワーク配列 | `MAX_NWORDS` 固定（8 語） | テンプレート `MaxN` に比例したサイズ |
| `karatsuba_combine` | `Big2` + `unpack_full` の二段出力 | `c[]` へ直接書き込み |
| 乗算器共有 | 3 個の独立 `mul_sized<4>` モジュール | インライン化により 1 個の 256-bit 乗算器を時分割 |

---

## 5. 結果の解釈

### 5.1 レイテンシ vs リソース

```
レイテンシ (cycles, min)
  200 ┤  ● base1 (195+)
      │
  130 ┤        ● base2 (124–132)
      │
  108 ┤  ○ flat (104–108)
   95 ┤     ● base4 (91–95)
   34 ┤                    ● base8 (34)
      └──────────────────────────────── DSP
           112  225  450  900
```

- **BASE=4（flat と同分割）:** レイテンシ **91–95 cycles**（flat 比 −12%）、DSP **225**（flat の半分）。**自動変換のデフォルト設定として最もバランスが良い。**
- **BASE=8:** 最短レイテンシ **34 cycles**（flat の 1/3）。DSP 900 は 512-bit 直接乗算の代价。
- **BASE=2/1:** 深い分割は LUT が増え、base2 は CP 7.18 ns とタイミング余裕がやや減る。リソース効率重視の用途向け。

### 5.2 推奨設定（nwords=8, uint64_t）

| 目的 | 推奨 | 理由 |
|------|------|------|
| **flat 同等分割で変換後を使う** | BASE=4, MUL_BITS=256 | flat より速く DSP 半分 |
| **最低レイテンシ** | BASE=8, MUL_BITS=512 | 34 cycles、LUT も最小 |
| **DSP 最小（深分割）** | BASE=2 | 100 DSP だが flat より遅い |
| **手書き品質の参照** | flat | 104 cycles / 450 DSP（変換前ベースライン） |
| **非推奨** | BASE=1 | LUT 10 万超、レイテンシ ≥195 cycles |

---

## 6. 自動変換パイプライン

```
[再帰 mp_mul]  ──HLS──►  合成不可 (HLS 214-139)
      │
      │ build/mpx_auto_rewriter --packed-ops-type=karatsuba
      │   --kara-base-words=N  --kara-mul-bits=N×64
      ▼
[include/mpx_packed_karatsuba.hpp]  ──HLS──►  base1–8 すべて合成成功
```

- 変換ツール: [`mpx_auto_rewriter.cpp`](../mpx_auto_rewriter.cpp)
- 機能・数値一致: `bash scripts/run_rewrite_test.sh`, `bash scripts/run_configurable_test.sh`
- ヘッダ: [`include/mpx_packed_karatsuba.hpp`](../include/mpx_packed_karatsuba.hpp)

---

## 7. 参考: 旧変換版との比較

| 方式 | レイテンシ (cycles) | DSP | 備考 |
|------|---------------------|-----|------|
| **Karatsuba base8（改善後）** | **34** | 900 | 本レポート |
| **Karatsuba base4（改善後）** | **91 – 95** | **225** | 本レポート |
| Karatsuba flat（変換前） | 104 – 108 | 450 | 本レポート |
| Karatsuba conv（旧・未改善） | 172 – 176 | 900 | [`karatsuba_conv_csynth.rpt`](karatsuba_conv_csynth.rpt) |

---

## 8. 結論

1. **ヘッダ最適化により、同分割数（BASE=4）で変換後が flat を上回る** — レイテンシ 91–95 vs 104–108 cycles、DSP 225 vs 450。
2. **全分割数で大幅改善** — 特に base4 は改善前比でレイテンシ −51%、DSP −50%。
3. **BASE=8 は flat の 3 倍速**（34 vs 106 cycles）だが DSP 900 が必要。
4. **BASE≤2 は DSP 削減向け** — flat より遅くなるトレードオフあり。
5. **再帰 Karatsuba の自動変換**は、HLS 合成可能かつ手書き平坦版と同等以上の性能を達成可能。

---

## 9. 再現手順

```bash
source /home2/meltpoint/Xilinx/Vitis/2024.2/settings64.sh
cd mpx_mul_converter

# ビルド（初回）
mkdir -p build && cd build && cmake .. && make mpx_auto_rewriter && cd ..

# 数値一致（C++）
bash scripts/run_configurable_test.sh
bash scripts/run_rewrite_test.sh

# HLS 分割数スイープ
bash scripts/run_karatsuba_base_sweep.sh

# レポート数値の抽出
python3 scripts/parse_kara_reports.py hls_comparison_results
```

生成物:

- `hls_comparison_results/karatsuba_base{1,2,4,8}_csynth.rpt`
- `hls_comparison_results/karatsuba_flat_csynth.rpt`
- `hls_comparison_results/hls_kara_*.log`
- `hls_comparison_results/karatsuba_report.md`（本ファイル）
