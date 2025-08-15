#!/usr/bin/env bash
set -euo pipefail
: "${HLS_INC:?Please set HLS_INC to the directory that contains ap_int.h}"

cxx=${CXX:-g++}
$cxx -std=gnu++17 -O2 -I"./include" -I"$HLS_INC" "./tests/test_mpx_packed.cpp" -o test_mpx_packed
echo "Built ./test_mpx_packed"
