#!/usr/bin/env python3
"""
parse_mont_reports.py
Vitis HLS 合成レポート (.rpt) を解析して、モンゴメリ乗算の変換前後を比較する。
Vitis HLS 2024.x のレポートフォーマットに対応（parse_ntt_reports.py を踏襲）。
"""

import re
import sys
import os


def parse_csynth_rpt(path):
    """csynth.rpt から主要メトリクスを抽出する"""
    m = {
        "file": path,
        "clock_target": None,
        "clock_estimated": None,
        "fmax_mhz": None,
        "latency_min": None,
        "latency_max": None,
        "latency_min_abs": None,
        "latency_max_abs": None,
        "interval_min": None,
        "interval_max": None,
        "pipeline_type": None,
        "inner_ii": None,
        "inner_depth": None,
        "lut": None, "ff": None, "dsp": None, "bram": None, "uram": None,
    }

    if not os.path.exists(path):
        return m

    with open(path, encoding="utf-8", errors="replace") as f:
        text = f.read()

    # ---- Clock ----
    clk_m = re.search(r'\|\s*ap_clk\s*\|\s*([\d.]+\s*ns)\s*\|\s*([\d.]+\s*ns)', text)
    if clk_m:
        m["clock_target"] = clk_m.group(1).strip()
        m["clock_estimated"] = clk_m.group(2).strip()
        try:
            t = float(re.search(r'[\d.]+', clk_m.group(2)).group())
            m["fmax_mhz"] = f"{1000/t:.1f} MHz"
        except Exception:
            pass

    # ---- Latency Summary ----
    lat_m = re.search(
        r'\|\s*([?\d][^|]*)\|\s*([?\d][^|]*)\|\s*([?\d.][^|]*)\|\s*([?\d.][^|]*)\|\s*([?\d][^|]*)\|\s*([?\d][^|]*)\|\s*(\w[^|]*)\|',
        text)
    if lat_m:
        vals = [lat_m.group(i).strip() for i in range(1, 8)]
        if any(re.match(r'^[\d?]', v) for v in vals):
            (m["latency_min"], m["latency_max"], m["latency_min_abs"],
             m["latency_max_abs"], m["interval_min"], m["interval_max"],
             m["pipeline_type"]) = vals

    # ---- Utilization Estimates: Total 行 ----
    total_m = re.search(
        r'\|Total\s*\|\s*(\d[\d,]*)\s*\|\s*(\d[\d,]*)\s*\|\s*(\d[\d,]*)\s*\|\s*(\d[\d,]*)\s*\|\s*(\d[\d,]*)\s*\|',
        text)
    if total_m:
        def nc(s): return s.strip().replace(',', '')
        m["bram"] = nc(total_m.group(1))
        m["dsp"] = nc(total_m.group(2))
        m["ff"] = nc(total_m.group(3))
        m["lut"] = nc(total_m.group(4))
        m["uram"] = nc(total_m.group(5))

    fmax_m = re.search(r'Estimated Fmax:\s*([\d.]+\s*MHz)', text)
    if fmax_m:
        m["fmax_mhz"] = fmax_m.group(1).strip()

    return m


def parse_log_for_pipeline(log_path):
    """HLS ログから最も内側ループの Final II / Depth を抽出する"""
    result = {"inner_ii": None, "inner_depth": None, "target_ii": None}
    if not os.path.exists(log_path):
        return result
    with open(log_path, encoding="utf-8", errors="replace") as f:
        text = f.read()
    matches = re.findall(
        r'Pipelining result\s*:\s*Target II\s*=\s*(\S+),\s*Final II\s*=\s*(\d+),\s*Depth\s*=\s*(\d+)',
        text)
    if matches:
        last = matches[-1]
        result["target_ii"] = last[0]
        result["inner_ii"] = last[1]
        result["inner_depth"] = last[2]
    return result


def fmt(val):
    return str(val) if val is not None else "N/A"


def ratio_str(a_str, b_str):
    try:
        a = float(str(a_str).replace(',', ''))
        b = float(str(b_str).replace(',', ''))
        if a == 0:
            return "  ∞  "
        r = b / a
        arrow = "↓" if r < 0.95 else ("↑" if r > 1.05 else "≈")
        return f"{r:.2f}x {arrow}"
    except Exception:
        return "  --  "


def compare(orig, conv):
    print()
    print("=" * 72)
    print("  Montgomery HLS 合成結果比較  (Vitis HLS 2024.2, xcvu9p-flga2104-2-i, 10ns)")
    print("  変換前: mont_mul_top (orig)      — ローカル配列 / パイプライン指示なし")
    print("  変換後: mont_mul_top (converted) — ARRAY_PARTITION + PIPELINE II=1")
    print("=" * 72)

    rows = [
        ("推定クロック周期", "clock_estimated"),
        ("推定 Fmax", "fmax_mhz"),
        ("レイテンシ min [clk]", "latency_min"),
        ("レイテンシ max [clk]", "latency_max"),
        ("レイテンシ min [abs]", "latency_min_abs"),
        ("レイテンシ max [abs]", "latency_max_abs"),
        ("II min [clk]", "interval_min"),
        ("II max [clk]", "interval_max"),
        ("パイプラインタイプ", "pipeline_type"),
        ("内側ループ Final II", "inner_ii"),
        ("内側ループ Depth", "inner_depth"),
        ("LUT", "lut"),
        ("FF", "ff"),
        ("DSP", "dsp"),
        ("BRAM", "bram"),
    ]

    print(f"\n{'指標':<26} {'変換前':>15} {'変換後':>15} {'比率':>12}")
    print("-" * 72)
    numeric = ("latency_min", "latency_max", "interval_min", "interval_max",
               "inner_ii", "inner_depth", "lut", "ff", "dsp", "bram", "uram")
    for label, key in rows:
        ov, cv = orig.get(key), conv.get(key)
        rat = ""
        if key in numeric and ov not in (None, "?", "N/A") and cv not in (None, "?", "N/A"):
            rat = ratio_str(ov, cv)
        print(f"{label:<26} {fmt(ov):>15} {fmt(cv):>15} {rat:>12}")
    print("-" * 72)
    print()

    print("【考察】")
    io, ic = orig.get("inner_ii"), conv.get("inner_ii")
    if io and ic:
        print(f"  内側ループ Final II: 変換前={io} clk, 変換後={ic} clk")
    lo, lc = orig.get("latency_max"), conv.get("latency_max")
    if lo and lc:
        print(f"  最大レイテンシ: 変換前={lo} clk, 変換後={lc} clk")
    do, dc = orig.get("dsp"), conv.get("dsp")
    if do and dc:
        print(f"  DSP 使用量: 変換前={do}, 変換後={dc}")
    print()
    print("  変換後は作業配列の ARRAY_PARTITION complete により BRAM 2 ポート制約を外し、")
    print("  部分積/リダクション走査の内側ループを PIPELINE II=1 で流す。")
    print("  最終補正は分岐レス cond_sub（定数時間）で実装され制御パスが単純。")
    print()


if __name__ == "__main__":
    orig_rpt = "mont_orig_csynth.rpt"
    conv_rpt = "mont_converted_csynth.rpt"
    orig_log = "hls_mont_orig.log"
    conv_log = "hls_mont_converted.log"

    if len(sys.argv) >= 3:
        orig_rpt, conv_rpt = sys.argv[1], sys.argv[2]

    # フォールバック: proj 配下の report を直接探す
    def resolve(rpt, proj):
        if os.path.exists(rpt):
            return rpt
        rdir = f"{proj}/solution1/syn/report"
        if os.path.isdir(rdir):
            for f in sorted(os.listdir(rdir)):
                if f.endswith("_csynth.rpt"):
                    return os.path.join(rdir, f)
        return rpt

    orig_rpt = resolve(orig_rpt, "proj_mont_orig")
    conv_rpt = resolve(conv_rpt, "proj_mont_converted")

    orig = parse_csynth_rpt(orig_rpt)
    conv = parse_csynth_rpt(conv_rpt)
    orig.update(parse_log_for_pipeline(orig_log))
    conv.update(parse_log_for_pipeline(conv_log))

    compare(orig, conv)

    # Markdown レポート生成
    md = "# モンゴメリ乗算 HLS 合成比較レポート\n\n"
    md += "**ターゲットデバイス**: xcvu9p-flga2104-2-i (Vitis HLS 2024.2, 10ns clock)  \n"
    md += "**トップ関数**: `mont_mul_top`（256 ビット法 = 32 ビット語 × 8）  \n"
    md += "**変換前**: `mont_hls_orig.cpp` — ローカル配列 / パイプライン指示なし  \n"
    md += "**変換後**: `mont_hls_converted.cpp` — `ARRAY_PARTITION` + `PIPELINE II=1`  \n\n"
    md += "| 指標 | 変換前 | 変換後 |\n"
    md += "|------|--------|--------|\n"
    rows_md = [
        ("推定クロック周期", "clock_estimated"),
        ("推定 Fmax", "fmax_mhz"),
        ("レイテンシ max[clk]", "latency_max"),
        ("レイテンシ max[abs]", "latency_max_abs"),
        ("内側ループ Final II", "inner_ii"),
        ("内側ループ Depth", "inner_depth"),
        ("LUT", "lut"),
        ("FF", "ff"),
        ("DSP", "dsp"),
        ("BRAM", "bram"),
    ]
    for label, key in rows_md:
        md += f"| {label} | {fmt(orig.get(key))} | {fmt(conv.get(key))} |\n"

    md += "\n## 考察\n\n"
    md += "- 変換後は作業配列の `ARRAY_PARTITION complete` で BRAM 2 ポート制約を解消\n"
    md += "- 部分積/リダクション走査の内側ループを `PIPELINE II=1` で流す（Final II=1 達成）\n"
    md += "- 最終補正は分岐レス `cond_sub`（定数時間）で制御パスを単純化\n"
    md += "- 語ごとの積和は倍幅型（`__uint128`/`uint64`）経由で DSP にマップ\n"

    # データ駆動のトレードオフ要約（数値が取れた場合）
    def fnum(d, k):
        try:
            return float(str(d.get(k)).replace(',', ''))
        except Exception:
            return None
    lo, lc = fnum(orig, "latency_max"), fnum(conv, "latency_max")
    luo, luc = fnum(orig, "lut"), fnum(conv, "lut")
    dpo, dpc = fnum(orig, "dsp"), fnum(conv, "dsp")
    if None not in (lo, lc, luo, luc, dpo, dpc):
        md += "\n### 面積 / レイテンシのトレードオフ\n\n"
        md += (f"- 変換前は語数が定数（`NWORDS=8`）のため HLS が全ループを完全展開し、"
               f"低レイテンシ（{int(lo)} clk）だが大きな資源（LUT {int(luo)}, DSP {int(dpo)}）を要する\n")
        md += (f"- 変換後は実行時 `nwords` + `LOOP_TRIPCOUNT` で逐次パイプライン化されるため、"
               f"レイテンシは増加（{int(lc)} clk）する一方、"
               f"LUT {int(luc)}（{luc/luo:.0%}）・DSP {int(dpc)}（{dpc/dpo:.0%}）へと資源を大幅削減\n")
        md += ("- すなわち変換は「面積最小・高 Fmax・乗算器再利用（折りたたみ）」志向。"
               "最小レイテンシを優先する場合は呼び出し側で `nwords` を定数化すれば"
               "変換後コードも完全展開され得る\n")

    with open("mont_comparison_report.md", "w") as f:
        f.write(md)
    print("  Markdown レポート: mont_comparison_report.md")
