#!/bin/bash
# Karatsuba モードで examples/test_karatsuba_handwritten.cpp を変換し、参照乗算と一致するか確認
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
HLS_INC="${VITIS_HLS_INCLUDE:-/home2/meltpoint/Xilinx/Vitis/2024.2/include}"
HLS_AP="${VITIS_HLS_AUTOPILOT:-/home2/meltpoint/Xilinx/Vitis/2024.2/common/technology/autopilot}"
OUT="${TMPDIR:-/tmp}/karatsuba_rewrite_test_$$.cpp"
"${ROOT}/build/mpx_auto_rewriter" "${ROOT}/examples/test_karatsuba_handwritten.cpp" \
  --packed-ops-type=karatsuba -insert-includes=true -output="$OUT" -- \
  -std=c++17 -I"$HLS_INC" -I"$HLS_AP" -I"${ROOT}/include"
g++ -std=c++17 -O2 -DAP_INT_MAX_W=2048 -I"$HLS_INC" -I"$HLS_AP" -I"${ROOT}/include" "$OUT" -o "${OUT}.bin"
"${OUT}.bin"
echo "Karatsuba rewrite test OK"
