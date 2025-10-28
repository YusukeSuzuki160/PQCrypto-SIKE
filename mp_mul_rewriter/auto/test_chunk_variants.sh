#!/bin/bash
# test_chunk_variants.sh
# 異なるCHUNK_BITS設定でComba乗算をテスト

echo "=========================================="
echo "Testing different CHUNK_BITS configurations"
echo "=========================================="

# テストするCHUNK_BITS値
CHUNK_BITS_VALUES=(8 16 32 64 128)

for CHUNK in "${CHUNK_BITS_VALUES[@]}"; do
    echo ""
    echo "Testing with CHUNK_BITS = $CHUNK"
    echo "--------------------------------"
    
    # 元のファイルを読み込み、CHUNK_BITSを置換
    sed -e "s/#define MPX_CHUNK_BITS 64/#define MPX_CHUNK_BITS $CHUNK/" \
        test_comba_configurable.cpp > test_comba_chunk${CHUNK}.cpp
    
    # TCLスクリプト作成
    cat > "run_comba_chunk${CHUNK}.tcl" <<EOF
# HLS script for CHUNK_BITS=${CHUNK}
open_project -reset proj_comba_chunk${CHUNK}
set_top test_mul_comba_configurable

add_files test_comba_chunk${CHUNK}.cpp

open_solution "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 10 -name default

# C simulation
# csim_design  # テストベンチなしなのでスキップ

# C synthesis
puts "Running C synthesis for CHUNK_BITS=${CHUNK}..."
csynth_design

exit
EOF

    echo "Executing Vitis HLS for CHUNK_BITS=$CHUNK..."
    vitis_hls -f "run_comba_chunk${CHUNK}.tcl" > "hls_chunk${CHUNK}.log" 2>&1
    
    # レポートを保存
    REPORT_FILE="proj_comba_chunk${CHUNK}/solution1/syn/report/test_mul_comba_configurable_csynth.rpt"
    if [ -f "$REPORT_FILE" ]; then
        mkdir -p hls_comparison_results
        cp "$REPORT_FILE" "hls_comparison_results/comba_chunk${CHUNK}_csynth.rpt"
        echo "Report saved for CHUNK_BITS=$CHUNK"
    fi
done

echo ""
echo "=========================================="
echo "All tests completed!"
echo "=========================================="
echo ""
echo "Results are in: hls_comparison_results/"
echo ""
echo "To view results:"
echo "  ls -lh hls_comparison_results/comba_chunk*"
echo ""
echo "To extract key metrics:"
echo "  ./extract_metrics.sh hls_comparison_results/comba_chunk*.rpt"

