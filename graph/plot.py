import matplotlib.pyplot as plt

# データの定義
bit_widths = [16, 32, 64, 128, 256]  # bit幅
latencies = [10.680, 3.000, 1.090, 0.610, 0.490]  # レイテンシ（サイクル）
dsps = [1, 4, 18, 50, 225]  # DSP使用数
luts = [5465, 5470, 5488, 5738, 5595]  # LUT使用数

# ラベル（ver1とver2を区別するため）
labels = ['16bit', '32bit', '64bit', '128bit', '256bit']

# 対数グラフの作成
fig_log, (ax1_log, ax2_log, ax3_log) = plt.subplots(3, 1, figsize=(12, 15))

# レイテンシの対数グラフ
ax1_log.plot(bit_widths, latencies, 'bo', markersize=8, label='Latency (cycles)')

ax1_log.set_xlabel('Bit Width', fontsize=12)
ax1_log.set_ylabel('Latency (us)', fontsize=12)
ax1_log.set_title('Latency vs Bit Width for schoolbook multiplication (Log Scale)', fontsize=14, fontweight='bold')
ax1_log.grid(True, alpha=0.3)
ax1_log.set_yscale('log')  # 対数スケールで表示
ax1_log.set_xlim(0, max(bit_widths) + 20)  # 原点を含むようにx軸の範囲を設定
ax1_log.set_ylim(bottom=min(latencies) * 0.5, top=max(latencies) * 1.5)  # 最小値と最大値を含むように設定
ax1_log.spines['left'].set_position(('data', 0))
ax1_log.spines['bottom'].set_position(('data', 0))
ax1_log.spines['top'].set_visible(False)
ax1_log.spines['right'].set_visible(False)
ax1_log.legend()

# 各点にラベルを追加
for i, (x, y, label) in enumerate(zip(bit_widths, latencies, labels)):
    ax1_log.annotate(label, (x, y), textcoords="offset points", xytext=(0,10), ha='center', fontsize=8)

# DSP使用数の対数グラフ
ax2_log.plot(bit_widths, dsps, 'ro', markersize=8, label='DSP Usage')

ax2_log.set_xlabel('Bit Width', fontsize=12)
ax2_log.set_ylabel('DSP Usage', fontsize=12)
ax2_log.set_title('DSP Usage vs Bit Width for schoolbook multiplication (Log Scale)', fontsize=14, fontweight='bold')
ax2_log.grid(True, alpha=0.3)
ax2_log.set_yscale('log')  # 対数スケールで表示
ax2_log.set_xlim(0, max(bit_widths) + 20)  # 原点を含むようにx軸の範囲を設定
ax2_log.set_ylim(bottom=min(dsps) * 0.5, top=max(dsps) * 1.5)  # 最小値と最大値を含むように設定
ax2_log.spines['left'].set_position(('data', 0))
ax2_log.spines['bottom'].set_position(('data', 0))
ax2_log.spines['top'].set_visible(False)
ax2_log.spines['right'].set_visible(False)
ax2_log.legend()

# 各点にラベルを追加
for i, (x, y, label) in enumerate(zip(bit_widths, dsps, labels)):
    ax2_log.annotate(label, (x, y), textcoords="offset points", xytext=(0,10), ha='center', fontsize=8)

# LUT使用数の対数グラフ
ax3_log.plot(bit_widths, luts, 'go', markersize=8, label='LUT Usage')

ax3_log.set_xlabel('Bit Width', fontsize=12)
ax3_log.set_ylabel('LUT Usage', fontsize=12)
ax3_log.set_title('LUT Usage vs Bit Width for schoolbook multiplication (Log Scale)', fontsize=14, fontweight='bold')
ax3_log.grid(True, alpha=0.3)
ax3_log.set_xlim(0, max(bit_widths) + 20)  # 原点を含むようにx軸の範囲を設定
ax3_log.set_ylim(bottom=min(luts) * 0.9, top=max(luts) * 1.1)  # 最小値と最大値を含むように設定
ax3_log.spines['left'].set_position(('data', 0))
ax3_log.spines['bottom'].set_position(('data', 0))
ax3_log.spines['top'].set_visible(False)
ax3_log.spines['right'].set_visible(False)
ax3_log.legend()

# 各点にラベルを追加
for i, (x, y, label) in enumerate(zip(bit_widths, luts, labels)):
    ax3_log.annotate(label, (x, y), textcoords="offset points", xytext=(0,10), ha='center', fontsize=8)

# レイアウトの調整
plt.tight_layout()

# 対数グラフを画像として保存
plt.savefig('mul_ver2_analysis_log.png', dpi=300, bbox_inches='tight')
plt.savefig('mul_ver2_analysis_log.pdf', bbox_inches='tight')
print("対数グラフを画像として保存しました:")
print("- mul_ver2_analysis_log.png (高解像度PNG)")
print("- mul_ver2_analysis_log.pdf (PDF)")

# 線形グラフの作成
fig_linear, (ax1_linear, ax2_linear, ax3_linear) = plt.subplots(3, 1, figsize=(12, 15))

# レイテンシの線形グラフ
ax1_linear.plot(bit_widths, latencies, 'bo', markersize=8, label='Latency (cycles)')

ax1_linear.set_xlabel('Bit Width', fontsize=12)
ax1_linear.set_ylabel('Latency (us)', fontsize=12)
ax1_linear.set_title('Latency vs Bit Width for mul_ver2 (Linear Scale)', fontsize=14, fontweight='bold')
ax1_linear.grid(True, alpha=0.3)
ax1_linear.set_xlim(0, max(bit_widths) + 20)  # 原点を含むようにx軸の範囲を設定
ax1_linear.set_ylim(bottom=0, top=max(latencies) * 1.1)  # 原点を含むようにy軸の範囲を設定
ax1_linear.spines['left'].set_position('zero')
ax1_linear.spines['bottom'].set_position('zero')
ax1_linear.spines['top'].set_visible(False)
ax1_linear.spines['right'].set_visible(False)
ax1_linear.legend()

# 各点にラベルを追加
for i, (x, y, label) in enumerate(zip(bit_widths, latencies, labels)):
    ax1_linear.annotate(label, (x, y), textcoords="offset points", xytext=(0,10), ha='center', fontsize=8)

# DSP使用数の線形グラフ
ax2_linear.plot(bit_widths, dsps, 'ro', markersize=8, label='DSP Usage')

ax2_linear.set_xlabel('Bit Width', fontsize=12)
ax2_linear.set_ylabel('DSP Usage', fontsize=12)
ax2_linear.set_title('DSP Usage vs Bit Width for mul_ver2 (Linear Scale)', fontsize=14, fontweight='bold')
ax2_linear.grid(True, alpha=0.3)
ax2_linear.set_xlim(0, max(bit_widths) + 20)  # 原点を含むようにx軸の範囲を設定
ax2_linear.set_ylim(bottom=0, top=max(dsps) * 1.1)  # 原点を含むようにy軸の範囲を設定
ax2_linear.spines['left'].set_position('zero')
ax2_linear.spines['bottom'].set_position('zero')
ax2_linear.spines['top'].set_visible(False)
ax2_linear.spines['right'].set_visible(False)
ax2_linear.legend()

# 各点にラベルを追加
for i, (x, y, label) in enumerate(zip(bit_widths, dsps, labels)):
    ax2_linear.annotate(label, (x, y), textcoords="offset points", xytext=(0,10), ha='center', fontsize=8)

# LUT使用数の線形グラフ
ax3_linear.plot(bit_widths, luts, 'go', markersize=8, label='LUT Usage')

ax3_linear.set_xlabel('Bit Width', fontsize=12)
ax3_linear.set_ylabel('LUT Usage', fontsize=12)
ax3_linear.set_title('LUT Usage vs Bit Width for mul_ver2 (Linear Scale)', fontsize=14, fontweight='bold')
ax3_linear.grid(True, alpha=0.3)
ax3_linear.set_xlim(0, max(bit_widths) + 20)  # 原点を含むようにx軸の範囲を設定
ax3_linear.set_ylim(bottom=0, top=max(luts) * 1.1)  # 原点を含むようにy軸の範囲を設定
ax3_linear.spines['left'].set_position('zero')
ax3_linear.spines['bottom'].set_position('zero')
ax3_linear.spines['top'].set_visible(False)
ax3_linear.spines['right'].set_visible(False)
ax3_linear.legend()

# 各点にラベルを追加
for i, (x, y, label) in enumerate(zip(bit_widths, luts, labels)):
    ax3_linear.annotate(label, (x, y), textcoords="offset points", xytext=(0,10), ha='center', fontsize=8)

# レイアウトの調整
plt.tight_layout()

# 線形グラフを画像として保存
plt.savefig('mul_ver2_analysis_linear.png', dpi=300, bbox_inches='tight')
plt.savefig('mul_ver2_analysis_linear.pdf', bbox_inches='tight')
print("線形グラフを画像として保存しました:")
print("- mul_ver2_analysis_linear.png (高解像度PNG)")
print("- mul_ver2_analysis_linear.pdf (PDF)")

# グラフを表示（オプション）
# plt.show()

# データの統計情報を表示
print("=== mul_ver2 合成結果分析 ===")
print(f"Bit Widths: {bit_widths}")
print(f"Latencies (cycles): {latencies}")
print(f"DSP Usage: {dsps}")
print(f"LUT Usage: {luts}")
print()

# 各指標の最小値と最大値を表示
print("=== 統計情報 ===")
print(f"Latency - Min: {min(latencies):,} cycles, Max: {max(latencies):,} cycles")
print(f"DSP Usage - Min: {min(dsps):,}, Max: {max(dsps):,}")
print(f"LUT Usage - Min: {min(luts):,}, Max: {max(luts):,}")
print()

# 64bitのver1とver2の比較
print("=== 64bit ver1 vs ver2 比較 ===")
ver1_idx = 2  # 64bit_ver1のインデックス
ver2_idx = 3  # 64bit_ver2のインデックス

print(f"Latency: ver1={latencies[ver1_idx]:,} cycles, ver2={latencies[ver2_idx]:,} cycles")
print(f"DSP: ver1={dsps[ver1_idx]:,}, ver2={dsps[ver2_idx]:,}")
print(f"LUT: ver1={luts[ver1_idx]:,}, ver2={luts[ver2_idx]:,}")

latency_diff = latencies[ver2_idx] - latencies[ver1_idx]
dsp_diff = dsps[ver2_idx] - dsps[ver1_idx]
lut_diff = luts[ver2_idx] - luts[ver1_idx]

print(f"Difference: Latency={latency_diff:+,} cycles, DSP={dsp_diff:+,}, LUT={lut_diff:+,}")
