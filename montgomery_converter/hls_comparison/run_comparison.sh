#!/bin/bash
# run_comparison.sh
#   変換前後のモンゴメリ乗算を Vitis HLS で合成して比較する。
#   （要 Vitis HLS。未インストール環境ではスキップされる）

set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

VITIS_HLS="${VITIS_HLS_BIN:-/home2/meltpoint/Xilinx/Vitis_HLS/2024.2/bin/vitis_hls}"

if [[ ! -x "$VITIS_HLS" ]]; then
    echo "ERROR: vitis_hls not found at $VITIS_HLS"
    echo "Set VITIS_HLS_BIN to the correct path."
    exit 1
fi

echo "================================================================"
echo "  Montgomery HLS Comparison: original vs converted"
echo "  vitis_hls: $VITIS_HLS"
echo "  Target   : xcvu9p-flga2104-2-i  @10ns clock"
echo "================================================================"

# ----- 変換前の合成 -----
echo ""
echo "[1/2] Synthesizing mont_mul_top (original, no pipeline)..."
"$VITIS_HLS" -f run_mont_orig.tcl 2>&1 | tee hls_mont_orig.log

# ----- 変換後の合成 -----
echo ""
echo "[2/2] Synthesizing mont_mul_top (converted, ARRAY_PARTITION + PIPELINE II=1)..."
"$VITIS_HLS" -f run_mont_converted.tcl 2>&1 | tee hls_mont_converted.log

# ----- レポートを解析しやすい場所へコピー -----
cp -f proj_mont_orig/solution1/syn/report/mont_mul_top_csynth.rpt \
      mont_orig_csynth.rpt 2>/dev/null || true
cp -f proj_mont_converted/solution1/syn/report/mont_mul_top_csynth.rpt \
      mont_converted_csynth.rpt 2>/dev/null || true

# ----- レポート比較 -----
echo ""
echo "================================================================"
echo "  Parsing and comparing synthesis reports..."
echo "================================================================"
python3 parse_mont_reports.py

echo ""
echo "All done!"
