# Comba 変換 — 分割ビット幅スイープ & 変換前比較 HLS レポート

**実施日:** 2026-06-26
**ツール:** Vitis HLS 2024.2
**ターゲット:** `xcvu9p-flga2104-2-i` (Virtex UltraScale+)
**クロック:** 10 ns (100 MHz 目標)
**変換元:** `examples/test_comba_handwritten.cpp`（`digit_t = uint64_t`, `nwords = 8` = 512-bit, **MSW-first**）

Comba（積和走査・MSW-first）の手書き実装を `mpx_auto_rewriter` で各構成へ変換し、
変換前と HLS 合成比較する。トップ関数は `test_mul_comba_handwritten`。
変換後ヘッダは schoolbook と共有の**キャリーセーブ列加算版**（`mpx_packed_*bit.hpp` /
`mpx_packed.hpp`）。各構成は機能検証（MSW 全幅乱数 vs 参照）に合格済み。

---

## 0. 要点

- **Comba 変換後の合成結果は schoolbook 変換後と完全一致**する。両者は同一の
  `PackedOps` ブロックヘッダへ変換され、相違は `LSW_FIRST`（true/false）だけ。
  MSW-first の入出力反転は**定数の添字付け替え**なので HLS が配線へ畳み込み、
  **面積・レイテンシのオーバーヘッドはゼロ**。
- 手書き Comba（変換前）は三角ループのトリップカウントが可変で、HLS レイテンシが
  **122–220 と不定**。変換はこれを**確定レイテンシ**化する最大の受益ケース。

---

## 1. スイープ結果（Comba 変換後・キャリーセーブ版）

| 構成 | 乗算器ブロック | レイテンシ (cycles) | 絶対時間 | 推定 CP | DSP | FF | LUT |
|------|---------------|---------------------|----------|---------|-----|-----|-----|
| **変換前（手書き Comba）** | 64-bit ×1 共有 | **122 – 220（可変）** | 1.22–2.20 µs | 6.678 ns | 32 | 629 | 1,233 |
| `schoolbook-16` | 64-bit | **81** | 0.81 µs | 6.040 ns | 16 | 2,509 | 2,613 |
| `schoolbook-32` | 64-bit | **81** | 0.81 µs | 6.040 ns | 16 | 2,509 | 2,613 |
| `schoolbook-64` | 64-bit | **81** | 0.81 µs | 6.040 ns | 16 | 2,509 | 2,613 |
| `schoolbook-128` | 128-bit | **34** | 0.34 µs | 6.523 ns | 50 | 3,410 | 2,975 |
| `schoolbook-256` | 256-bit | **21** | 0.21 µs | 5.575 ns | 225 | 3,500 | 3,471 |
| `default`（全幅 512-bit） | 512-bit | **12** | 0.12 µs | 4.326 ns | 900 | 2,074 | 601 |

レポート: `cbsweep_cb{16,32,64,128,256}_csynth.rpt`, `pp_cb_pre_csynth.rpt`,
`pp_cb_post_def_csynth.rpt`

> 値は schoolbook 変換後（`sweep_sb*` / `sup_*`）と同一（反転はコスト 0）。
> W=64 では `schoolbook-16/32/64` は `BW=1` にクランプされ等価（schoolbook と同様）。

---

## 2. 変換前との比較（cb-64）

| 指標 | 変換前（手書き Comba） | 変換後 `schoolbook-64` | 判定 |
|------|------------------------|------------------------|------|
| レイテンシ | 122 – 220（**可変**） | **81（確定）** | **改善（最大 −63%・確定化）** |
| 絶対時間 | 1.22 – 2.20 µs | **0.81 µs** | 改善 |
| DSP | 32 | **16** | **改善（−50%）** |
| CP | 6.678 ns | **6.040 ns** | 改善 |
| FF | **629** | 2,509 | 増加（速度・確定化の代価） |
| LUT | **1,233** | 2,613 | 増加 |

- **`schoolbook-64` は変換前を「レイテンシ・確定性・DSP・タイミング」で上回る。**
  特に **可変レイテンシ（122–220）→ 確定 81 cycle** はタイミング設計上の大きな利点。
- FF/LUT は増加する。手書き Comba は `t,u,v` の 3 語アキュムレータで逐次加算する
  **極小面積**実装だが、その代償が**可変・低速レイテンシ**である。変換後は II=1
  パイプライン化（列アキュムレータ + 乗算器パイプライン段）のため面積が増える。
  すなわち**面積↔（速度・確定性）の選択**であり、用途に応じて使い分ける。

---

## 3. DSP / レイテンシ トレードオフ

```
レイテンシ (cycles)
  220 ┤ ○ 変換前(手書きComba, 可変 122–220, DSP 32)
      │
   81 ┤ ● cb-16/32/64  (64-bit, DSP 16)   ← 確定・低DSP・低CP
   34 ┤      ● cb-128   (128-bit, DSP 50)
   21 ┤            ● cb-256 (256-bit, DSP 225)
   12 ┤                  ● default (512-bit, DSP 900)
      └──────────────────────────────────────── DSP
          16   50    225            900
```

分割ビット幅で DSP↔レイテンシを連続選択でき、**全構成が確定レイテンシ**。
変換前の不定レイテンシ（122–220）はいずれの構成でも解消される。

---

## 4. 結論

1. **キャリーセーブ最適化は Comba 変換にもそのまま適用される**（schoolbook と
   ヘッダ共有）。MSW-first の反転はコスト 0 で、変換後は schoolbook と同一性能。
2. **Comba は変換の最大受益ケース** — 変換前の**可変レイテンシ（122–220）を
   確定 81 cycle 化**し、DSP 半減・CP 改善。
3. **面積トレードオフ** — 手書き Comba（`t,u,v`）は FF/LUT 最小だが可変・低速。
   速度と確定性を取るなら変換後、極小面積を取るなら手書き、という選択になる。
4. さらに高速化するなら DSP を増やして `schoolbook-256`（21 cyc）/ `default`（12 cyc）。

---

## 5. 再現

```bash
source /home2/meltpoint/Xilinx/Vitis/2024.2/settings64.sh
cd mpx_mul_converter
for N in 16 32 64 128 256; do
  ./build/mpx_auto_rewriter examples/test_comba_handwritten.cpp \
    --packed-ops-type=schoolbook-$N --max-nwords=8 --force-msw-first --mul-macro=MUL \
    --lib-header=mpx_packed_${N}bit.hpp --output=cb_$N.cpp \
    -- -std=c++17 -DUSE_AP_INT -I<Vitis>/include -I./include
  # set_top test_mul_comba_handwritten で csynth_design
done
```
