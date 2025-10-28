#!/bin/bash
# run_single_test.sh
# 単一のテストケースをHLSで実行

TEST_NAME=$1
DESCRIPTION=$2
SOURCE_FILE=$3

if [ -z "$TEST_NAME" ] || [ -z "$SOURCE_FILE" ]; then
    echo "Usage: $0 <test_name> <description> <source_file>"
    exit 1
fi

echo "=========================================="
echo "Running HLS test: $TEST_NAME"
echo "Description: $DESCRIPTION"
echo "=========================================="

# TCLスクリプトを作成
TCL_SCRIPT="run_${TEST_NAME}.tcl"
cat > $TCL_SCRIPT <<EOF
# HLS script for $TEST_NAME
open_project -reset proj_${TEST_NAME}
set_top test_mul_${TEST_NAME}

# Add source file
add_files ${SOURCE_FILE}

# Add header if exists
EOF

# ヘッダファイルをチェックして追加
if [ -f "mpx_packed.hpp" ]; then
    echo "add_files mpx_packed.hpp" >> $TCL_SCRIPT
fi

cat >> $TCL_SCRIPT <<EOF

open_solution "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 10 -name default

# C simulation (skipped - test bench not required)
# csim_design

# C synthesis
puts "Running C synthesis..."
csynth_design

# Cosimulation (optional)
# cosim_design

exit
EOF

# TCLスクリプトを実行
echo "Executing Vitis HLS..."
vitis_hls -f $TCL_SCRIPT

# レポートをコピー
REPORT_FILE="proj_${TEST_NAME}/solution1/syn/report/test_mul_${TEST_NAME}_csynth.rpt"
if [ -f "$REPORT_FILE" ]; then
    mkdir -p hls_results
    cp "$REPORT_FILE" "hls_results/${TEST_NAME}_csynth.rpt"
    echo ""
    echo "=========================================="
    echo "Report saved to: hls_results/${TEST_NAME}_csynth.rpt"
    echo "=========================================="
    
    # 主要なメトリクスを表示
    echo ""
    echo "Key metrics from the report:"
    grep -A5 "Performance & Resource Estimates" "$REPORT_FILE" || true
else
    echo "Warning: Report file not found: $REPORT_FILE"
fi

