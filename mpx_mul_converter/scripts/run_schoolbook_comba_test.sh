#!/bin/bash
# 学校式 / Comba 変換元（examples/test_{schoolbook,comba}_handwritten.cpp）を
# mpx_auto_rewriter で各モードへ変換し、変換後コードが参照と一致するか確認する。
#   - schoolbook: LSW-first（--mul-macro=MUL）。default / schoolbook-256 で検証
#   - comba:      MSW-first（--force-msw-first --mul-macro=MUL）。default で検証
# 注意: schoolbook-N（固定ビット幅）では --lib-header を当該ヘッダに合わせること
#       （上部 include と関数内 include を一致させ #pragma once で重複排除させるため）。
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
HLS_INC="${VITIS_HLS_INCLUDE:-/home2/meltpoint/Xilinx/Vitis/2024.2/include}"
HLS_AP="${VITIS_HLS_AUTOPILOT:-/home2/meltpoint/Xilinx/Vitis/2024.2/common/technology/autopilot}"
RW="${ROOT}/build/mpx_auto_rewriter"
TMP="${TMPDIR:-/tmp}"

convert_and_run() {
  local label="$1" src="$2" out="$3"; shift 3
  local flags="$*"
  echo "--- ${label} ---"
  # shellcheck disable=SC2086
  "$RW" "$src" ${flags} -insert-includes=true -output="$out" -- \
    -std=c++17 -DUSE_AP_INT -I"$HLS_INC" -I"$HLS_AP" -I"${ROOT}/include"
  g++ -std=c++17 -O2 -DAP_INT_MAX_W=4096 \
    -I"$HLS_INC" -I"$HLS_AP" -I"${ROOT}/include" "$out" -o "${out}.bin"
  "${out}.bin"
}

# 学校式 → default（全幅 pack×1 乗算）
convert_and_run "schoolbook -> default" \
  "${ROOT}/examples/test_schoolbook_handwritten.cpp" "${TMP}/sb_default_$$.cpp" \
  --packed-ops-type=default --max-nwords=8 --mul-macro=MUL

# 学校式 → schoolbook-256（256bit ブロック学校式）
convert_and_run "schoolbook -> schoolbook-256" \
  "${ROOT}/examples/test_schoolbook_handwritten.cpp" "${TMP}/sb_256_$$.cpp" \
  --packed-ops-type=schoolbook-256 --max-nwords=8 --mul-macro=MUL \
  --lib-header=mpx_packed_256bit.hpp

# Comba（MSW-first）→ default
convert_and_run "comba -> default" \
  "${ROOT}/examples/test_comba_handwritten.cpp" "${TMP}/cb_default_$$.cpp" \
  --packed-ops-type=default --max-nwords=8 --force-msw-first --mul-macro=MUL

# Comba（MSW-first）→ schoolbook-256（キャリーセーブ ブロック・反転はコスト0）
convert_and_run "comba -> schoolbook-256" \
  "${ROOT}/examples/test_comba_handwritten.cpp" "${TMP}/cb_256_$$.cpp" \
  --packed-ops-type=schoolbook-256 --max-nwords=8 --force-msw-first --mul-macro=MUL \
  --lib-header=mpx_packed_256bit.hpp

echo "Schoolbook / Comba rewrite tests OK"
