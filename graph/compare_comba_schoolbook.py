#!/usr/bin/env python3
"""
Comba乗算 vs Schoolbook乗算：レイテンシ比較分析
"""

import matplotlib.pyplot as plt
import numpy as np

# データの定義
bit_widths = np.array([16, 32, 64, 128, 256])

# Schoolbook乗算
latencies_schoolbook = np.array([10.680, 3.000, 1.090, 0.610, 0.490])
dsps_schoolbook = np.array([1, 4, 18, 50, 225])

# Comba乗算
latencies_comba = np.array([7.980, 3.180, 1.330, 1.100, 0.780])
dsps_comba = np.array([1, 4, 16, 50, 225])

# レイテンシの差（Comba - Schoolbook）
latency_diff = latencies_comba - latencies_schoolbook

# グラフの作成
fig, axes = plt.subplots(2, 2, figsize=(14, 12))

# 1. レイテンシの比較
ax1 = axes[0, 0]
ax1.plot(bit_widths, latencies_schoolbook, 'bo-', markersize=10, label='Schoolbook', linewidth=2)
ax1.plot(bit_widths, latencies_comba, 'ro-', markersize=10, label='Comba', linewidth=2)
ax1.set_xlabel('Bit Width', fontsize=12)
ax1.set_ylabel('Latency (cycles)', fontsize=12)
ax1.set_title('Latency Comparison: Comba vs Schoolbook', fontsize=14, fontweight='bold')
ax1.grid(True, alpha=0.3)
ax1.legend()
ax1.set_yscale('log')
for i, (bw, sb, cb) in enumerate(zip(bit_widths, latencies_schoolbook, latencies_comba)):
    ax1.annotate(f'{bw}bit', (bw, max(sb, cb)), xytext=(0, 10), textcoords='offset points', 
                 ha='center', fontsize=8)

# 2. レイテンシの差
ax2 = axes[0, 1]
colors = ['green' if d < 0 else 'red' for d in latency_diff]
bars = ax2.bar(bit_widths, latency_diff, color=colors, alpha=0.7, width=20)
ax2.axhline(y=0, color='black', linestyle='--', linewidth=1)
ax2.set_xlabel('Bit Width', fontsize=12)
ax2.set_ylabel('Latency Difference (Comba - Schoolbook)', fontsize=12)
ax2.set_title('Latency Difference', fontsize=14, fontweight='bold')
ax2.grid(True, alpha=0.3, axis='y')
for i, (bw, diff) in enumerate(zip(bit_widths, latency_diff)):
    ax2.annotate(f'{diff:+.3f}', (bw, diff), xytext=(0, 10 if diff > 0 else -20), 
                 textcoords='offset points', ha='center', fontsize=9, fontweight='bold')
ax2.text(0.02, 0.98, 'Negative = Comba faster\nPositive = Schoolbook faster', 
         transform=ax2.transAxes, fontsize=9, verticalalignment='top',
         bbox=dict(boxstyle='round', facecolor='wheat', alpha=0.5))

# 3. DSP使用数とレイテンシの関係
ax3 = axes[1, 0]
ax3.scatter(dsps_schoolbook, latencies_schoolbook, s=150, alpha=0.7, label='Schoolbook', 
           color='blue', marker='o', edgecolors='black', linewidths=1.5)
ax3.scatter(dsps_comba, latencies_comba, s=150, alpha=0.7, label='Comba', 
           color='red', marker='s', edgecolors='black', linewidths=1.5)
for i, (dsp_sb, dsp_cb, lat_sb, lat_cb, bw) in enumerate(zip(dsps_schoolbook, dsps_comba, 
                                                              latencies_schoolbook, latencies_comba, bit_widths)):
    ax3.annotate(f'{bw}bit', (dsp_sb, lat_sb), xytext=(5, 5), textcoords='offset points', 
                 fontsize=7, color='blue')
    if dsp_sb != dsp_cb:
        ax3.annotate(f'{bw}bit', (dsp_cb, lat_cb), xytext=(5, 5), textcoords='offset points', 
                     fontsize=7, color='red')
ax3.set_xlabel('DSP Usage (Parallelism)', fontsize=12)
ax3.set_ylabel('Latency (cycles)', fontsize=12)
ax3.set_title('Latency vs DSP Usage', fontsize=14, fontweight='bold')
ax3.grid(True, alpha=0.3)
ax3.legend()
ax3.set_xscale('log')
ax3.set_yscale('log')

# 4. 効率性指標（レイテンシ × DSP使用数）
ax4 = axes[1, 1]
efficiency_schoolbook = latencies_schoolbook * dsps_schoolbook
efficiency_comba = latencies_comba * dsps_comba
ax4.plot(bit_widths, efficiency_schoolbook, 'bo-', markersize=10, label='Schoolbook', linewidth=2)
ax4.plot(bit_widths, efficiency_comba, 'ro-', markersize=10, label='Comba', linewidth=2)
ax4.set_xlabel('Bit Width', fontsize=12)
ax4.set_ylabel('Efficiency (Latency × DSP)', fontsize=12)
ax4.set_title('Efficiency Metric (Lower is Better)', fontsize=14, fontweight='bold')
ax4.grid(True, alpha=0.3)
ax4.legend()
ax4.set_yscale('log')

plt.tight_layout()
plt.savefig('comba_vs_schoolbook_comparison.png', dpi=300, bbox_inches='tight')
plt.savefig('comba_vs_schoolbook_comparison.pdf', bbox_inches='tight')
print("比較グラフを保存しました:")
print("- comba_vs_schoolbook_comparison.png")
print("- comba_vs_schoolbook_comparison.pdf")

# 統計情報の表示
print("\n=== Comba vs Schoolbook 比較分析 ===")
print("\n【レイテンシ比較】")
print(f"{'Bit幅':<8} {'Schoolbook':<12} {'Comba':<12} {'差':<12} {'Combaの方が'}")
print("-" * 60)
for i, (bw, sb, cb, diff) in enumerate(zip(bit_widths, latencies_schoolbook, latencies_comba, latency_diff)):
    faster = "速い" if diff < 0 else "遅い"
    print(f"{bw:<8} {sb:<12.3f} {cb:<12.3f} {diff:+.3f}      {faster}")

print("\n【DSP使用数比較】")
print(f"{'Bit幅':<8} {'Schoolbook':<12} {'Comba':<12} {'差':<12}")
print("-" * 50)
for i, (bw, sb, cb) in enumerate(zip(bit_widths, dsps_schoolbook, dsps_comba)):
    diff = cb - sb
    print(f"{bw:<8} {sb:<12} {cb:<12} {diff:+d}")

print("\n【主な観察】")
print("1. 16bit: Combaの方が2.7サイクル速い")
print("2. 32bit以降: Schoolbookの方が速い（0.18～0.49サイクル）")
print("3. bit幅が大きくなるほど、Combaの不利が拡大")
print("4. DSP使用数はほぼ同じ（64bitでCombaが2個少ない）")

print("\n【Combaが遅い理由】")
print("1. ビット抽出処理（get_bits_as_chunk）のオーバーヘッド")
print("2. 各対角ごとのパッキング処理（pack.push）の頻度")
print("3. 不規則なメモリアクセスパターン")
print("4. 条件分岐によるパイプラインストール")

