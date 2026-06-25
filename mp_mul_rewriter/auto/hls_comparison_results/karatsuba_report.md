# Karatsuba 乗算: 分割数スイープ & 変換前後比較 — Vitis HLS 合成レポート

**実施日:** 2026-06-25  
**ツール:** Vitis HLS 2024.2.2  
**ターゲット:** `xcvu9p-flga2104-2-i` (Virtex UltraScale+)  
**クロック:** 10 ns (100 MHz 目標)  
**問題サイズ:** `digit_t = uint64_t`, `nwords = 8` (512-bit × 512-bit 相当)

---

## 1. 比較対象

| ID | ソース | トップ関数 | 説明 |
|----|--------|------------|------|
| **orig** | `test_karatsuba_handwritten.cpp` | `test_mul_karatsuba_handwritten` | 再帰 `mp_mul` による手書き Karatsuba（検出用スタブ） |
| **flat** | `test_karatsuba_handwritten_flat.cpp` | `test_mul_karatsuba_handwritten_flat` | 再帰なし・n=8 固定の手書き Karatsuba（**変換前ベースライン**） |
| **base1–8** | `test_kara_sweep_base*.cpp` + `mpx_packed_karatsuba.hpp` | `test_mul_karatsuba_configurable` | 変換後 PackedOps、`MPX_KARA_BASE_WORDS` / `MPX_MUL_BITS` を変更 |
| **conv** | `test_karatsuba_synth.cpp`（初回比較） | `test_mul_karatsuba_synth` | 旧 PackedOps 実装（`MPX_MUL_BITS` 未設定 → 512-bit 乗算器） |

合成スクリプト:
- 初回比較: [`run_karatsuba_hls_compare.tcl`](../run_karatsuba_hls_compare.tcl)
- 分割数スイープ: [`run_karatsuba_base_sweep.sh`](../run_karatsuba_base_sweep.sh)

---

## 2. 分割数スイープ結果（変換後 PackedOps）

`MPX_KARA_BASE_WORDS` を 1 / 2 / 4 / 8 に変え、`MPX_MUL_BITS = BASE × 64`（語幅 64-bit）で HLS 合成した。

| バリアント | BASE | MUL_BITS | Karatsuba 段数 (n=8) | 合成 | レイテンシ (cycles) | 絶対時間 | DSP | FF | LUT | 推定 CP |
|-----------|------|----------|----------------------|------|---------------------|----------|-----|-----|-----|---------|
| **base1** | 1 | 64 | 3 段 (8→4→2→1) | 成功 | **822 – 1435** | 8.2 – 14.4 µs | **160** | 55,400 | 134,299 | 6.216 ns |
| **base2** | 2 | 128 | 2 段 (8→4→2) | 成功 | **412 – 511** | 4.1 – 5.1 µs | **200** | 25,070 | 59,383 | 6.216 ns |
| **base4** | 4 | 256 | 1 段 (8→4) | 成功 | **187 – 191** | 1.87 – 1.91 µs | **450** | 10,650 | 22,026 | 6.216 ns |
| **base8** | 8 | 512 | 0 段（直接乗算） | 成功 | **73** | **0.73 µs** | **900** | 2,718 | 6,850 | **5.581 ns** |

レポート: [`karatsuba_base1_csynth.rpt`](karatsuba_base1_csynth.rpt) … [`karatsuba_base8_csynth.rpt`](karatsuba_base8_csynth.rpt)

### 2.1 段数と設定の対応

```
nwords = 8 の場合:

BASE=1: 8 → 4 → 2 → 1  (3 分割)  → 64-bit  乗算器 × 多数
BASE=2: 8 → 4 → 2       (2 分割)  → 128-bit 乗算器
BASE=4: 8 → 4            (1 分割)  → 256-bit 乗算器
BASE=8: 直接乗算         (0 分割)  → 512-bit 乗算器
```

---

## 3. 変換前（flat）との比較

| バリアント | 種別 | レイテンシ (cycles) | vs flat | DSP | vs flat | LUT | vs flat |
|-----------|------|---------------------|---------|-----|---------|-----|---------|
| **flat（手書き）** | 変換前 | **104 – 108** | — | **450** | — | **17,205** | — |
| base8 | 変換後 | 73 | **−32%（速い）** | 900 | +2.0× | 6,850 | **−60%** |
| base4 | 変換後 | 187 – 191 | +76% | 450 | 同等 | 22,026 | +28% |
| conv（旧） | 変換後 | 172 – 176 | +64% | 900 | +2.0× | 36,588 | +2.1× |
| base2 | 変換後 | 412 – 511 | +3.9× | 200 | −56% | 59,383 | +3.4× |
| base1 | 変換後 | 822 – 1435 | +8〜13× | 160 | −64% | 134,299 | +7.8× |
| orig（再帰） | 変換前 | — | 合成不可 | — | — | — | — |

- **flat レポート:** [`karatsuba_flat_csynth.rpt`](karatsuba_flat_csynth.rpt)
- **conv レポート:** [`karatsuba_conv_csynth.rpt`](karatsuba_conv_csynth.rpt)

### 3.1 再帰版（orig）の失敗

```
ERROR: [HLS 214-139] Recursive function calls are not supported:
  mp_mul(...) -> mp_mul(...) -> ...
```

典型的な CPU 向け再帰 Karatsuba は Vitis HLS では合成不可。変換パイプラインの目的はここを **非再帰固定構造**へ置換すること。

---

## 4. 結果の解釈

### 4.1 レイテンシ vs リソースのトレードオフ

```
         レイテンシ (cycles, min)
  1600 ┤                              ● base1 (822–1435)
       │
   500 ┤                    ● base2 (412–511)
       │
   200 ┤         ● base4 (187)  ● conv (172)
       │
   100 ┤  ○ flat (104)              ● base8 (73)
       └────────────────────────────────── DSP
            160   200   450   900
```

- **BASE を小さくするほど** Karatsuba 段数が増え、**レイテンシ・LUT が悪化**（base1 は最大 1435 cycles、LUT 13 万超）
- **BASE=8（直接 512-bit 乗算）** は **flat より 32% 速い**（73 vs 106 cycles）が、DSP は 2 倍（900）
- **BASE=4** は DSP 450 で flat と同数だが、**レイテンシは約 1.8×**（PackedOps の combine / pack オーバーヘッド）
- **BASE=2/1** は DSP 削減にはなるが、**深い Karatsuba + 狭い乗算器の連鎖**によりレイテンシが支配的に悪化。HLS 向きではない

### 4.2 flat が BASE=4 より速い理由

1. **手書き平坦版**は n=8 専用に 1 段 Karatsuba + `ap_uint<256>` 直接乗算（4 語 × 64 bit）に最適化済み
2. **PackedOps base4** は汎用レイヤ（`phys_to_logical` / `logical_to_phys`、`ap_int` combine 等）を含み、HLS が余分なロジックを生成
3. 初回 **conv** は `MPX_MUL_BITS` 未設定で 512-bit 乗算器（900 DSP）が使われ、base4 より遅く大きい

### 4.3 推奨設定（nwords=8, uint64_t）

| 目的 | 推奨 | 理由 |
|------|------|------|
| **最低レイテンシ** | BASE=8, MUL_BITS=512 | 73 cycles、LUT も最小。DSP 900 は許容できる場合 |
| **flat に近い DSP 効率** | BASE=4, MUL_BITS=256 | DSP 450（flat 同等）。レイテンシは flat の ~1.8× |
| **手書き品質** | flat（変換前） | 106 cycles / 450 DSP のバランスが最良 |
| **避ける** | BASE=1, 2 | レイテンシ・LUT 共に非効率 |

---

## 5. 自動変換パイプラインの位置づけ

```
[再帰 mp_mul 手書き orig]  ──HLS──►  合成不可 (214-139)
        │
        │ mpx_auto_rewriter --packed-ops-type=karatsuba
        │   --kara-base-words=N  --kara-mul-bits=N×64
        ▼
[PackedOps::mul]  ──HLS──►  合成可能（base1–8 すべて成功）
        │
        ├─ BASE=8 → レイテンシ最短（flat 超え）
        ├─ BASE=4 → DSP 効率良好（flat 比レイテンシ犠牲）
        └─ BASE≤2 → 非推奨（深い分割で大幅悪化）
```

- **検出・数値一致:** [`run_karatsuba_rewrite_test.sh`](../run_karatsuba_rewrite_test.sh) 済み
- **設定マクロ:** `MPX_KARA_BASE_WORDS`, `MPX_MUL_BITS`（[`mpx_packed_karatsuba.hpp`](../mpx_packed_karatsuba.hpp)）

---

## 6. 参考: 他方式との比較（同一デバイス・10 ns）

| 方式 | レイテンシ (cycles) | DSP | 出典 |
|------|---------------------|-----|------|
| Converted (ap_uint pack, 学校式) | 32 | 900 | [`converted_csynth.rpt`](converted_csynth.rpt) |
| **Karatsuba flat（変換前）** | **106** | **450** | 本レポート |
| **Karatsuba base8（変換後）** | **73** | 900 | 本レポート |
| **Karatsuba base4（変換後）** | **189** | 450 | 本レポート |
| Karatsuba conv（旧変換後） | 174 | 900 | 本レポート |

512-bit 多倍長乗算では、**学校式 Converted がレイテンシ最短**だが DSP 900。Karatsuba flat / base4 は **DSP 半分でレイテンシ 3〜6×**。base8 は学校式に近い速度だが DSP は同量。

---

## 7. 結論

1. **再帰 Karatsuba（orig）は合成不可** — 非再帰 PackedOps への変換は必須。
2. **分割数（BASE）の選択が性能を大きく左右する** — BASE=8 で flat を上回るレイテンシ、BASE=4 で flat と同等 DSP、BASE≤2 は非効率。
3. **変換後でも BASE=8 なら手書き flat より速い**（73 vs 106 cycles）。ただし DSP 2 倍。
4. **BASE=4 が汎用変換のデフォルトとして妥当** — DSP 450 で合成可能。手書き flat には及ばないが、旧 conv（512-bit 乗算器）より改善。
5. **今後の改善:** `#pragma HLS DATAFLOW` による 3 部分積並列化、combine ロジックの `ap_uint` 化、BASE と `nwords` の自動チューニング。

---

## 8. 再現手順

```bash
source /home2/meltpoint/Xilinx/Vitis/2024.2/settings64.sh
cd mp_mul_rewriter/auto

# 機能検証（C++ シミュレーション）
bash run_karatsuba_rewrite_test.sh

# 分割数スイープ HLS 合成
bash run_karatsuba_base_sweep.sh

# レポート数値の抽出
python3 parse_kara_reports.py hls_comparison_results
```

生成物:
- `hls_comparison_results/karatsuba_base{1,2,4,8}_csynth.rpt`
- `hls_comparison_results/karatsuba_flat_csynth.rpt`
- `hls_comparison_results/hls_kara_*.log`
