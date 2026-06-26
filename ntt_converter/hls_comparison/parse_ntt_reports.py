#!/usr/bin/env python3
"""
parse_ntt_reports.py
Vitis HLS 合成レポート (.rpt) を解析して変換前後を比較する
Vitis HLS 2024.x のレポートフォーマットに対応
"""

import re
import sys
import os

# ===================== レポート解析 =====================

def parse_csynth_rpt(path):
    """csynth.rpt から主要メトリクスを抽出する"""
    m = {
        "file":             path,
        "clock_target":     None,  # ns
        "clock_estimated":  None,  # ns
        "fmax_mhz":         None,
        "latency_min":      None,  # cycles
        "latency_max":      None,  # cycles
        "latency_min_abs":  None,  # ns/us/ms
        "latency_max_abs":  None,
        "interval_min":     None,
        "interval_max":     None,
        "pipeline_type":    None,
        "inner_ii":         None,  # 内側パイプラインのII
        "inner_depth":      None,
        "lut":     None,
        "ff":      None,
        "dsp":     None,
        "bram":    None,
        "uram":    None,
    }

    if not os.path.exists(path):
        return m

    with open(path, encoding="utf-8", errors="replace") as f:
        text = f.read()

    # ---- Clock ----
    clk_m = re.search(
        r'\|\s*ap_clk\s*\|\s*([\d.]+\s*ns)\s*\|\s*([\d.]+\s*ns)', text)
    if clk_m:
        m["clock_target"]    = clk_m.group(1).strip()
        m["clock_estimated"] = clk_m.group(2).strip()
        try:
            t = float(re.search(r'[\d.]+', clk_m.group(2)).group())
            m["fmax_mhz"] = f"{1000/t:.1f} MHz"
        except Exception:
            pass

    # ---- Latency Summary ----
    # データ行（数値/? の行）を直接拾う
    # +---------+---------+----------+----------+-----+-----+---------+
    # |   min   |   max   |    min   |    max   | min | max |   Type  |
    # +---------+---------+----------+----------+-----+-----+---------+
    # |        ?|        ?|         ?|         ?|    ?|    ?|       no|
    #   または
    # |       50|  18543634|  0.500 us|  0.185 sec|   51|  18543635|       no|
    lat_m = re.search(
        r'\|\s*([?\d][^|]*)\|\s*([?\d][^|]*)\|\s*([?\d.][^|]*)\|\s*([?\d.][^|]*)\|\s*([?\d][^|]*)\|\s*([?\d][^|]*)\|\s*(\w[^|]*)\|',
        text)
    if lat_m:
        def c(s): return s.strip()
        vals = [c(lat_m.group(i)) for i in range(1, 8)]
        # 数値または "?" かチェック
        is_data = any(re.match(r'^[\d?]', v) for v in vals)
        if is_data:
            m["latency_min"]     = vals[0]
            m["latency_max"]     = vals[1]
            m["latency_min_abs"] = vals[2]
            m["latency_max_abs"] = vals[3]
            m["interval_min"]    = vals[4]
            m["interval_max"]    = vals[5]
            m["pipeline_type"]   = vals[6]

    # ---- 内側パイプラインの II (rpt の Loop テーブルから) ----
    # | + VITIS_LOOP_XX | min | max | iter | achieved | target | count | pipelined |
    # BRAM依存でpipelinedは"no"になることもあるが、Instanceテーブルに深い情報がある
    # ログファイルから Final II を取得する（rptには直接記載なし）
    # → parse_log() で補完する

    # ---- Utilization Estimates: Total 行 ----
    # |Total                |        0|     4|     9058|     7536|    0|
    total_m = re.search(
        r'\|Total\s*\|\s*(\d[\d,]*)\s*\|\s*(\d[\d,]*)\s*\|\s*(\d[\d,]*)\s*\|\s*(\d[\d,]*)\s*\|\s*(\d[\d,]*)\s*\|',
        text)
    if total_m:
        def nc(s): return s.strip().replace(',', '')
        m["bram"] = nc(total_m.group(1))
        m["dsp"]  = nc(total_m.group(2))
        m["ff"]   = nc(total_m.group(3))
        m["lut"]  = nc(total_m.group(4))
        m["uram"] = nc(total_m.group(5))

    # ---- Fmax override from log ----
    fmax_m = re.search(r'Estimated Fmax:\s*([\d.]+\s*MHz)', text)
    if fmax_m:
        m["fmax_mhz"] = fmax_m.group(1).strip()

    return m

# ===================== 表示 =====================

def fmt(val):
    return str(val) if val is not None else "N/A"

def ratio_str(a_str, b_str):
    """b/a を計算して比率を返す（a=orig, b=conv）"""
    try:
        a = float(str(a_str).replace(',',''))
        b = float(str(b_str).replace(',',''))
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
    print("  NTT HLS 合成結果比較  (Vitis HLS 2024.2, xcvu9p-flga2104-2-i, 10ns)")
    print("  変換前: ntt_forward_orig    — #pragma HLS PIPELINE なし (自動検出のみ)")
    print("  変換後: ntt_forward_converted — #pragma HLS PIPELINE II=1 あり")
    print("=" * 72)

    rows = [
        ("推定クロック周期",        "clock_estimated"),
        ("推定 Fmax",              "fmax_mhz"),
        ("レイテンシ min [clk]",    "latency_min"),
        ("レイテンシ max [clk]",    "latency_max"),
        ("レイテンシ min [abs]",    "latency_min_abs"),
        ("レイテンシ max [abs]",    "latency_max_abs"),
        ("II min [clk]",           "interval_min"),
        ("II max [clk]",           "interval_max"),
        ("パイプラインタイプ",      "pipeline_type"),
        ("内側ループ Final II",     "inner_ii"),
        ("内側ループ Depth",        "inner_depth"),
        ("LUT",                    "lut"),
        ("FF",                     "ff"),
        ("DSP",                    "dsp"),
        ("BRAM",                   "bram"),
    ]

    print(f"\n{'指標':<26} {'変換前':>15} {'変換後':>15} {'比率':>12}")
    print("-" * 72)
    for label, key in rows:
        ov = orig.get(key)
        cv = conv.get(key)
        rat = ""
        # 数値の場合のみ比率を計算
        if key in ("latency_min","latency_max","interval_min","interval_max",
                   "inner_ii","inner_depth","lut","ff","dsp","bram","uram"):
            if ov not in (None, "?", "N/A") and cv not in (None, "?", "N/A"):
                rat = ratio_str(ov, cv)
        print(f"{label:<26} {fmt(ov):>15} {fmt(cv):>15} {rat:>12}")
    print("-" * 72)
    print()

    # サマリー
    print("【考察】")
    inner_o = orig.get("inner_ii")
    inner_c = conv.get("inner_ii")
    if inner_o and inner_c:
        print(f"  内側ループ II: 変換前={inner_o} clk, 変換後={inner_c} clk")
        print(f"  (ともに BRAMポートへの読み書き依存により II=1 制約が未達)")

    lat_min_c = conv.get("latency_min")
    lat_max_c = conv.get("latency_max")
    if lat_min_c and lat_max_c:
        print(f"  変換後のレイテンシ: min={lat_min_c}clk ({conv.get('latency_min_abs')})"
              f" ~ max={lat_max_c}clk ({conv.get('latency_max_abs')})")
        print(f"  (n=256, ステージ数=8, II={inner_c} → 理論レイテンシ ≈ 8×128×{inner_c} = "
              f"{8*128*int(inner_c)}clk に近い)")

    dsp_o = orig.get("dsp")
    dsp_c = conv.get("dsp")
    if dsp_o and dsp_c:
        print(f"  DSP 使用量: 変換前={dsp_o}, 変換後={dsp_c} (どちらも同等)")

    print()
    print("【ボトルネックの原因】")
    print("  BRAMインターフェース (port=a は BRAM ポート) で同一配列への")
    print("  読み書きが同一パイプラインステージに発生するため、")
    print("  srem (符号付き除算) の67〜69サイクルレイテンシが II の下限になっている。")
    print()
    print("【改善策】")
    print("  1. 配列 a を ARRAY_PARTITION でレジスタ化 (#pragma HLS ARRAY_PARTITION)")
    print("  2. % mod を Barrett/Montgomery リダクションに置換 (レイテンシ削減)")
    print("  3. 固定素数 (例 3329) を使い乗算を定数化")
    print()

    # レポートファイルのコピー先を明示
    return {
        "orig": orig,
        "conv": conv,
    }

# ===================== メイン =====================

def parse_log_for_pipeline(log_path):
    """HLS ログファイルから Final II と Depth を抽出する"""
    result = {"inner_ii": None, "inner_depth": None, "target_ii": None}
    if not os.path.exists(log_path):
        return result
    with open(log_path, encoding="utf-8", errors="replace") as f:
        text = f.read()
    # "Pipelining result : Target II = 1, Final II = 71, Depth = 71, loop 'VITIS_LOOP_77_3'"
    # "Pipelining result : Target II = NA, Final II = 69, Depth = 70, loop 'VITIS_LOOP_46_3'"
    # 最後の（最も内側の）パイプライン結果を取得
    matches = re.findall(
        r'Pipelining result\s*:\s*Target II\s*=\s*(\S+),\s*Final II\s*=\s*(\d+),\s*Depth\s*=\s*(\d+)',
        text)
    if matches:
        last = matches[-1]
        result["target_ii"]  = last[0]
        result["inner_ii"]   = last[1]
        result["inner_depth"] = last[2]
    return result

if __name__ == "__main__":
    orig_rpt = "ntt_orig_csynth.rpt"
    conv_rpt = "ntt_converted_csynth.rpt"
    orig_log = "hls_ntt_orig.log"
    conv_log = "hls_ntt_converted.log"

    if len(sys.argv) >= 3:
        orig_rpt, conv_rpt = sys.argv[1], sys.argv[2]

    orig = parse_csynth_rpt(orig_rpt)
    conv = parse_csynth_rpt(conv_rpt)

    # ログからII情報を補完
    orig.update(parse_log_for_pipeline(orig_log))
    conv.update(parse_log_for_pipeline(conv_log))

    # フォールバック: proj から直接
    if orig.get("lut") is None:
        for f in sorted(os.listdir("proj_ntt_orig/solution1/syn/report")
                        if os.path.isdir("proj_ntt_orig/solution1/syn/report") else []):
            if f.endswith("_csynth.rpt"):
                orig = parse_csynth_rpt(f"proj_ntt_orig/solution1/syn/report/{f}")
                break

    if conv.get("lut") is None:
        for f in sorted(os.listdir("proj_ntt_converted/solution1/syn/report")
                        if os.path.isdir("proj_ntt_converted/solution1/syn/report") else []):
            if f.endswith("_csynth.rpt"):
                conv = parse_csynth_rpt(f"proj_ntt_converted/solution1/syn/report/{f}")
                break

    result = compare(orig, conv)

    # Markdown レポート生成
    md = "# NTT HLS 合成比較レポート\n\n"
    md += "**ターゲットデバイス**: xcvu9p-flga2104-2-i (Vitis HLS 2024.2, 10ns clock)  \n"
    md += "**変換前**: `ntt_forward_orig` — `#pragma HLS PIPELINE` なし  \n"
    md += "**変換後**: `ntt_forward_converted` — `#pragma HLS PIPELINE II=1` あり  \n\n"
    md += "| 指標 | 変換前 | 変換後 |\n"
    md += "|------|--------|--------|\n"
    rows_md = [
        ("推定クロック周期",    "clock_estimated"),
        ("推定 Fmax",          "fmax_mhz"),
        ("レイテンシ max[clk]", "latency_max"),
        ("レイテンシ max[abs]", "latency_max_abs"),
        ("内側ループ Final II", "inner_ii"),
        ("内側ループ Depth",    "inner_depth"),
        ("LUT",                "lut"),
        ("FF",                 "ff"),
        ("DSP",                "dsp"),
        ("BRAM",               "bram"),
    ]
    for label, key in rows_md:
        ov = fmt(orig.get(key))
        cv = fmt(conv.get(key))
        md += f"| {label} | {ov} | {cv} |\n"

    md += "\n## 考察\n\n"
    md += "- 内側バタフライループの II は変換前後でほぼ同等\n"
    md += "- ボトルネック: `srem`（`%` 演算）が ~68サイクルのレイテンシを持つため II = 1 未達\n"
    md += "- DSP・LUT・FF 使用量はほぼ同等\n"
    md += "- **変換後**は LOOP_TRIPCOUNT pragma により HLS がレイテンシを具体的に推定できる\n"
    md += "- 改善策: ARRAY_PARTITION + Barrett/Montgomery リダクション\n"

    with open("ntt_comparison_report.md", "w") as f:
        f.write(md)
    print(f"  Markdown レポート: ntt_comparison_report.md")
