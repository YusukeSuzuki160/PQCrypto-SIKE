# Vitis HLS 実行ガイド

本リポジトリには複数の Vitis HLS プロジェクト（SIKE 本体・各種変換ツールの合成比較）が
含まれる。本書はそれらの **共通の実行方法** をルートにまとめたもの。
プロジェクト固有の手順は各ディレクトリの `README.md` を参照。

---

## 1. 環境

| 項目 | パス | 上書き用環境変数 |
|------|------|-----------------|
| Vitis HLS バイナリ | `/home2/meltpoint/Xilinx/Vitis_HLS/2024.2/bin/vitis_hls` | `VITIS_HLS_BIN` |
| HLS インクルード（`ap_int.h` 等／g++ 用） | `/home2/meltpoint/Xilinx/Vitis/2024.2/include` | `VITIS_HLS_INCLUDE` |
| autopilot ヘッダ | `/home2/meltpoint/Xilinx/Vitis/2024.2/common/technology/autopilot` | `VITIS_HLS_AUTOPILOT` |
| settings スクリプト | `/home2/meltpoint/Xilinx/Vitis_HLS/2024.2/settings64.sh` | — |

- インストール済みバージョン: **2024.2（既定）**, 2023.1, 2022.2。
- 多くの run スクリプトは `vitis_hls` を**フルパスで直接呼ぶ**ため、通常は `settings64.sh` の
  source は不要。GUI や `vitis_hls` を PATH で使いたい場合のみ source する：

```bash
source /home2/meltpoint/Xilinx/Vitis_HLS/2024.2/settings64.sh
```

---

## 2. 基本の実行方法

### 2.1 バッチ（TCL スクリプト）— 推奨

```bash
vitis_hls -f run_xxx.tcl          # スクリプトに従い csim/csynth/cosim/export を実行
```

ログを残す場合：

```bash
vitis_hls -f run_xxx.tcl 2>&1 | tee hls_xxx.log
```

### 2.2 対話シェル / GUI

```bash
vitis_hls            # Tcl 対話シェル
vitis_hls -p <proj>  # 既存プロジェクトを GUI で開く（X11 必要）
```

---

## 3. TCL スクリプトの構造（共通テンプレート）

リポジトリ内の TCL はほぼ同じ骨格を持つ。

```tcl
open_project -reset <proj_name>          ;# プロジェクト作成（-reset で再生成）
set_top      <top_function>              ;# 合成するトップ関数
add_files    <src.cpp>                   ;# ソース（必要数）
add_files    <header.hpp>
add_files -tb <testbench.cpp>            ;# テストベンチ（csim/cosim 用・任意）

open_solution -reset solution1 -flow_target vivado
set_part      {xcvu9p-flga2104-2-i}      ;# ターゲットデバイス（下表参照）
create_clock  -period 10 -name default   ;# 目標クロック周期 [ns]

csim_design                              ;# C シミュレーション（機能検証・任意）
csynth_design                            ;# C 合成（必須・レポート生成）
cosim_design                             ;# C/RTL協調シミュレーション（任意・重い）
export_design -format ip_catalog         ;# IP エクスポート（任意）

close_project                            ;# または exit
```

### ターゲットデバイス

| デバイス | 用途 |
|----------|------|
| `xcvu9p-flga2104-2-i` | 各変換ツールの合成比較（ntt / mpx / montgomery / mp_mul） |
| `xcvu29p-fsga2577-2L-e` | `SIKEp503_HLS` の KEM 本体 |
| `xc7z020clg484-1` | 一部の小規模テスト |

クロックは全プロジェクト共通で **10 ns（100 MHz 目標）**。

---

## 4. プロジェクト別の実行方法

### 4.1 SIKE p503 KEM 本体 — `SIKEp503_HLS/`

```bash
cd SIKEp503_HLS
vitis_hls -f run_hls.tcl              # 標準実装（csim→csynth→cosim→export）
vitis_hls -f run_optimized_hls.tcl   # 最適化実装
vitis_hls -f run_sim.tcl             # シミュレーションのみ
```
トップ関数 `sikep503_kem_enc_hw`、デバイス `xcvu29p-fsga2577-2L-e`。

### 4.2 変換ツールの合成比較（変換前 vs 変換後）

各 `hls_comparison/` には、変換前後を合成して比較する一括スクリプトがある。

```bash
# NTT 変換ツール
cd ntt_converter/hls_comparison && ./run_comparison.sh

# 多倍長乗算（pack）変換ツール
cd mpx_mul_converter/hls_comparison && ./run_comparison.sh

# モンゴメリ乗算変換ツール
cd montgomery_converter/hls_comparison && ./run_comparison.sh
```

`run_comparison.sh` の動作：
1. `vitis_hls -f run_<x>_orig.tcl`（変換前）を合成 → `hls_<x>_orig.log`
2. `vitis_hls -f run_<x>_converted.tcl`（変換後）を合成 → `hls_<x>_converted.log`
3. `python3 parse_*_reports.py` でレポートを解析し、Markdown 比較表を生成

個別に回す場合：

```bash
cd ntt_converter/hls_comparison
vitis_hls -f run_ntt_orig.tcl
vitis_hls -f run_ntt_converted.tcl
python3 parse_ntt_reports.py
```

### 4.3 多倍長乗算 rewriter のスイープ — `mp_mul_rewriter/auto/`

Karatsuba の基数スイープや Comba/iface のビット幅別合成など、多数の TCL を備える。

```bash
cd mp_mul_rewriter/auto
./run_karatsuba_base_sweep.sh        # 基数 base1/2/4/8/flat を一括合成
vitis_hls -f run_comba_bits64.tcl    # 個別合成の例
```

ルート直下の `proj_kara_base{1,2,4,8}` / `proj_kara_flat` はこれらで生成された
合成済みプロジェクト。

---

## 5. ソフトウェア検証（合成前の機能確認・g++）

`ap_int` を使うコードは、Vitis を起動せずに **g++ で機能検証**できる（高速）。
インクルードパスに HLS ヘッダと autopilot を渡す。

```bash
g++ -O2 -std=c++17 -DAP_INT_MAX_W=4096 \
    -I/home2/meltpoint/Xilinx/Vitis/2024.2/include \
    -I/home2/meltpoint/Xilinx/Vitis/2024.2/common/technology/autopilot \
    your_test.cpp -o your_test && ./your_test
```

例（NTT 変換前後のビット一致検証）：

```bash
cd ntt_converter/hls_comparison
g++ -O2 -std=c++17 -I/home2/meltpoint/Xilinx/Vitis/2024.2/include \
    verify_equiv.cpp -o verify_equiv && ./verify_equiv
```

> `-DAP_INT_MAX_W=4096` は 64bit を超える `ap_int` 幅を使う場合に必要。
> NTT のように 128bit までなら既定（1024）で足りるが、付けておくと安全。

---

## 6. 出力・レポートの場所

合成後、プロジェクト配下にレポートが生成される：

```
<proj>/solution1/syn/report/<top>_csynth.rpt   # 性能・面積の主要レポート
<proj>/solution1/syn/verilog/                  # 生成 RTL（Verilog）
<proj>/solution1/syn/vhdl/                      # 生成 RTL（VHDL）
```

主要指標の読み方：
- **Timing**: `Estimated` がクロック周期推定。`Target`(10ns) を下回れば制約達成。
- **Latency / Interval**: レイテンシとスループット（II）。
- **Utilization**: LUT / FF / DSP / BRAM の使用量。
- ログ中の `Pipelining result : Target II = .., Final II = .., Depth = ..` で
  内側ループの達成 II を確認できる（`*.rpt` には直接出ないためログを参照）。

---

## 7. トラブルシュート

| 症状 | 対処 |
|------|------|
| `vitis_hls not found` | `VITIS_HLS_BIN` を実環境のパスに設定。`ls /home2/meltpoint/Xilinx/Vitis_HLS/*/bin/vitis_hls` で確認 |
| `ap_int.h: No such file`（g++） | `-I.../Vitis/2024.2/include` を付与（`Vitis_HLS/.../include` ではなく `Vitis/...` 側にある） |
| ライセンスエラー | `settings64.sh` を source 後に再実行。ネットワーク/サーバ系ライセンスを確認 |
| 合成が古い結果を返す | TCL の `open_project -reset` / `open_solution -reset` で再生成。または `proj_*` を削除 |
| cosim が非常に遅い | 機能確認だけなら `csim_design` + g++ 検証で代替し、`cosim_design` 行はコメントアウト |
| GUI が開かない | X11 転送（`ssh -X`）が必要。バッチ運用（`-f`）なら不要 |

---

## 関連ドキュメント

| パス | 内容 |
|------|------|
| `SIKEp503_HLS/` | SIKE p503 KEM の HLS 実装 |
| `ntt_converter/README.md`, `ntt_converter/ALGORITHM.md` | NTT 自動変換ツールと最適化の詳細 |
| `mpx_mul_converter/`, `mp_mul_rewriter/`, `montgomery_converter/` | 各変換ツール |
| `*/hls_comparison/*_comparison_report.md` | 変換前後の合成比較結果 |
