#!/bin/bash
# test_both_configurable.sh
# mpx_ifaceとmpx_combaの両方で異なるBLOCK_BITS/CHUNK_BITS設定をテスト

echo "=========================================="
echo "Testing mpx_iface and mpx_comba"
echo "with different BLOCK_BITS/CHUNK_BITS"
echo "=========================================="

# テストするビット幅（ユーザーの要求: 16, 32, 64, 128, 256）
BITS_VALUES=(16 32 64 128 256)

mkdir -p hls_comparison_results

for BITS in "${BITS_VALUES[@]}"; do
    echo ""
    echo "=========================================="
    echo "Testing with BLOCK_BITS/CHUNK_BITS = $BITS"
    echo "=========================================="
    
    # mpx_iface版
    echo ""
    echo "--- mpx_iface with BLOCK_BITS=$BITS ---"
    
    # 元のファイルを読み込み、BLOCK_BITSを置換
    sed -e "s/#define BLOCK_BITS 64/#define BLOCK_BITS $BITS/" \
        test_iface_configurable.cpp > test_iface_bits${BITS}.cpp
    
    # TCLスクリプト作成
    cat > "run_iface_bits${BITS}.tcl" <<EOF
# HLS script for iface BLOCK_BITS=${BITS}
open_project -reset proj_iface_bits${BITS}
set_top test_mul_iface_configurable

add_files test_iface_bits${BITS}.cpp

open_solution "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 10 -name default

# csim_design  # テストベンチなしなのでスキップ
puts "Running C synthesis for iface BLOCK_BITS=${BITS}..."
csynth_design

exit
EOF

    echo "  Executing vitis_hls..."
    vitis_hls -f "run_iface_bits${BITS}.tcl" > "hls_iface_bits${BITS}.log" 2>&1
    
    # レポートを保存
    REPORT_FILE="proj_iface_bits${BITS}/solution1/syn/report/test_mul_iface_configurable_csynth.rpt"
    if [ -f "$REPORT_FILE" ]; then
        cp "$REPORT_FILE" "hls_comparison_results/iface_bits${BITS}_csynth.rpt"
        echo "  ✓ iface BLOCK_BITS=$BITS: report saved"
    else
        echo "  ✗ iface BLOCK_BITS=$BITS: report not found"
    fi
    
    # mpx_comba版
    echo ""
    echo "--- mpx_comba with CHUNK_BITS=$BITS ---"
    
    # 元のファイルを読み込み、CHUNK_BITSを置換
    sed -e "s/#define MPX_CHUNK_BITS 64/#define MPX_CHUNK_BITS $BITS/" \
        test_comba_configurable.cpp > test_comba_bits${BITS}.cpp
    
    # TCLスクリプト作成
    cat > "run_comba_bits${BITS}.tcl" <<EOF
# HLS script for comba CHUNK_BITS=${BITS}
open_project -reset proj_comba_bits${BITS}
set_top test_mul_comba_configurable

add_files test_comba_bits${BITS}.cpp

open_solution "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 10 -name default

# csim_design  # テストベンチなしなのでスキップ
puts "Running C synthesis for comba CHUNK_BITS=${BITS}..."
csynth_design

exit
EOF

    echo "  Executing vitis_hls..."
    vitis_hls -f "run_comba_bits${BITS}.tcl" > "hls_comba_bits${BITS}.log" 2>&1
    
    # レポートを保存
    REPORT_FILE="proj_comba_bits${BITS}/solution1/syn/report/test_mul_comba_configurable_csynth.rpt"
    if [ -f "$REPORT_FILE" ]; then
        cp "$REPORT_FILE" "hls_comparison_results/comba_bits${BITS}_csynth.rpt"
        echo "  ✓ comba CHUNK_BITS=$BITS: report saved"
    else
        echo "  ✗ comba CHUNK_BITS=$BITS: report not found"
    fi
done

echo ""
echo "=========================================="
echo "All tests completed!"
echo "=========================================="
echo ""
echo "Results are in: hls_comparison_results/"
echo ""
echo "Generated files:"
echo "  - iface_bits16_csynth.rpt, iface_bits32_csynth.rpt, etc."
echo "  - comba_bits16_csynth.rpt, comba_bits32_csynth.rpt, etc."
echo ""
echo "To view results:"
echo "  ls -lh hls_comparison_results/"
echo ""
echo "To extract key metrics:"
echo "  ./extract_metrics.sh hls_comparison_results/*.rpt"

