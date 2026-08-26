#!/bin/bash
# run_all_new.sh — 新規実装の HLS 合成を一括実行
set -e

HLS=/home2/meltpoint/Xilinx/Vitis_HLS/2024.2/bin/vitis_hls
DIR="$(cd "$(dirname "$0")" && pwd)"

cd "$DIR"

run_hls() {
    local tcl="$1"
    echo "=========================================="
    echo " Running: $tcl"
    echo "=========================================="
    $HLS "$tcl"
}

# 新規設計 (外側ループ展開)
run_hls run_fios_flat_clk7.tcl
run_hls run_fios_flat_clk6.tcl
run_hls run_fios_flat_clk5.tcl
run_hls run_fios_csa_flat_clk7.tcl
run_hls run_fios_csa_flat_clk6.tcl

# クロック微調整スイープ
run_hls run_fios_clk6.tcl
run_hls run_fios_csa_clk6.tcl

# 改善候補: LATENCY 制約 / DATAFLOW / Karatsuba-CSA / クロック追加スイープ
run_hls run_fios_csa_flat_lat_clk7.tcl
run_hls run_fios_csa_dataflow_clk7.tcl
run_hls run_karatsuba_csa_clk7.tcl
run_hls run_fios_csa_flat_clk55.tcl
run_hls run_fios_csa_flat_clk8.tcl

echo ""
echo "=========================================="
echo " All HLS syntheses done."
echo "=========================================="
