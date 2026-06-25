#!/bin/bash
# Karatsuba: MPX_KARA_BASE_WORDS / MPX_MUL_BITS スイープ + 手書き平坦版との HLS 比較
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
OUT="$ROOT/hls_comparison_results"
mkdir -p "$OUT"
source /home2/meltpoint/Xilinx/Vitis/2024.2/settings64.sh

PART="xcvu9p-flga2104-2-i"
CLK=10

gen_config_cpp() {
  local base=$1 mulbits=$2 outcpp=$3
  cat > "$outcpp" <<EOF
#ifndef MPX_KARA_BASE_WORDS
#define MPX_KARA_BASE_WORDS ${base}
#endif
#ifndef MPX_MUL_BITS
#define MPX_MUL_BITS ${mulbits}
#endif
#include "mpx_packed_karatsuba.hpp"
#include <ap_int.h>
#include <climits>
#include <cstdint>

using digit_t = uint64_t;

void mp_mul_kara(const digit_t *a, const digit_t *b, digit_t *c, const unsigned nwords)
{
  mpx::PackedOps<digit_t, 8, true>::mul(a, b, c, nwords);
}

void test_mul_karatsuba_configurable(const digit_t a[8], const digit_t b[8], digit_t c[16])
{
#pragma HLS INTERFACE bram port = a
#pragma HLS INTERFACE bram port = b
#pragma HLS INTERFACE bram port = c
#pragma HLS INTERFACE s_axilite port = return bundle = control
  mp_mul_kara(a, b, c, 8);
}
EOF
}

run_hls_one() {
  local tag=$1 src=$2 top=$3
  local proj="proj_kara_${tag}"
  local tcl="$ROOT/run_kara_sweep_${tag}.tcl"
  cat > "$tcl" <<EOF
open_project -reset ${proj}
set_top ${top}
add_files ${src}
add_files ${ROOT}/mpx_packed_karatsuba.hpp
open_solution -reset solution1 -flow_target vivado
set_part ${PART}
create_clock -period ${CLK} -name default
csynth_design
exit
EOF
  echo "=== HLS: ${tag} ==="
  if vitis_hls -f "$tcl" > "$OUT/hls_kara_${tag}.log" 2>&1; then
    local rpt="${ROOT}/build/${proj}/solution1/syn/report/${top}_csynth.rpt"
    if [[ -f "$rpt" ]]; then
      cp "$rpt" "$OUT/karatsuba_${tag}_csynth.rpt"
      echo "  OK -> karatsuba_${tag}_csynth.rpt"
      return 0
    fi
  fi
  echo "  FAILED (see hls_kara_${tag}.log)"
  return 1
}

# 変換後: 分割基底 × 対応する MUL_BITS
declare -a SWEEPS=(
  "base1:1:64"
  "base2:2:128"
  "base4:4:256"
  "base8:8:512"
)

for entry in "${SWEEPS[@]}"; do
  IFS=':' read -r tag base mul <<< "$entry"
  cpp="$ROOT/test_kara_sweep_${tag}.cpp"
  gen_config_cpp "$base" "$mul" "$cpp"
  run_hls_one "$tag" "$cpp" "test_mul_karatsuba_configurable" || true
done

# 変換前ベースライン（平坦手書き）
run_hls_one "flat" "$ROOT/test_karatsuba_handwritten_flat.cpp" "test_mul_karatsuba_handwritten_flat" || true

echo "Sweep complete. Reports in $OUT/"
