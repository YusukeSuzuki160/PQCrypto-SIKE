#!/bin/bash
# run_rewrite_test.sh
#   モンゴメリ乗算の検出 → 変換 → 数値一致 を一括で確認するスクリプト。
#   1. montgomery_auto_rewriter をビルド
#   2. examples/test_mont_cios.cpp を dry-run 検出
#   3. 変換を実施
#   4. 変換前 / 変換後 をそれぞれ g++ でビルドして実行し、両方 ALL PASS を確認

set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

BUILD=build
INC="$ROOT/include"
SRC="examples/test_mont_cios.cpp"
CONV="examples/test_mont_cios_converted.cpp"

echo "================================================================"
echo "  Montgomery rewrite test"
echo "================================================================"

# ----- 1. ビルド -----
echo "[1/5] Building montgomery_auto_rewriter ..."
mkdir -p "$BUILD"
( cd "$BUILD" && cmake .. -DCMAKE_BUILD_TYPE=Release >/dev/null && \
  make montgomery_auto_rewriter test_mont_cios >/dev/null 2>&1 )
TOOL="$BUILD/montgomery_auto_rewriter"

# ----- 2. 検出（dry-run） -----
echo "[2/5] Detection (dry-run) ..."
"$TOOL" --dry-run --trace "$SRC" -- -std=c++17 -I"$INC" 2>/dev/null | grep "mont-auto"

# ----- 3. 変換 -----
echo "[3/5] Rewriting → $CONV ..."
"$TOOL" --max-nwords=8 --output="$CONV" "$SRC" -- -std=c++17 -I"$INC" >/dev/null 2>&1

# ----- 4. 変換前の実行 -----
echo "[4/5] Running ORIGINAL ..."
ORIG_OUT="$("$BUILD/test_mont_cios" | tail -1)"
echo "      original : $ORIG_OUT"

# ----- 5. 変換後のビルド & 実行 -----
echo "[5/5] Building & running CONVERTED ..."
g++ -std=c++17 -O2 -I"$INC" "$CONV" -o "$BUILD/test_mont_cios_converted" 2>/dev/null
CONV_OUT="$("$BUILD/test_mont_cios_converted" | tail -1)"
echo "      converted: $CONV_OUT"

echo "----------------------------------------------------------------"
if [[ "$ORIG_OUT" == *"ALL PASS"* && "$CONV_OUT" == *"ALL PASS"* ]]; then
    echo "RESULT: PASS — original and converted both numerically correct."
    exit 0
else
    echo "RESULT: FAIL"
    exit 1
fi
