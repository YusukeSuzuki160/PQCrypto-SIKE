#!/usr/bin/env python3
"""
parse_new_designs.py
FIOS / SOS / Karatsuba の HLS 合成結果を解析して比較表を出力する。
既存スイープの最良 CIOS 結果 (W64/N4/CS1) も参照列として含む。
"""

import re
import csv
from pathlib import Path

SCRIPT_DIR = Path(__file__).parent.resolve()

# ---- csynth レポートのパーサ ----
def parse_rpt(rpt_path: Path) -> dict:
    if not rpt_path.exists():
        return {}
    text = rpt_path.read_text()
    r = {}

    # Timing: |ap_clk  |  10.00 ns|  6.899 ns|     2.70 ns|
    m = re.search(r'\|ap_clk\s*\|[\s\d.]+ns\|\s*([\d.]+)\s*ns\s*\|', text)
    if m:
        r['clk_ns'] = float(m.group(1))

    # Latency summary row (us units):
    # |   min   |   max   |    min   |    max   | min | max |   Type  |
    # |       23|       23|  0.230 us|  0.230 us|   24|   24|       no|
    # Match the first data row after the header (non-header = starts with spaces+digit)
    m = re.search(
        r'\|\s*(\d+)\s*\|\s*(\d+)\s*\|\s*([\d.]+)\s*us\s*\|\s*([\d.]+)\s*us\s*\|\s*(\d+)\s*\|\s*(\d+)',
        text)
    if m:
        r['lat_min_clk'] = int(m.group(1))
        r['lat_max_clk'] = int(m.group(2))
        r['lat_min_ns']  = float(m.group(3)) * 1000.0  # us → ns
        r['lat_max_ns']  = float(m.group(4)) * 1000.0
        r['ii_min']      = int(m.group(5))
        r['ii_max']      = int(m.group(6))

    # Resources — Summary "Total" row: |Total  | BRAM | DSP | FF | LUT | URAM |
    # Format: |Total                |        0|    90|     3817|     3807|    0|
    m = re.search(
        r'\|Total\s+\|\s*(\d+)\s*\|\s*(\d+)\s*\|\s*(\d+)\s*\|\s*(\d+)\s*\|\s*(\d+)\s*\|',
        text)
    if m:
        r['bram'] = int(m.group(1))
        r['dsp']  = int(m.group(2))
        r['ff']   = int(m.group(3))
        r['lut']  = int(m.group(4))

    if 'clk_ns' in r:
        r['fmax_mhz'] = round(1000.0 / r['clk_ns'], 1)
    # 実際の遅延 = 推定クロック周期 × サイクル数 (HLS報告値はターゲットクロック基準)
    if 'clk_ns' in r and 'lat_max_clk' in r:
        r['lat_max_ns'] = round(r['clk_ns'] * r['lat_max_clk'], 1)

    return r

# ---- 新設計の解析 ----
designs = {
    'FIOS':      SCRIPT_DIR / 'proj_mont_fios'      / 'solution1' / 'syn' / 'report' / 'mont_mul_fios_csynth.rpt',
    'SOS':       SCRIPT_DIR / 'proj_mont_sos'       / 'solution1' / 'syn' / 'report' / 'mont_mul_sos_csynth.rpt',
    'Karatsuba': SCRIPT_DIR / 'proj_mont_karatsuba' / 'solution1' / 'syn' / 'report' / 'mont_mul_karatsuba_csynth.rpt',
}

# ---- 既存スイープから最良 CIOS (W64/N4/CS1) を読む ----
cios_best = {}
sweep_csv = SCRIPT_DIR / 'sweep_results.csv'
if sweep_csv.exists():
    with open(sweep_csv) as f:
        rows = list(csv.DictReader(f))
    # 256-bit, W64, timing_ok=True, CSUB=1, lat_abs_ns 最小
    cands = [r for r in rows
             if r.get('MONT_TOTAL_BITS') == '256'
             and r.get('MONT_WORD_BITS') == '64'
             and r.get('timing_ok') == 'True'
             and r.get('MONT_CONDSUB_UNROLL') == '1']
    if cands:
        best = min(cands, key=lambda r: float(r['lat_abs_ns']))
        cios_best = {
            'clk_ns':       float(best['clk_ns']),
            'fmax_mhz':     float(best['fmax_mhz']),
            'lat_max_clk':  int(best['lat_max']),
            'lat_max_ns':   float(best['lat_abs_ns']),
            'ii_min':       int(best['ii_min']),
            'lut':          int(best['lut']),
            'ff':           int(best['ff']),
            'dsp':          int(best['dsp']),
            'bram':         int(best['bram']),
            'label':        best['label'],
        }

# ---- 文献値 ----
literature = {
    'Noyez 2024\n(UltraScale+)':  {'lat_max_ns': 203.0,  'note': '127cy @625MHz, FIOS, xczu9eg'},
    'Gong KO-3\n(Virtex-6)':      {'lat_max_ns':  58.8,  'note': '4cy @68MHz, Karatsuba KO-3, II=1'},
    'Ding & Li NLP\n(Virtex-6)':  {'lat_max_ns':  62.6,  'note': 'NLP + Karatsuba 3/4-way'},
}

# ---- 表出力 ----
print()
print("=" * 90)
print("  モンゴメリ乗算 HLS 比較: 256-bit (xcvu9p @10ns target, W=64, N=4)")
print("=" * 90)
print()

hdr = f"{'設計':22s} | {'clk[ns]':>8} | {'Fmax[MHz]':>10} | {'lat[clk]':>9} | {'lat[ns]':>8} | {'II':>4} | {'DSP':>4} | {'LUT':>6} | {'FF':>6}"
print(hdr)
print("-" * len(hdr))

# CIOS best from sweep
if cios_best:
    print(f"{'CIOS best (sweep)':22s} | {cios_best['clk_ns']:>8.3f} | {cios_best['fmax_mhz']:>10.1f} | {cios_best['lat_max_clk']:>9d} | {cios_best['lat_max_ns']:>8.1f} | {cios_best['ii_min']:>4d} | {cios_best['dsp']:>4d} | {cios_best['lut']:>6d} | {cios_best['ff']:>6d}")
    print(f"  ({cios_best.get('label','')})")

print()

# New designs
for name, rpt_path in designs.items():
    r = parse_rpt(rpt_path)
    if not r:
        print(f"{'['+name+']':22s} | (合成結果未見つかり — run_new_designs.sh を実行してください)")
    else:
        lat_ns   = r.get('lat_max_ns',  float('nan'))
        lat_clk  = r.get('lat_max_clk', -1)
        clk      = r.get('clk_ns', float('nan'))
        fmax     = r.get('fmax_mhz', float('nan'))
        ii       = r.get('ii_min', -1)
        dsp      = r.get('dsp', -1)
        lut      = r.get('lut', -1)
        ff       = r.get('ff', -1)
        print(f"{name:22s} | {clk:>8.3f} | {fmax:>10.1f} | {lat_clk:>9d} | {lat_ns:>8.1f} | {ii:>4d} | {dsp:>4d} | {lut:>6d} | {ff:>6d}")
        if cios_best and lat_ns > 0:
            ratio = lat_ns / cios_best['lat_max_ns']
            print(f"  → CIOS比: {ratio:.2f}x  ({'速い' if ratio<1 else '遅い'})")

print()
print("-" * len(hdr))
print("文献値 (参考 — デバイス・ツール異なる):")
for lit_name, lit in literature.items():
    note = lit.get('note', '')
    print(f"  {lit_name.replace(chr(10),' '):35s} {lit['lat_max_ns']:>7.1f} ns  ({note})")

print()
print("注意:")
print("  - 新設計は T=uint64_t / NWORDS=4 (256-bit) で CIOS sweep 最良設定と同条件")
print("  - FIOS: キャリー連鎖深さ N-1=3 (CIOS の 2N-1=7 より短い)")
print("  - SOS: 完全積+REDC の 2 フェーズ (中間バッファ 2N+1=9 語)")
print("  - Karatsuba: 3 独立サブ積 + REDC (N 大のほど優位)")
