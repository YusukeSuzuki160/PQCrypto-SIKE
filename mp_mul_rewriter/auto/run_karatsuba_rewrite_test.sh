#!/bin/bash
# 互換ラッパ: 実行本体は mpx_mul_converter に移行済み
exec "$(cd "$(dirname "$0")/../../mpx_mul_converter/scripts" && pwd)/run_rewrite_test.sh" "$@"
