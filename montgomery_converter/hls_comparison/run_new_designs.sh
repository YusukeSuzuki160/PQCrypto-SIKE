#!/bin/bash
# run_new_designs.sh
# FIOS / SOS / Karatsuba を順番に HLS 合成して結果を表示する

VITIS_HLS=${VITIS_HLS_BIN:-/home2/meltpoint/Xilinx/Vitis_HLS/2024.2/bin/vitis_hls}
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "=== New Design HLS Synthesis ==="
echo "Device: xcvu9p-flga2104-2-i  Clock: 10ns  Tool: Vitis HLS 2024.2"
echo ""

for design in fios sos karatsuba; do
    echo ">>> Synthesizing: $design ..."
    cd "$SCRIPT_DIR"
    "$VITIS_HLS" -f "run_${design}.tcl" > "hls_mont_${design}.log" 2>&1
    STATUS=$?
    if [ $STATUS -eq 0 ]; then
        echo "    Done. Log: hls_mont_${design}.log"
    else
        echo "    FAILED (exit $STATUS). Check hls_mont_${design}.log"
    fi
done

echo ""
echo "=== Parsing results ==="
python3 "$SCRIPT_DIR/parse_new_designs.py"
