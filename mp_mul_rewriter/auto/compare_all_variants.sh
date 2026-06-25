#!/bin/bash
# compare_all_variants.sh
# すべてのバージョンとBLOCK_BITS/CHUNK_BITS設定をテスト

echo "=========================================="
echo "Complete HLS Performance Comparison"
echo "All variants with different bit widths"
echo "=========================================="

mkdir -p hls_comparison_results

# テストケース（基本的なもの）
declare -a basic_tests=(
    "test_orig.cpp:orig:Original"
    "test_converted.cpp:converted:Converted"
    "test_comba.cpp:comba:Comba (fixed)"
    "test_packed_mpx_simple.cpp:packed_simple:Packed (512bit)"
    "test_karatsuba_synth.cpp:karatsuba_synth:Karatsuba PackedOps"
)

# 基本的なテストを実行
echo ""
echo "Running basic tests..."
for test_line in "${basic_tests[@]}"; do
    IFS=':' read -r source name desc <<< "$test_line"
    
    echo ""
    echo "Testing: $name - $desc"
    
    # TCLスクリプト作成
    cat > "run_${name}.tcl" <<EOF
open_project -reset proj_${name}
set_top test_mul_${name}

add_files ${source}
EOF

    # ヘッダファイルを追加
    if [ "$name" == "converted" ] || [ "$name" == "packed_simple" ]; then
        if [ -f "mpx_packed.hpp" ]; then
            echo "add_files mpx_packed.hpp" >> "run_${name}.tcl"
        fi
    fi
    if [ "$name" == "karatsuba_synth" ]; then
        if [ -f "mpx_packed_karatsuba.hpp" ]; then
            echo "add_files mpx_packed_karatsuba.hpp" >> "run_${name}.tcl"
        fi
    fi
    
    cat >> "run_${name}.tcl" <<EOF

open_solution "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 10 -name default

# csim_design  # テストベンチなしなのでスキップ
puts "Running C synthesis for ${name}..."
csynth_design

exit
EOF

    # HLSを実行
    echo "  Executing vitis_hls..."
    vitis_hls -f "run_${name}.tcl" > "hls_${name}.log" 2>&1
    
    # レポートを保存
    REPORT_FILE="proj_${name}/solution1/syn/report/test_mul_${name}_csynth.rpt"
    if [ -f "$REPORT_FILE" ]; then
        cp "$REPORT_FILE" "hls_comparison_results/${name}_csynth.rpt"
        echo "  ✓ $name: report saved"
    else
        echo "  ✗ $name: report not found"
    fi
done

# ビット幅バリエーションテスト
echo ""
echo "=========================================="
echo "Running bit width variation tests..."
echo "=========================================="

# BLOCK_BITS/CHUNK_BITSの設定値
BITS_VALUES=(16 32 64 128 256)

for BITS in "${BITS_VALUES[@]}"; do
    echo ""
    echo "Testing with BLOCK_BITS/CHUNK_BITS = $BITS"
    
    # mpx_iface版
    if [ -f "test_iface_configurable.cpp" ]; then
        sed -e "s/#define BLOCK_BITS 64/#define BLOCK_BITS $BITS/" \
            test_iface_configurable.cpp > test_iface_bits${BITS}.cpp
        
        cat > "run_iface_bits${BITS}.tcl" <<EOF
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

        echo "  Executing iface with BLOCK_BITS=$BITS..."
        vitis_hls -f "run_iface_bits${BITS}.tcl" > "hls_iface_bits${BITS}.log" 2>&1
        
        REPORT_FILE="proj_iface_bits${BITS}/solution1/syn/report/test_mul_iface_configurable_csynth.rpt"
        if [ -f "$REPORT_FILE" ]; then
            cp "$REPORT_FILE" "hls_comparison_results/iface_bits${BITS}_csynth.rpt"
            echo "  ✓ iface BLOCK_BITS=$BITS saved"
        fi
    fi
    
    # mpx_comba版
    if [ -f "test_comba_configurable.cpp" ]; then
        sed -e "s/#define MPX_CHUNK_BITS 64/#define MPX_CHUNK_BITS $BITS/" \
            test_comba_configurable.cpp > test_comba_bits${BITS}.cpp
        
        cat > "run_comba_bits${BITS}.tcl" <<EOF
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

        echo "  Executing comba with CHUNK_BITS=$BITS..."
        vitis_hls -f "run_comba_bits${BITS}.tcl" > "hls_comba_bits${BITS}.log" 2>&1
        
        REPORT_FILE="proj_comba_bits${BITS}/solution1/syn/report/test_mul_comba_configurable_csynth.rpt"
        if [ -f "$REPORT_FILE" ]; then
            cp "$REPORT_FILE" "hls_comparison_results/comba_bits${BITS}_csynth.rpt"
            echo "  ✓ comba CHUNK_BITS=$BITS saved"
        fi
    fi
done

# サマリーを生成
echo ""
echo "=========================================="
echo "Generating summary..."
echo "=========================================="

cat > hls_comparison_results/complete_summary.txt <<EOF
HLS Performance Comparison - Complete Summary
==============================================

Generated: $(date)

Basic Tests:
- orig: Original (pre-conversion)
- converted: Converted (PackedOps)
- comba: Comba (CHUNK_BITS=64 fixed)

Bit Width Variations:
- iface_bits16: mpx_iface with BLOCK_BITS=16
- iface_bits32: mpx_iface with BLOCK_BITS=32
- iface_bits64: mpx_iface with BLOCK_BITS=64
- iface_bits128: mpx_iface with BLOCK_BITS=128
- iface_bits256: mpx_iface with BLOCK_BITS=256

- comba_bits16: mpx_comba with CHUNK_BITS=16
- comba_bits32: mpx_comba with CHUNK_BITS=32
- comba_bits64: mpx_comba with CHUNK_BITS=64
- comba_bits128: mpx_comba with CHUNK_BITS=128
- comba_bits256: mpx_comba with CHUNK_BITS=256

Detailed reports are in: hls_comparison_results/

To view results:
  ls -lh hls_comparison_results/

To extract metrics:
  ./extract_metrics.sh hls_comparison_results/*.rpt

EOF

cat hls_comparison_results/complete_summary.txt

echo ""
echo "=========================================="
echo "All tests completed!"
echo "Results saved in: hls_comparison_results/"
echo "=========================================="

