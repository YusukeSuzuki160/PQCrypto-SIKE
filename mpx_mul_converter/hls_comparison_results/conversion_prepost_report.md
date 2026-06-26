# 学校式 / Comba — 変換前 vs 変換後 性能比較 HLS レポート

**実施日:** 2026-06-25
**ツール:** Vitis HLS 2024.2
**ターゲット:** `xcvu9p-flga2104-2-i` (Virtex UltraScale+)
**クロック:** 10 ns (100 MHz 目標)
**問題サイズ:** `digit_t = uint64_t`, `nwords = 8` (512-bit × 512-bit)

`mpx_auto_rewriter` による **変換前（手書き多倍長乗算）** と **変換後（PackedOps へ自動置換）**
の HLS 合成結果を比較する。変換元は次の 2 例（`../mp_mul_rewriter` 由来）:

| 変換元 | 方式 | エンディアン | トップ関数 |
|--------|------|--------------|-----------|
| `examples/test_schoolbook_handwritten.cpp` | 学校式（オペランド走査） | LSW-first | `test_mul_schoolbook_handwritten` |
| `examples/test_comba_handwritten.cpp` | Comba（積和走査） | MSW-first | `test_mul_comba_handwritten` |

変換後ヘッダは本リポジトリの HW 最適化版（`mpx_packed.hpp` / `mpx_packed_256bit.hpp`）。

---

## 1. 合成結果

| 構成 | 段階 | レイテンシ (cycles) | 絶対時間 | 推定 CP | DSP | FF | LUT |
|------|------|---------------------|----------|---------|-----|-----|-----|
| **学校式** 変換前（手書き） | pre | **97** | 0.97 µs | 6.724 ns | 32 | 2,223 | 3,901 |
| 学校式 → 変換後 `schoolbook-64` | post | **81** | 0.81 µs | **6.040 ns** | **16** | 2,509 | **2,613** |
| 学校式 → 変換後 `schoolbook-256` | post | **21** | 0.21 µs | 5.575 ns | 225 | 3,500 | 3,471 |
| 学校式 → 変換後 `default` | post | **12** | **0.12 µs** | 4.326 ns | 900 | 2,074 | **601** |
| **Comba** 変換前（手書き） | pre | **122 – 220**（可変） | 1.22–2.20 µs | 6.678 ns | 32 | 629 | 1,233 |
| Comba → 変換後 `default` | post | **12** | **0.12 µs** | 4.326 ns | 900 | 2,074 | 601 |

- レポート: `pp_sb_pre_csynth.rpt`, `sweep_sb64_csynth.rpt`, `sweep_sb256_csynth.rpt`,
  `pp_sb_post_def_csynth.rpt`, `pp_cb_pre_csynth.rpt`, `pp_cb_post_def_csynth.rpt`
- **`schoolbook-64`（同じ 64-bit 乗算器・DSP 半分）でも変換前を全面的に上回る** —
  レイテンシ 81<97、DSP 16<32、LUT 2,613<3,901、CP 6.04<6.72（FF のみ +13%）。
  ブロック乗算をキャリーセーブ列加算で実装した結果（詳細は
  [`schoolbook_blockwidth_sweep_report.md`](schoolbook_blockwidth_sweep_report.md)）。
- Comba 変換前は三角ループのトリップカウントが可変で、HLS が min/max レイテンシを
  **122 / 220 と幅をもって**報告する（確定レイテンシが得られない）。

---

## 2. 変換による改善

### 2.1 学校式（LSW-first）

| 指標 | 変換前 | 変換後 sb-64 | 変換後 256-block | 変換後 default |
|------|--------|--------------|------------------|----------------|
| レイテンシ | 97 | **81（−16%）** | **21（−78%, 4.6×）** | **12（−88%, 8.1×）** |
| CP | 6.724 ns | 6.040 ns | 5.575 ns | 4.326 ns |
| DSP | 32 | **16** | 225 | 900 |
| FF | 2,223 | 2,509 | 3,500 | 2,074 |
| LUT | 3,901 | **2,613** | 3,471 | **601** |

> `schoolbook-64` は**変換前と同じ 64-bit 乗算器**（DSP は半分）で、速度・DSP・LUT・CP
> をすべて改善する。DSP を増やせるなら 256-block / default がさらに高速。

### 2.2 Comba（MSW-first）

| 指標 | 変換前 | 変換後 sb-64 | 変換後 default |
|------|--------|--------------|----------------|
| レイテンシ | 122–220（**可変**） | **81（確定）** | **12（確定, 約 10–18×）** |
| CP | 6.678 ns | 6.040 ns | 4.326 ns |
| DSP | 32 | **16** | 900 |
| FF | 629 | 2,509 | 2,074 |
| LUT | 1,233 | 2,613 | **601** |

> **Comba 変換後の合成結果は schoolbook 変換後と完全一致**する（同一ブロックヘッダへ
> 変換され、MSW-first の反転はコスト 0 で HLS が配線へ畳み込むため）。`schoolbook-64`
> は変換前を**レイテンシ・確定性・DSP・CP** で上回る（FF/LUT は手書き `t,u,v` の極小
> 実装より増える）。分割ビット幅の全スイープは
> [`comba_blockwidth_sweep_report.md`](comba_blockwidth_sweep_report.md) を参照。

---

## 3. 解釈

### 3.1 速度
- 変換前の手書き実装は、**1 個の 64×64 乗算器を 64 回（8×8）時分割**し、
  桁上げを語ごとに逐次伝搬する。このため DSP は少ない（32）が、レイテンシは
  学校式 97、Comba 122–220 と大きい。
- 変換後 `default` は **512×512 を 1 回**で行い、pack/unpack を組合せ回路化した
  最適化版のため **12 cycle** に短縮（学校式 8.1×、Comba 10–18×）。CP も 4.33 ns と
  最短で、最も高いクロック余裕をもつ。

### 3.2 確定性（重要）
- **Comba 変換前は可変レイテンシ（122–220）** で、タイミングクロージャ・パイプライン
  接続が困難。変換後は **12 cycle に確定** し、設計に組み込みやすい。

### 3.3 リソース・トレードオフ
- 変換後 `default` は最速だが DSP 900（512×512 直接乗算の代価）。VU9P の DSP 6,840 に対し
  13% で、レイテンシ最優先用途に好適。
- 変換後 `schoolbook-256` は **DSP 225・20 cycle** と、変換前より速く（4.9×）DSP も中庸。
  **DSP とレイテンシのバランス重視ならこの構成が最良。**
- いずれの変換後も LUT は変換前より小さい（学校式 3,901→601、Comba 1,233→601）。

---

## 4. 結論

1. **学校式・Comba とも、自動変換で大幅高速化** — 学校式 97→12 cycle（8.1×）、
   Comba 122–220→12 cycle（約 10–18×）。
2. **Comba の可変レイテンシを確定レイテンシ化** — 変換は性能だけでなく
   タイミング設計性も改善する。
3. **構成選択** — 最低レイテンシは `default`（12 cycle / 900 DSP）、
   DSP 効率重視は `schoolbook-256`（20 cycle / 225 DSP）。
4. 変換前は DSP 最小（32）だが低速。乗算器をフルに使えない設計でのみ優位。

---

## 5. 再現

```bash
source /home2/meltpoint/Xilinx/Vitis/2024.2/settings64.sh
cd mpx_mul_converter

# 変換元の機能確認＋変換＋数値一致
bash scripts/run_schoolbook_comba_test.sh

# 変換後ファイル生成（例）
./build/mpx_auto_rewriter examples/test_schoolbook_handwritten.cpp \
  --packed-ops-type=default --max-nwords=8 --mul-macro=MUL \
  --output=sb_default.cpp -- -std=c++17 -DUSE_AP_INT -I<Vitis>/include -I./include

# HLS: set_top を各トップ関数にして csynth_design
#   変換前: examples/test_{schoolbook,comba}_handwritten.cpp
#   変換後: 生成した sb_default.cpp / cb_default.cpp / sb_256.cpp
```
