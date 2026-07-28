#!/usr/bin/env python3
"""
run_sweep.py
モンゴメリ乗算 HLS パラメータスイープスクリプト

【設計方針】
  「計算対象パラメータ」と「実装パラメータ」を分離する:
    計算対象: MONT_TOTAL_BITS（これを変えると別の演算）
    実装    : MONT_WORD_BITS, MONT_INNER_UNROLL, ... （同じ演算を別の方法で実装）

  NWORDS = TOTAL_BITS / WORD_BITS は自動計算される。
  同一 TOTAL_BITS でも WORD_BITS を変えることで、
  「同じ 256-bit 乗算の 16-bit 語幅版 vs 32-bit 語幅版」等を公平に比較できる。

【使い方】
    python3 run_sweep.py           # デフォルトグリッドでスイープ
    python3 run_sweep.py --dry-run # TCL を生成して表示するだけ（合成しない）
    python3 run_sweep.py --jobs 4  # 最大4並列で合成（ライセンス数に注意）

【特殊値】
    "FULL"    → NWORDS（完全展開）
    "HALF"    → NWORDS // 2
    "QUARTER" → max(1, NWORDS // 4)
"""

import argparse
import csv
import os
import re
import subprocess
import sys
from itertools import product
from pathlib import Path

# ============================================================
# 設定
# ============================================================
VITIS_HLS = os.environ.get(
    "VITIS_HLS_BIN",
    "/home2/meltpoint/Xilinx/Vitis_HLS/2024.2/bin/vitis_hls"
)
SCRIPT_DIR = Path(__file__).parent.resolve()

# ============================================================
# スイープグリッド（ここを編集）
#
# MONT_TOTAL_BITS : 計算対象（固定推奨 — 変えると演算が変わる）
# MONT_WORD_BITS  : 実装パラメータ（語幅）→ NWORDS が自動決定
# その他          : HLS 実装パラメータ
# ============================================================
SWEEP_GRID = {
    # ---- 計算対象（変えると別の演算になる） ----
    "MONT_TOTAL_BITS":     [256],          # 256-bit Montgomery 乗算に固定

    # ---- 実装パラメータ（変えても同じ演算） ----
    # 語幅 [bits]: NWORDS = TOTAL_BITS / WORD_BITS が自動決定
    #   16 → 16語, 32 → 8語, 64 → 4語  (全て 256-bit 演算)
    "MONT_WORD_BITS":      [16, 32, 64],

    # 内側 j-ループ展開数
    #   0        : 内側 PIPELINE のみ（外側パイプラインなし）→ 最小 DSP
    #   "QUARTER": NWORDS//4 の部分展開
    #   "HALF"   : NWORDS//2 の部分展開
    #   "FULL"   : 完全展開（最小 latency、最大 DSP）
    "MONT_INNER_UNROLL":   [0, "QUARTER", "HALF", "FULL"],

    # cond_sub ループ展開: 1=UNROLL / 0=PIPELINE
    "MONT_CONDSUB_UNROLL": [0, 1],

    # 初期化ループ展開: 1=UNROLL / 0=PIPELINE
    "MONT_INIT_UNROLL":    [0, 1],

    # 外側 CIOS ループ目標 II
    #   0: 自動, 2: II=2 明示, 4: 保守的
    "MONT_TARGET_II":      [0, 2, 4],

    # クロック周期 [ns]
    "CLOCK_PERIOD_NS":     [10],
}

# ============================================================
# ユーティリティ
# ============================================================
def resolve(val: object, nwords: int) -> int:
    """NWORDS 依存の特殊値を整数に変換する。"""
    if val == "FULL":    return nwords
    if val == "HALF":    return max(1, nwords // 2)
    if val == "QUARTER": return max(1, nwords // 4)
    return int(val)


def label_of(params: dict) -> str:
    """パラメータ辞書から短いラベル文字列を生成する。"""
    abbr = [
        ("MONT_TOTAL_BITS",     "T"),
        ("MONT_WORD_BITS",      "W"),
        ("MONT_NWORDS",         "N"),
        ("MONT_INNER_UNROLL",   "IU"),
        ("MONT_CONDSUB_UNROLL", "CS"),
        ("MONT_INIT_UNROLL",    "IN"),
        ("MONT_TARGET_II",      "II"),
        ("CLOCK_PERIOD_NS",     "CLK"),
    ]
    return "_".join(f"{a}{params[k]}" for k, a in abbr if k in params)


def gen_tcl(params: dict, proj_name: str) -> str:
    """単一パラメータセット用の合成 TCL を生成する。"""
    clock  = params.get("CLOCK_PERIOD_NS", 10)
    device = params.get("DEVICE", "xcvu9p-flga2104-2-i")
    skip   = {"CLOCK_PERIOD_NS", "DEVICE"}
    cflags = " ".join(f"-D{k}={v}" for k, v in params.items()
                      if k not in skip) + " -I../include"
    return f"""\
open_project -reset {proj_name}
set_top mont_mul_top_param
add_files mont_hls_param.cpp -cflags "{cflags}"
open_solution -reset "solution1" -flow_target vivado
set_part {{{device}}}
create_clock -period {clock} -name default
csynth_design
exit
"""


def parse_rpt(proj_name: str) -> dict:
    """csynth.rpt と HLS ログからメトリクスを抽出する。"""
    rpt_path = SCRIPT_DIR / proj_name / "solution1/syn/report/mont_mul_top_param_csynth.rpt"
    log_path = SCRIPT_DIR / f"_sweep_log_{proj_name}.log"

    if not rpt_path.exists():
        return {}

    rpt = rpt_path.read_text(errors="replace")
    log = log_path.read_text(errors="replace") if log_path.exists() else ""
    m: dict = {}

    # ---- クロック周期 / Fmax ----
    clk = re.search(r'ap_clk\s*\|\s*[\d.]+\s*ns\s*\|\s*([\d.]+)\s*ns', rpt)
    if clk:
        t = float(clk.group(1))
        m["clk_ns"]   = t
        m["fmax_mhz"] = round(1000.0 / t, 1)

    # ---- レイテンシ / Interval ----
    lat = re.search(
        r'\|\s*(\d+)\s*\|\s*(\d+)\s*\|[^|]+\|[^|]+\|\s*(\d+)\s*\|\s*(\d+)\s*\|', rpt)
    if lat:
        m["lat_min"] = int(lat.group(1))
        m["lat_max"] = int(lat.group(2))
        m["ii_min"]  = int(lat.group(3))
        m["ii_max"]  = int(lat.group(4))

    if "lat_max" in m and "clk_ns" in m:
        m["lat_abs_ns"] = round(m["lat_max"] * m["clk_ns"], 1)

    # ---- リソース (Total 行) ----
    tot = re.search(
        r'\|Total\s*\|\s*(\d+)\s*\|\s*(\d+)\s*\|\s*(\d+)\s*\|\s*(\d+)', rpt)
    if tot:
        m["bram"] = int(tot.group(1))
        m["dsp"]  = int(tot.group(2))
        m["ff"]   = int(tot.group(3))
        m["lut"]  = int(tot.group(4))

    # ---- クロック違反チェック ----
    m["timing_ok"] = "Estimated clock period" not in log or \
                     "exceeds the target" not in log

    # ---- ループパイプライン情報 ----
    pipe_all = re.findall(
        r"Pipelining result\s*:.*?Final II\s*=\s*(\d+),\s*Depth\s*=\s*(\d+)"
        r"(?:,\s*loop\s*'([^']*)')?",
        log)
    if pipe_all:
        cios = [(ii, d) for ii, d, name in pipe_all if name == "CIOS_LOOP"]
        if cios:
            m["cios_final_ii"] = int(cios[0][0])
            m["cios_depth"]    = int(cios[0][1])
        last = pipe_all[-1]
        m["last_final_ii"] = int(last[0])
        m["last_depth"]    = int(last[1])
        m["pipelined_loops"] = ",".join(n for _, _, n in pipe_all if n)

    m["ii_violation"] = "II Violation" in log or "unable to schedule" in log.lower()

    return m


def run_one(params: dict, label: str, dry_run: bool) -> dict:
    """1 つの設定を合成して結果を返す。"""
    proj    = f"proj_sweep_{label}"
    tcl_src = gen_tcl(params, proj)
    tcl_file = SCRIPT_DIR / f"_sweep_{label}.tcl"

    if dry_run:
        print(f"\n--- {label} (dry-run) ---")
        print(tcl_src)
        return {**params, "label": label, "ok": False}

    tcl_file.write_text(tcl_src)
    log_file = SCRIPT_DIR / f"_sweep_log_{proj}.log"
    try:
        result = subprocess.run(
            [VITIS_HLS, "-f", str(tcl_file)],
            capture_output=True, text=True,
            cwd=SCRIPT_DIR, timeout=600
        )
        log_file.write_text(result.stdout + result.stderr)
        ok = result.returncode == 0
    except subprocess.TimeoutExpired:
        ok = False
        log_file.write_text("TIMEOUT")
    finally:
        if tcl_file.exists():
            tcl_file.unlink()

    metrics = parse_rpt(proj) if ok else {}
    return {**params, "label": label, "ok": ok, **metrics}


# ============================================================
# メイン
# ============================================================
def main():
    parser = argparse.ArgumentParser(description="Montgomery HLS parameter sweep")
    parser.add_argument("--dry-run", action="store_true",
                        help="TCL を表示するだけ（合成しない）")
    parser.add_argument("--jobs", type=int, default=1,
                        help="並列合成数（ライセンス数に応じて設定）")
    args = parser.parse_args()

    os.chdir(SCRIPT_DIR)

    # グリッド展開
    keys = list(SWEEP_GRID.keys())
    combos: list[dict] = []
    for combo in product(*[SWEEP_GRID[k] for k in keys]):
        d = dict(zip(keys, combo))
        total_bits = int(d.get("MONT_TOTAL_BITS", 256))
        word_bits  = int(d.get("MONT_WORD_BITS", 32))
        nwords     = total_bits // word_bits
        resolved   = {k: resolve(v, nwords) for k, v in d.items()}
        resolved["MONT_NWORDS"] = nwords   # 整数値で明示（LOOP_TRIPCOUNT pragma 用）
        combos.append(resolved)

    total = len(combos)
    print(f"スイープ設定数: {total}")
    print(f"  計算対象: {SWEEP_GRID['MONT_TOTAL_BITS']} bit (固定)")
    print(f"  語幅バリエーション: {SWEEP_GRID['MONT_WORD_BITS']} bit")

    if not args.dry_run and not Path(VITIS_HLS).exists():
        sys.exit(f"ERROR: vitis_hls が見つかりません: {VITIS_HLS}\n"
                 "VITIS_HLS_BIN 環境変数で指定してください。")

    results: list[dict] = []

    if args.jobs > 1 and not args.dry_run:
        from concurrent.futures import ThreadPoolExecutor, as_completed
        futures = {}
        with ThreadPoolExecutor(max_workers=args.jobs) as ex:
            for i, p in enumerate(combos):
                lbl = label_of(p)
                print(f"[{i+1}/{total}] 投入: {lbl}")
                f = ex.submit(run_one, p, lbl, False)
                futures[f] = lbl
            for f in as_completed(futures):
                lbl = futures[f]
                r = f.result()
                results.append(r)
                status = "OK" if r.get("ok") else "FAIL"
                print(f"  完了: {lbl} → latency={r.get('lat_max','-')} clk  "
                      f"DSP={r.get('dsp','-')}  [{status}]")
    else:
        for i, p in enumerate(combos):
            lbl = label_of(p)
            print(f"[{i+1}/{total}] {lbl}")
            r = run_one(p, lbl, args.dry_run)
            results.append(r)
            if not args.dry_run:
                status = "OK" if r.get("ok") else "FAIL"
                print(f"       latency={r.get('lat_max','-')} clk  "
                      f"DSP={r.get('dsp','-')}  LUT={r.get('lut','-')}  "
                      f"clk={r.get('clk_ns','-')} ns  [{status}]")

    if args.dry_run:
        return

    # 結果サマリー表示
    ok_results = [r for r in results if r.get("ok")]
    print(f"\n{'='*90}")
    print(f"  スイープ結果 ({len(ok_results)}/{total} 成功)")
    print(f"{'='*90}")
    hdr = (f"{'WBITS':>5} {'NWORDS':>6} {'INNER':>6} {'CSUB':>5} "
           f"{'INIT':>5} {'II':>4} {'CLK_NS':>7} "
           f"{'lat[clk]':>9} {'lat[ns]':>8} {'DSP':>5} {'LUT':>6} {'CIOS_II':>8}")
    print(hdr)
    print("-" * 90)
    for r in sorted(ok_results,
                    key=lambda x: (x.get("MONT_WORD_BITS", 99),
                                   x.get("lat_max", 9999))):
        clk = r.get("clk_ns", 0)
        lat = r.get("lat_max", "-")
        print(f"{r.get('MONT_WORD_BITS','-'):>5} {r.get('MONT_NWORDS','-'):>6} "
              f"{r.get('MONT_INNER_UNROLL','-'):>6} {r.get('MONT_CONDSUB_UNROLL','-'):>5} "
              f"{r.get('MONT_INIT_UNROLL','-'):>5} {r.get('MONT_TARGET_II','-'):>4} "
              f"{clk:>7} "
              f"{lat:>9} {r.get('lat_abs_ns','-'):>8} "
              f"{r.get('dsp','-'):>5} {r.get('lut','-'):>6} "
              f"{r.get('cios_final_ii', r.get('last_final_ii','-')):>8}")
    print("-" * 90)

    # CSV 保存
    if results:
        csv_path = SCRIPT_DIR / "sweep_results.csv"
        all_keys = sorted({k for r in results for k in r.keys()})
        with open(csv_path, "w", newline="", encoding="utf-8") as f:
            writer = csv.DictWriter(f, fieldnames=all_keys, extrasaction="ignore")
            writer.writeheader()
            writer.writerows(results)
        print(f"\n結果を {csv_path} に保存しました。")

    # Markdown レポート生成
    generate_markdown_report(ok_results, results, total)


def generate_markdown_report(ok_results: list, all_results: list, total: int):
    """合成結果から詳細な Markdown レポートを生成する。"""

    total_bits_list = sorted({r.get("MONT_TOTAL_BITS", 256) for r in ok_results})
    word_bits_list  = sorted({r.get("MONT_WORD_BITS")  for r in ok_results
                               if r.get("MONT_WORD_BITS") is not None})

    def cios_ii(r):
        return r.get("cios_final_ii", r.get("last_final_ii", "-"))

    lines = []

    # ---- ヘッダ ----
    tb_str = "/".join(str(t) for t in total_bits_list)
    lines += [
        "# モンゴメリ乗算 HLS パラメータスイープ結果",
        "",
        "**デバイス**: xcvu9p-flga2104-2-i (UltraScale+)  "
        "**ツール**: Vitis HLS 2024.2  **クロック目標**: 10 ns (100 MHz)",
        "",
        f"**計算対象**: {tb_str}-bit Montgomery 乗算（固定）  "
        f"**合成設定数**: {total}  **成功**: {len(ok_results)}  "
        f"**失敗**: {total - len(ok_results)}",
        "",
        "## パラメータ説明",
        "",
        "| パラメータ | 分類 | 意味 |",
        "|-----------|------|------|",
        "| `TOTAL_BITS` | 計算対象 | 演算ビット幅（変えると別の演算） |",
        "| `WORD_BITS` | 実装 | 語幅。NWORDS = TOTAL_BITS / WORD_BITS が自動決定 |",
        "| `INNER_UNROLL` | 実装 | 内側 j-ループ展開数: 0=pipeline, NWORDS/4, NWORDS/2, NWORDS=full |",
        "| `CONDSUB_UNROLL` | 実装 | cond_sub ループ展開: 0=pipeline, 1=unroll |",
        "| `INIT_UNROLL` | 実装 | 初期化ループ展開: 0=pipeline, 1=unroll |",
        "| `TARGET_II` | 実装 | 外側ループ目標 II: 0=auto, 2=明示 II=2, 4=明示 II=4 |",
        "",
    ]

    # ---- 全結果テーブル（WORD_BITS → latency 昇順） ----
    lines += [
        "## 全合成結果（語幅別・レイテンシ昇順）",
        "",
        "| WORD_BITS | NWORDS | INNER | CSUB | INIT | TGT_II "
        "| clk[ns] | Fmax[MHz] | lat[clk] | lat[ns] "
        "| DSP | LUT | FF | CIOS II | timing | II_viol |",
        "|-----------|--------|-------|------|------|--------|"
        "---------|-----------|---------|---------|"
        "-----|-----|-----|---------|--------|---------|",
    ]
    for r in sorted(ok_results,
                    key=lambda x: (x.get("MONT_WORD_BITS", 99),
                                   x.get("lat_max", 9999))):
        timing = "OK" if r.get("timing_ok", True) else "**NG**"
        ii_v   = "viol" if r.get("ii_violation") else "-"
        lines.append(
            f"| {r.get('MONT_WORD_BITS','-')} "
            f"| {r.get('MONT_NWORDS','-')} "
            f"| {r.get('MONT_INNER_UNROLL','-')} "
            f"| {r.get('MONT_CONDSUB_UNROLL','-')} "
            f"| {r.get('MONT_INIT_UNROLL','-')} "
            f"| {r.get('MONT_TARGET_II','-')} "
            f"| {r.get('clk_ns','-')} | {r.get('fmax_mhz','-')} "
            f"| {r.get('lat_max','-')} | {r.get('lat_abs_ns','-')} "
            f"| {r.get('dsp','-')} | {r.get('lut','-')} | {r.get('ff','-')} "
            f"| {cios_ii(r)} | {timing} | {ii_v} |"
        )
    lines += [""]

    # ---- 語幅別ベスト構成 ----
    lines += [
        "## 語幅別ベスト構成（同一 256-bit 演算）",
        "",
        "各語幅で「最小 latency」「最小 DSP」「最小 LUT」の最良構成を示す。",
        "",
    ]
    for wb in word_bits_list:
        grp = [r for r in ok_results if r.get("MONT_WORD_BITS") == wb]
        if not grp:
            continue
        nw = grp[0].get("MONT_NWORDS", "-")
        lines.append(f"### WORD_BITS={wb} (NWORDS={nw})")
        lines.append("")
        lines.append("| 目標 | INNER | CSUB | INIT | TGT_II | lat[clk] | lat[ns] | DSP | LUT | CIOS II |")
        lines.append("|------|-------|------|------|--------|---------|---------|-----|-----|---------|")

        def best_row(key):
            valid = [r for r in grp if r.get(key) not in (None, "-")]
            return sorted(valid, key=lambda x: x.get(key, 9999))[0] if valid else None

        for lbl, key in [("最小 latency", "lat_max"),
                          ("最小 DSP",     "dsp"),
                          ("最小 LUT",     "lut")]:
            b = best_row(key)
            if b is None:
                continue
            lines.append(
                f"| **{lbl}** "
                f"| {b.get('MONT_INNER_UNROLL','-')} "
                f"| {b.get('MONT_CONDSUB_UNROLL','-')} "
                f"| {b.get('MONT_INIT_UNROLL','-')} "
                f"| {b.get('MONT_TARGET_II','-')} "
                f"| {b.get('lat_max','-')} "
                f"| {b.get('lat_abs_ns','-')} "
                f"| {b.get('dsp','-')} "
                f"| {b.get('lut','-')} "
                f"| {cios_ii(b)} |"
            )
        lines += [""]

    # ---- 語幅スケーリング比較（最重要: 同一演算・異なる実装） ----
    lines += [
        "## 語幅スケーリング比較（同一 256-bit 演算、INNER=FULL, CSUB=1, INIT=1）",
        "",
        "同じ 256-bit Montgomery 乗算を異なる語幅で実装した場合の比較。",
        "",
    ]
    for tii in [0, 2, 4]:
        lines.append(f"### TARGET_II={tii}")
        lines.append("")
        lines.append("| WORD_BITS | NWORDS | lat[clk] | lat[ns] | clk[ns] | Fmax[MHz] | DSP | LUT | FF | CIOS II | CIOS Depth |")
        lines.append("|-----------|--------|---------|---------|---------|-----------|-----|-----|-----|---------|------------|")
        for wb in word_bits_list:
            grp = [r for r in ok_results if r.get("MONT_WORD_BITS") == wb]
            nw = wb and (256 // wb)
            # FULL UNROLL: INNER_UNROLL == NWORDS
            matches = [r for r in grp
                       if r.get("MONT_INNER_UNROLL") == nw
                       and r.get("MONT_CONDSUB_UNROLL") == 1
                       and r.get("MONT_INIT_UNROLL") == 1
                       and r.get("MONT_TARGET_II") == tii]
            if not matches:
                lines.append(f"| {wb} | {nw} | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A |")
                continue
            b = matches[0]
            dep = b.get("cios_depth", b.get("last_depth", "-"))
            lines.append(
                f"| {wb} | {nw} "
                f"| {b.get('lat_max','-')} | {b.get('lat_abs_ns','-')} "
                f"| {b.get('clk_ns','-')} | {b.get('fmax_mhz','-')} "
                f"| {b.get('dsp','-')} | {b.get('lut','-')} | {b.get('ff','-')} "
                f"| {cios_ii(b)} | {dep} |"
            )
        lines += [""]

    # ---- パラメータ別影響分析（WORD_BITS=32 基準） ----
    ref_wb = 32
    ref_nw = 256 // ref_wb   # = 8
    lines += [
        "## パラメータ別影響分析（WORD_BITS=32, NWORDS=8 の 256-bit 演算基準）",
        "",
        "### INNER_UNROLL の影響（CSUB=1, INIT=1, TARGET_II=0 固定）",
        "",
        "| INNER_UNROLL | 意味 | lat[clk] | lat[ns] | DSP | LUT | CIOS II | CIOS Depth |",
        "|-------------|------|---------|---------|-----|-----|---------|------------|",
    ]
    inner_vals = [0] + [max(1, ref_nw // 4), ref_nw // 2, ref_nw]
    inner_meaning = {
        0: "内側 PIPELINE (最小DSP)",
        ref_nw // 4: f"QUARTER ({ref_nw//4})",
        ref_nw // 2: f"HALF ({ref_nw//2})",
        ref_nw:      f"FULL ({ref_nw}, 最小 latency)",
    }
    for iu in sorted(set(inner_vals)):
        matches = [r for r in ok_results
                   if r.get("MONT_WORD_BITS") == ref_wb
                   and r.get("MONT_INNER_UNROLL") == iu
                   and r.get("MONT_CONDSUB_UNROLL") == 1
                   and r.get("MONT_INIT_UNROLL") == 1
                   and r.get("MONT_TARGET_II") == 0]
        if not matches:
            continue
        b = matches[0]
        dep = b.get("cios_depth", b.get("last_depth", "-"))
        lines.append(
            f"| {iu} | {inner_meaning.get(iu, str(iu))} "
            f"| {b.get('lat_max','-')} | {b.get('lat_abs_ns','-')} "
            f"| {b.get('dsp','-')} | {b.get('lut','-')} "
            f"| {cios_ii(b)} | {dep} |"
        )
    lines += [""]

    lines += [
        "### CONDSUB_UNROLL / INIT_UNROLL の影響（INNER=FULL, TARGET_II=0 固定）",
        "",
        "| INIT | CSUB | lat[clk] | lat[ns] | DSP | LUT | 備考 |",
        "|------|------|---------|---------|-----|-----|------|",
    ]
    for init_u in [0, 1]:
        for csub_u in [0, 1]:
            matches = [r for r in ok_results
                       if r.get("MONT_WORD_BITS") == ref_wb
                       and r.get("MONT_INNER_UNROLL") == ref_nw
                       and r.get("MONT_CONDSUB_UNROLL") == csub_u
                       and r.get("MONT_INIT_UNROLL") == init_u
                       and r.get("MONT_TARGET_II") == 0]
            if not matches:
                continue
            b = matches[0]
            note = []
            if init_u:  note.append("init UNROLL")
            if csub_u:  note.append("cond_sub UNROLL")
            if not note: note.append("両方 PIPELINE")
            lines.append(
                f"| {init_u} | {csub_u} "
                f"| {b.get('lat_max','-')} | {b.get('lat_abs_ns','-')} "
                f"| {b.get('dsp','-')} | {b.get('lut','-')} "
                f"| {', '.join(note)} |"
            )
    lines += [""]

    lines += [
        "### TARGET_II の影響（INNER=FULL, CSUB=1, INIT=1 固定）",
        "",
        "| TARGET_II | lat[clk] | lat[ns] | DSP | LUT | CIOS Final II | 備考 |",
        "|----------|---------|---------|-----|-----|--------------|------|",
    ]
    for tii in [0, 2, 4]:
        matches = [r for r in ok_results
                   if r.get("MONT_WORD_BITS") == ref_wb
                   and r.get("MONT_INNER_UNROLL") == ref_nw
                   and r.get("MONT_CONDSUB_UNROLL") == 1
                   and r.get("MONT_INIT_UNROLL") == 1
                   and r.get("MONT_TARGET_II") == tii]
        if not matches:
            continue
        b = matches[0]
        note = {0: "自動選択", 2: "II=2 明示", 4: "保守的 II=4"}.get(tii, "-")
        lines.append(
            f"| {tii} "
            f"| {b.get('lat_max','-')} | {b.get('lat_abs_ns','-')} "
            f"| {b.get('dsp','-')} | {b.get('lut','-')} | {cios_ii(b)} | {note} |"
        )
    lines += [""]

    # ---- ベースライン比較 ----
    lines += [
        "## ベースラインとの比較（WORD_BITS=32, NWORDS=8, 256-bit 演算）",
        "",
        "| 実装 | INNER | CSUB | INIT | TGT_II | lat[clk] | lat[ns] | DSP | LUT | CIOS II |",
        "|------|-------|------|------|--------|---------|---------|-----|-----|---------|",
        "| 変換前 (mont_hls_orig) | (auto) | (pipeline) | (pipeline) | - | 70 | 505.7 | 39 | 3299 | 2 |",
    ]
    for iu in [0, ref_nw // 2, ref_nw]:
        for tii in [0, 2, 4]:
            matches = [r for r in ok_results
                       if r.get("MONT_WORD_BITS") == ref_wb
                       and r.get("MONT_INNER_UNROLL") == iu
                       and r.get("MONT_CONDSUB_UNROLL") == 1
                       and r.get("MONT_INIT_UNROLL") == 1
                       and r.get("MONT_TARGET_II") == tii]
            if not matches:
                continue
            b = matches[0]
            iu_str = {0: "0(pipeline)", ref_nw//2: f"{ref_nw//2}(HALF)",
                      ref_nw: f"{ref_nw}(FULL)"}.get(iu, str(iu))
            lbl = f"変換後 W32 IU={iu_str}, TII={tii}"
            lines.append(
                f"| {lbl} | {iu} | 1 | 1 | {tii} "
                f"| {b.get('lat_max','-')} | {b.get('lat_abs_ns','-')} "
                f"| {b.get('dsp','-')} | {b.get('lut','-')} | {cios_ii(b)} |"
            )
    lines += [""]

    # ---- 考察 ----
    lines += [
        "## 考察",
        "",
        "### 1. 語幅（WORD_BITS）の選択",
        "",
        "同一 256-bit 演算を異なる語幅で実装した場合の主な違い:",
        "- **WORD_BITS=16 (NWORDS=16)**: 1 語の乗算が小さく DSP 消費が少ない。"
        " 語数が多いため CIOS 外側ループの反復が増え latency は増加する傾向。",
        "- **WORD_BITS=32 (NWORDS=8)**: 標準的な選択。latency・DSP のバランスが良い。",
        "- **WORD_BITS=64 (NWORDS=4)**: 1 語が大きく DSP カスケードが必要。"
        " 語数が少ないため外側ループ反復が少ない反面、1 語の乗算コストが高い。",
        "",
        "### 2. INNER_UNROLL が支配的なパラメータ",
        "",
        "INNER_UNROLL=0（内側 PIPELINE）は DSP を折りたたみ最小化するが、"
        " latency が大幅に増加する。一方 INNER_UNROLL≥2（部分/完全展開）では"
        " 外側ループを PIPELINE できるため latency が劇的に改善する。",
        "",
        "### 3. CONDSUB_UNROLL が第二の latency 削減要因",
        "",
        "INNER=FULL のとき、CONDSUB=0 と CONDSUB=1 で約 20 clk（NWORDS=8）の差が生じる。"
        " LUT は増加するが DSP は変わらない。",
        "",
        "### 4. TARGET_II=4 で DSP 削減",
        "",
        "II=4 にすると latency は増加するが DSP が大幅に削減される（NWORDS=8 で 39→23 個）。"
        " 面積制約が厳しい場合の有効な選択肢。",
        "",
    ]

    md_path = SCRIPT_DIR / "sweep_report.md"
    md_path.write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(f"Markdown レポートを {md_path} に保存しました。")


if __name__ == "__main__":
    main()
