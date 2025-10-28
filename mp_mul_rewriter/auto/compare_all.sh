#!/bin/bash
# compare_all.sh
# 3つのバージョンすべてを実行して比較

echo "=========================================="
echo "HLS Performance Comparison"
echo "=========================================="
echo ""

# 結果ディレクトリ作成
mkdir -p hls_comparison_results

# テストケース定義
declare -a tests=(
    "orig:test_orig.cpp:Original (pre-conversion)"
    "converted:test_converted.cpp:Converted (PackedOps)"
    "comba:test_comba.cpp:Comba multiplication"
)

# 各テストを実行
for test_line in "${tests[@]}"; do
    IFS=':' read -r name source_file desc <<< "$test_line"
    
    echo ""
    echo "=========================================="
    echo "Testing: $name"
    echo "Description: $desc"
    echo "=========================================="
    
    # 個別のTCLスクリプトを作成
    cat > "run_${name}.tcl" <<EOF
# HLS script for $name
open_project -reset proj_${name}
set_top test_mul_${name}

# Add source file
add_files ${source_file}
EOF

    # ヘッダファイルがあれば追加
    if [ "$name" == "converted" ] && [ -f "mpx_packed.hpp" ]; then
        echo "add_files mpx_packed.hpp" >> "run_${name}.tcl"
    fi
    
    cat >> "run_${name}.tcl" <<EOF

open_solution "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 10 -name default

# C simulation (skipped - test bench not required)
# csim_design

# C synthesis
puts "Running C synthesis for $name..."
csynth_design

exit
EOF

    # HLSを実行
    echo "Executing Vitis HLS..."
    vitis_hls -f "run_${name}.tcl" > "hls_${name}.log" 2>&1
    
    # レポートを保存
    REPORT_FILE="proj_${name}/solution1/syn/report/test_mul_${name}_csynth.rpt"
    if [ -f "$REPORT_FILE" ]; then
        cp "$REPORT_FILE" "hls_comparison_results/${name}_csynth.rpt"
        echo "Report saved to: hls_comparison_results/${name}_csynth.rpt"
    fi
done

echo ""
echo "=========================================="
echo "Generating comparison summary..."
echo "=========================================="

# サマリーを生成
cat > hls_comparison_results/summary.txt <<EOF
HLS Performance Comparison Summary
==================================

Generated: $(date)

Test Cases:
1. orig: Original (pre-conversion) - test_orig.cpp
2. converted: Converted (PackedOps) - test_converted.cpp
3. comba: Comba multiplication - test_comba.cpp

Detailed reports are in: hls_comparison_results/

To view a report:
  cat hls_comparison_results/<name>_csynth.rpt
EOF

echo "Summary saved to: hls_comparison_results/summary.txt"
echo ""
echo "To view results:"
echo "  ls -lh hls_comparison_results/"
echo "  cat hls_comparison_results/*_csynth.rpt"

