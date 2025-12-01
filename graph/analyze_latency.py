#!/usr/bin/env python3
"""
レイテンシ分析スクリプト
bit幅増加時のレイテンシ減少現象を分析
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

# レイテンシの減少率を計算
def calculate_reduction_rate(latencies):
    """前のbit幅からのレイテンシ減少率を計算"""
    reductions = []
    for i in range(1, len(latencies)):
        reduction = (latencies[i-1] - latencies[i]) / latencies[i-1] * 100
        reductions.append(reduction)
    return reductions

reductions_schoolbook = calculate_reduction_rate(latencies_schoolbook)
reductions_comba = calculate_reduction_rate(latencies_comba)

# 並列度（DSP使用数）とレイテンシの関係
parallelism_schoolbook = dsps_schoolbook
parallelism_comba = dsps_comba

# 効率性指標: レイテンシ × DSP使用数（小さいほど効率的）
efficiency_schoolbook = latencies_schoolbook * dsps_schoolbook
efficiency_comba = latencies_comba * dsps_comba

# グラフの作成
fig, axes = plt.subplots(2, 2, figsize=(14, 12))

# 1. レイテンシの推移
ax1 = axes[0, 0]
ax1.plot(bit_widths, latencies_schoolbook, 'bo-', markersize=8, label='Schoolbook', linewidth=2)
ax1.plot(bit_widths, latencies_comba, 'ro-', markersize=8, label='Comba', linewidth=2)
ax1.set_xlabel('Bit Width', fontsize=12)
ax1.set_ylabel('Latency (cycles)', fontsize=12)
ax1.set_title('Latency vs Bit Width', fontsize=14, fontweight='bold')
ax1.grid(True, alpha=0.3)
ax1.legend()
ax1.set_yscale('log')

# 2. レイテンシ減少率
ax2 = axes[0, 1]
bit_pairs = [f'{bit_widths[i-1]}→{bit_widths[i]}' for i in range(1, len(bit_widths))]
x_pos = np.arange(len(bit_pairs))
width = 0.35
ax2.bar(x_pos - width/2, reductions_schoolbook, width, label='Schoolbook', color='blue', alpha=0.7)
ax2.bar(x_pos + width/2, reductions_comba, width, label='Comba', color='red', alpha=0.7)
ax2.set_xlabel('Bit Width Transition', fontsize=12)
ax2.set_ylabel('Reduction Rate (%)', fontsize=12)
ax2.set_title('Latency Reduction Rate', fontsize=14, fontweight='bold')
ax2.set_xticks(x_pos)
ax2.set_xticklabels(bit_pairs, rotation=45, ha='right')
ax2.grid(True, alpha=0.3, axis='y')
ax2.legend()

# 3. 並列度（DSP使用数）とレイテンシの関係
ax3 = axes[1, 0]
ax3.scatter(parallelism_schoolbook, latencies_schoolbook, s=100, alpha=0.7, label='Schoolbook', color='blue')
ax3.scatter(parallelism_comba, latencies_comba, s=100, alpha=0.7, label='Comba', color='red')
for i, (p, l, b) in enumerate(zip(parallelism_schoolbook, latencies_schoolbook, bit_widths)):
    ax3.annotate(f'{b}bit', (p, l), xytext=(5, 5), textcoords='offset points', fontsize=8)
ax3.set_xlabel('Parallelism (DSP Usage)', fontsize=12)
ax3.set_ylabel('Latency (cycles)', fontsize=12)
ax3.set_title('Latency vs Parallelism', fontsize=14, fontweight='bold')
ax3.grid(True, alpha=0.3)
ax3.legend()
ax3.set_xscale('log')
ax3.set_yscale('log')

# 4. 効率性指標（レイテンシ × DSP使用数）
ax4 = axes[1, 1]
ax4.plot(bit_widths, efficiency_schoolbook, 'bo-', markersize=8, label='Schoolbook', linewidth=2)
ax4.plot(bit_widths, efficiency_comba, 'ro-', markersize=8, label='Comba', linewidth=2)
ax4.set_xlabel('Bit Width', fontsize=12)
ax4.set_ylabel('Efficiency (Latency × DSP)', fontsize=12)
ax4.set_title('Efficiency Metric (Lower is Better)', fontsize=14, fontweight='bold')
ax4.grid(True, alpha=0.3)
ax4.legend()
ax4.set_yscale('log')

plt.tight_layout()
plt.savefig('latency_analysis.png', dpi=300, bbox_inches='tight')
plt.savefig('latency_analysis.pdf', bbox_inches='tight')
print("レイテンシ分析グラフを保存しました:")
print("- latency_analysis.png")
print("- latency_analysis.pdf")

# 統計情報の表示
print("\n=== レイテンシ分析結果 ===")
print("\n【Schoolbook乗算】")
print(f"レイテンシ: {latencies_schoolbook}")
print(f"DSP使用数: {dsps_schoolbook}")
print(f"レイテンシ減少率: {[f'{r:.1f}%' for r in reductions_schoolbook]}")
print(f"効率性指標: {efficiency_schoolbook}")

print("\n【Comba乗算】")
print(f"レイテンシ: {latencies_comba}")
print(f"DSP使用数: {dsps_comba}")
print(f"レイテンシ減少率: {[f'{r:.1f}%' for r in reductions_comba]}")
print(f"効率性指標: {efficiency_comba}")

print("\n【考察】")
print("1. レイテンシはbit幅が増えると減少している")
print("2. 小さいbit幅（16→32→64）では大幅な減少")
print("3. 大きいbit幅（128→256）では減少率が小さくなる")
print("4. DSP使用数（並列度）が増加すると、レイテンシが減少")
print("5. 効率性指標（レイテンシ×DSP）は、bit幅が大きいほど大きくなる")

