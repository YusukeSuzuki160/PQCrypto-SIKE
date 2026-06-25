#!/bin/bash
# test_packed_variants.sh
# 異なるMAX_NWORDS（語数）でのmpx_packed.hppのテスト

echo "=========================================="
echo "Testing mpx_packed.hpp with different word counts"
echo "=========================================="

# テストする語数（MAX_NWORDS）
WORDS_VALUES=(2 4 8)

mkdir -p hls_comparison_results

for N in "${WORDS_VALUES[@]}"; do
    echo ""
    echo "Testing with MAX_NWORDS = $N (${N}×64 = $((N*64))bit)"
    
    # 元のファイルを読み込み、MAX_NWORDSを置換
    sed -e "s/static const unsigned MAX_NWORDS = 8;/static const unsigned MAX_NWORDS = ${N};/" \
        test_packed_mpx.cpp > test_packed_words${N}.cpp
    
    # トップ関数名も変更
    sed -i "s/void test_mul_packed/void test_mul_packed_words${N}/" test_packed_words${N}.cpp
    sed -i "s/mp_mul_packed/a, b, c, ${N});/" test_packed_words${N}.cpp
    # 戻す
    sed -i "s/a, b, c, ${N});/mp_mul_packed(a, b, c, ${N});/" test_packed_words${N}.cpp
    
    # TCLスクリプト作成
    cat > "run_packed_words${N}.tcl" <<EOF
# HLS script for packed MAX_NWORDS=${N}
open_project -reset proj_packed_words${N}
set_top test_mul_packed_words${N}

add_files test_packed_words${N}.cpp
add_files mpx_packed.hpp

open_solution "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 10 -name default

# csim_design  # テストベンチなしなのでスキップ
puts "Running C synthesis for packed MAX_NWORDS=${N}..."
csynth_design

exit
EOF

    echo "  Executing vitis_hls..."
    vitis_hls -f "run_packed_words${N}.tcl" > "hls_packed_words${N}.log" 2>&1
    
    # レポートを保存
    REPORT_FILE="proj_packed_words${N}/solution1/syn/report/test_mul_packed_words${N}_csynth.rpt"
    if [ -f "$REPORT_FILE" ]; then
        cp "$REPORT_FILE" "hls_comparison_results/packed_words${N}_csynth.rpt"
        echo "  ✓ packed_words${N}: report saved"
    else
        echo "  ✗ packed_words${N}: report not found"
    fi
done

echo ""
echo "=========================================="
echo "All tests completed!"
echo "=========================================="

