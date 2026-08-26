#!/usr/bin/env python3
"""
parse_all_designs.py
全設計 (CIOS best, FIOS, FIOS-CSA, SOS, Karatsuba + クロックスイープ) の HLS 合成結果を比較。
"""

import re, csv
from pathlib import Path

SCRIPT_DIR = Path(__file__).parent.resolve()

def parse_rpt(rpt_path: Path) -> dict:
    if not rpt_path.exists():
        return {}
    text = rpt_path.read_text()
    r = {}
    # 推定クロック周期
    m = re.search(r'\|ap_clk\s*\|[\s\d.]+ns\|\s*([\d.]+)\s*ns\s*\|', text)
    if m: r['clk_ns'] = float(m.group(1))
    # レイテンシ (us 単位) + インターバル
    m = re.search(
        r'\|\s*(\d+)\s*\|\s*(\d+)\s*\|\s*([\d.]+)\s*us\s*\|\s*([\d.]+)\s*us\s*\|\s*(\d+)\s*\|\s*(\d+)',
        text)
    if m:
        r['lat_min_clk'] = int(m.group(1)); r['lat_max_clk'] = int(m.group(2))
        r['ii_min'] = int(m.group(5));      r['ii_max']      = int(m.group(6))
    # リソース Summary Total 行: |Total | BRAM | DSP | FF | LUT | URAM |
    m = re.search(
        r'\|Total\s+\|\s*(\d+)\s*\|\s*(\d+)\s*\|\s*(\d+)\s*\|\s*(\d+)\s*\|\s*(\d+)\s*\|', text)
    if m:
        r['bram'] = int(m.group(1)); r['dsp'] = int(m.group(2))
        r['ff']   = int(m.group(3)); r['lut'] = int(m.group(4))
    if 'clk_ns' in r:
        r['fmax_mhz'] = round(1000.0 / r['clk_ns'], 1)
    # 実際のレイテンシ = 推定クロック × サイクル数
    if 'clk_ns' in r and 'lat_max_clk' in r:
        r['lat_max_ns'] = round(r['clk_ns'] * r['lat_max_clk'], 1)
    return r

# --- 設計リスト (表示名, レポートパス, 備考) ---
designs = [
    # ---------- パイプラインループ PIPELINE 版 ----------
    ("FIOS (10ns)",
     "proj_mont_fios/solution1/syn/report/mont_mul_fios_csynth.rpt",
     "ベースライン"),
    ("FIOS-CSA (10ns)",
     "proj_mont_fios_csa/solution1/syn/report/mont_mul_fios_csa_csynth.rpt",
     "Pre-sum: Cチェーン 8→5ns/step"),
    ("FIOS (7ns)",
     "proj_mont_fios_clk7/solution1/syn/report/mont_mul_fios_csynth.rpt",
     "クロック制約"),
    ("FIOS-CSA (7ns)",
     "proj_mont_fios_csa_clk7/solution1/syn/report/mont_mul_fios_csa_csynth.rpt",
     "CSA + 7ns"),
    ("FIOS (6ns)",
     "proj_mont_fios_clk6/solution1/syn/report/mont_mul_fios_csynth.rpt",
     "クロック微調整"),
    ("FIOS-CSA (6ns)",
     "proj_mont_fios_csa_clk6/solution1/syn/report/mont_mul_fios_csa_csynth.rpt",
     "CSA + 6ns"),
    ("FIOS (5ns)",
     "proj_mont_fios_clk5/solution1/syn/report/mont_mul_fios_csynth.rpt",
     "積極的クロック"),
    ("SOS (10ns)",
     "proj_mont_sos/solution1/syn/report/mont_mul_sos_csynth.rpt",
     "完全積+REDC 2フェーズ"),
    ("Karatsuba (10ns)",
     "proj_mont_karatsuba/solution1/syn/report/mont_mul_karatsuba_csynth.rpt",
     "2-way KO-2"),
    # ---------- 外側ループ UNROLL 展開版 ----------
    ("FIOS-Flat (7ns)",
     "proj_mont_fios_flat_clk7/solution1/syn/report/mont_mul_fios_flat_csynth.rpt",
     "外側UNROLL: HLSが全4反復を一括スケジュール"),
    ("FIOS-Flat (6ns)",
     "proj_mont_fios_flat_clk6/solution1/syn/report/mont_mul_fios_flat_csynth.rpt",
     "外側UNROLL + 6ns"),
    ("FIOS-Flat (5ns)",
     "proj_mont_fios_flat_clk5/solution1/syn/report/mont_mul_fios_flat_csynth.rpt",
     "外側UNROLL + 5ns"),
    ("FIOS-CSA-Flat (7ns)",
     "proj_mont_fios_csa_flat_clk7/solution1/syn/report/mont_mul_fios_csa_flat_csynth.rpt",
     "Pre-sum + 外側UNROLL (★最良)"),
    ("FIOS-CSA-Flat (6ns)",
     "proj_mont_fios_csa_flat_clk6/solution1/syn/report/mont_mul_fios_csa_flat_csynth.rpt",
     "Pre-sum + 外側UNROLL + 6ns"),
    ("FIOS-CSA-Flat (5.5ns)",
     "proj_mont_fios_csa_flat_clk55/solution1/syn/report/mont_mul_fios_csa_flat_csynth.rpt",
     "クロックスイープ"),
    ("FIOS-CSA-Flat (8ns)",
     "proj_mont_fios_csa_flat_clk8/solution1/syn/report/mont_mul_fios_csa_flat_csynth.rpt",
     "クロックスイープ"),
    # ---------- LATENCY 制約版 ----------
    ("FIOS-CSA-Flat-Lat (7ns)",
     "proj_mont_fios_csa_flat_lat_clk7/solution1/syn/report/mont_mul_fios_csa_flat_lat_csynth.rpt",
     "LATENCY min=16 max=18 強制"),
    # ---------- DATAFLOW 版 ----------
    ("FIOS-CSA-Dataflow (7ns)",
     "proj_mont_fios_csa_dataflow_clk7/solution1/syn/report/mont_mul_fios_csa_dataflow_csynth.rpt",
     "4反復→明示的関数+DATAFLOW: IIスループット改善"),
    # ---------- Karatsuba CSA REDC ----------
    ("Karatsuba-CSA (7ns)",
     "proj_mont_karatsuba_csa_clk7/solution1/syn/report/mont_mul_karatsuba_csa_csynth.rpt",
     "KO-2 + FIOS-CSA-Flat style REDC (UNROLL+Pre-sum)"),
]

# --- 既存スイープ最良 CIOS ---
cios_best = {}
sweep_csv = SCRIPT_DIR / 'sweep_results.csv'
if sweep_csv.exists():
    with open(sweep_csv) as f:
        rows = list(csv.DictReader(f))
    cands = [r for r in rows if r.get('MONT_TOTAL_BITS')=='256'
             and r.get('MONT_WORD_BITS')=='64'
             and r.get('timing_ok')=='True'
             and r.get('MONT_CONDSUB_UNROLL')=='1']
    if cands:
        best = min(cands, key=lambda r: float(r['lat_abs_ns']))
        cios_best = {'clk_ns': float(best['clk_ns']), 'fmax_mhz': float(best['fmax_mhz']),
                     'lat_max_clk': int(best['lat_max']), 'lat_max_ns': float(best['lat_abs_ns']),
                     'ii_min': int(best['ii_min']), 'lut': int(best['lut']),
                     'ff': int(best['ff']), 'dsp': int(best['dsp']), 'bram': int(best['bram']),
                     'label': best['label']}

# --- 出力 ---
print()
print("=" * 105)
print("  Montgomery 乗算 HLS 比較: 256-bit (xcvu9p, W=64, N=4)")
print("=" * 105)
print()

hdr = f"{'設計':22s} | {'clk[ns]':>8} | {'Fmax[MHz]':>9} | {'lat[clk]':>8} | {'lat[ns]':>8} | {'II':>4} | {'DSP':>4} | {'LUT':>6} | {'FF':>6} | 備考"
print(hdr)
print("-" * len(hdr))

ref_ns = cios_best.get('lat_max_ns', 0)

def print_row(name, r, note='', is_ref=False):
    if not r:
        print(f"{name:22s} | (レポート未発見)")
        return
    lat   = r.get('lat_max_ns', float('nan'))
    clk   = r.get('clk_ns', float('nan'))
    fmax  = r.get('fmax_mhz', float('nan'))
    lclk  = r.get('lat_max_clk', -1)
    ii    = r.get('ii_min', -1)
    dsp   = r.get('dsp', -1)
    lut   = r.get('lut', -1)
    ff    = r.get('ff', -1)
    ratio = f"[CIOS比 {lat/ref_ns:.2f}x]" if ref_ns and not is_ref else ""
    marker = " ★" if (ref_ns and lat < ref_ns) else ""
    print(f"{name:22s} | {clk:>8.3f} | {fmax:>9.1f} | {lclk:>8d} | {lat:>8.1f} | {ii:>4d} | {dsp:>4d} | {lut:>6d} | {ff:>6d} | {note} {ratio}{marker}")

# CIOS ベースライン
if cios_best:
    print_row("CIOS best (sweep)", cios_best, cios_best.get('label',''), is_ref=True)
print()

for name, rpt_rel, note in designs:
    r = parse_rpt(SCRIPT_DIR / rpt_rel)
    print_row(name, r, note)

print()
print("-" * len(hdr))
print("文献値 (参考 — デバイス・ツール異なる):")
lit = [
    ("Noyez TRETS 2024 (UltraScale+)", 203.0, "127cy @625MHz, FIOS, xczu9eg"),
    ("Gong KO-3 (Virtex-6)",            58.8, "4cy @68MHz, Karatsuba KO-3, RTL II=1"),
    ("Ding & Li NLP (Virtex-6)",         62.6, "NLP + Karatsuba 3/4-way"),
]
for name, ns, note in lit:
    print(f"  {name:38s} {ns:>7.1f} ns  ({note})")
print()
print("★ = CIOS best より速い")
print("注: lat[ns] = 推定クロック周期 × サイクル数 (HLS報告値はターゲットクロック基準のため再計算)")
