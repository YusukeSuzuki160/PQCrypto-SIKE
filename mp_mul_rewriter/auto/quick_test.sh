#!/bin/bash
# quick_test.sh
# 簡単な比較テスト（少数のCHUNK_BITSのみ）

echo "=========================================="
echo "Quick HLS Performance Comparison"
echo "=========================================="
echo ""

mkdir -p hls_comparison_results

# テストケース（重要なもののみ）
tests=(
    "test_orig.cpp:orig:Original"
    "test_converted.cpp:converted:Converted"
    "test_comba.cpp:comba:Comba (CHUNK_BITS=64)"
)

echo "Running quick tests..."
for test_line in "${tests[@]}"; do
    IFS=':' read -r source name desc <<< "$test_line"
    
    echo ""
    echo "Testing: $name - $desc"
    
    # TCLスクリプト作成
    cat > "run_${name}.tcl" <<EOF
open_project -reset proj_${name}
set_top test_mul_${name}

add_files ${source}

open_solution "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 10 -name default

# csim_design  # テストベンチなしなのでスキップ
puts "Running C synthesis for ${name}..."
csynth_design

exit
EOF

    # HLSを実行（logをリダイレクト）
    echo "  Executing vitis_hls..."
    vitis_hls -f "run_${name}.tcl" > "hls_${name}.log" 2>&1 &
    PIDS+=($!)
done

# すべてのプロセスが完了するまで待機
echo ""
echo "Waiting for all tests to complete..."
for PID in "${PIDS[@]}"; do
    wait $PID
done

echo ""
echo "=========================================="
echo "Results:"
echo "=========================================="

for test_line in "${tests[@]}"; do
    IFS=':' read -r source name desc <<< "$test_line"
    
    REPORT_FILE="proj_${name}/solution1/syn/report/test_mul_${name}_csynth.rpt"
    
    if [ -f "$REPORT_FILE" ]; then
        cp "$REPORT_FILE" "hls_comparison_results/${name}_csynth.rpt"
        echo "✓ $name: report saved"
    else
        echo "✗ $name: report not found"
    fi
done

echo ""
echo "Results are in: hls_comparison_results/"
echo ""
echo "To view a specific report:"
echo "  cat hls_comparison_results/<name>_csynth.rpt"
echo ""
echo "To extract metrics:"
echo "  ./extract_metrics.sh hls_comparison_results/*.rpt"

