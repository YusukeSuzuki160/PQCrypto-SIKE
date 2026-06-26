#!/bin/bash
# run_comparison.sh
# 変換前後の NTT を Vitis HLS で合成して比較する

set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

# ----- パス設定 -----
VITIS_HLS="${VITIS_HLS_BIN:-/home2/meltpoint/Xilinx/Vitis_HLS/2024.2/bin/vitis_hls}"
HLS_INCLUDE="${HLS_INCLUDE:-/home2/meltpoint/Xilinx/Vitis_HLS/2024.2/include}"

if [[ ! -x "$VITIS_HLS" ]]; then
    echo "ERROR: vitis_hls not found at $VITIS_HLS"
    echo "Set VITIS_HLS_BIN to the correct path."
    exit 1
fi

echo "================================================================"
echo "  NTT HLS Comparison: original vs converted"
echo "  vitis_hls: $VITIS_HLS"
echo "  Target   : xcvu9p-flga2104-2-i  @10ns clock"
echo "================================================================"

# ----- 変換前の合成 -----
echo ""
echo "[1/2] Synthesizing ntt_forward_orig (original, no pipeline)..."
"$VITIS_HLS" -f run_ntt_orig.tcl 2>&1 | tee hls_ntt_orig.log
echo "  Done. Log: hls_ntt_orig.log"

# ----- 変換後の合成 -----
echo ""
echo "[2/2] Synthesizing ntt_forward_converted (with PIPELINE II=1)..."
"$VITIS_HLS" -f run_ntt_converted.tcl 2>&1 | tee hls_ntt_converted.log
echo "  Done. Log: hls_ntt_converted.log"

# ----- レポート比較 -----
echo ""
echo "================================================================"
echo "  Parsing and comparing synthesis reports..."
echo "================================================================"
python3 parse_ntt_reports.py

echo ""
echo "All done!"
