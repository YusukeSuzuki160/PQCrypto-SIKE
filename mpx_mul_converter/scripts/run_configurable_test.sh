#!/bin/bash
# Karatsuba PackedOps の数値一致テスト（参照学校式乗算）
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
HLS_INC="${VITIS_HLS_INCLUDE:-/home2/meltpoint/Xilinx/Vitis/2024.2/include}"
HLS_AP="${VITIS_HLS_AUTOPILOT:-/home2/meltpoint/Xilinx/Vitis/2024.2/common/technology/autopilot}"
BIN="${TMPDIR:-/tmp}/kara_config_test_$$"
g++ -std=c++17 -O2 -DAP_INT_MAX_W=2048 \
  -I"$HLS_INC" -I"$HLS_AP" -I"${ROOT}/include" \
  "${ROOT}/examples/test_karatsuba_configurable.cpp" -o "$BIN"
"$BIN"
echo "Karatsuba configurable test OK"
