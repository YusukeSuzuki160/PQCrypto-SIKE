# run_mont_param.tcl
# パラメータ設定可能な Vitis HLS 合成スクリプト
#
# 【使い方】
#   vitis_hls -f run_mont_param.tcl
#
# 【パラメータの分類】
#   「計算対象」: MONT_TOTAL_BITS を変えると別の演算（別の法の乗算）になる
#   「実装パラメータ」: それ以外を変えても同じ演算を計算する（HLS トレードオフ）
#   スイープ実行には run_sweep.py を使用すること。

# ============================================================
# パラメータ設定（ここを変更する）
# ============================================================

# [計算対象] 総ビット幅: これを変えると別の演算になる
#   例: 128, 256, 512
set MONT_TOTAL_BITS     256

# [実装] 語幅 [bits] : 16 / 32 / 64
#   NWORDS = TOTAL_BITS / WORD_BITS が自動決定される
#   小さい → 1語の乗算コスト小（DSP少）、語数が増えて latency 増
#   大きい → 1語の乗算コスト大（DSP多）、語数が減って latency 減
set MONT_WORD_BITS      32

# 語数を自動計算（変更不要）
set MONT_NWORDS         [expr {$MONT_TOTAL_BITS / $MONT_WORD_BITS}]

# [実装] 内側 j-ループ展開数
#   0         : 内側 PIPELINE のみ（最小 DSP、最大 latency）
#   1..N-1    : 部分展開（中間トレードオフ）
#   MONT_NWORDS : 完全展開（最大 DSP、最小 latency）  ← デフォルト
set MONT_INNER_UNROLL   $MONT_NWORDS

# [実装] cond_sub ループ展開 : 1=UNROLL / 0=PIPELINE
set MONT_CONDSUB_UNROLL 1

# [実装] 初期化ループ展開 : 1=UNROLL / 0=PIPELINE
set MONT_INIT_UNROLL    1

# [実装] 外側 CIOS ループ目標 II
#   0 : 自動（通常 II=2 を選択）
#   2 : II=2 を明示
#   4 : 保守的（DSP 削減、latency 増）
set MONT_TARGET_II      0

# クロック周期 [ns]
set CLOCK_PERIOD_NS     10

# ターゲットデバイス
set DEVICE              "xcvu9p-flga2104-2-i"

# ============================================================
# 合成実行（以下は変更不要）
# ============================================================

# -D フラグ文字列を組み立て
set cflags "-I../include \
  -DMONT_TOTAL_BITS=${MONT_TOTAL_BITS} \
  -DMONT_WORD_BITS=${MONT_WORD_BITS} \
  -DMONT_NWORDS=${MONT_NWORDS} \
  -DMONT_INNER_UNROLL=${MONT_INNER_UNROLL} \
  -DMONT_CONDSUB_UNROLL=${MONT_CONDSUB_UNROLL} \
  -DMONT_INIT_UNROLL=${MONT_INIT_UNROLL} \
  -DMONT_TARGET_II=${MONT_TARGET_II}"

puts "================================================================"
puts "  Montgomery HLS 合成 (パラメータ設定版)"
puts "  計算対象: ${MONT_TOTAL_BITS}bit  語幅: ${MONT_WORD_BITS}bit  語数: ${MONT_NWORDS}"
puts "  INNER_UNROLL=${MONT_INNER_UNROLL}  CONDSUB=${MONT_CONDSUB_UNROLL}  INIT=${MONT_INIT_UNROLL}"
puts "  TARGET_II=${MONT_TARGET_II}  CLOCK=${CLOCK_PERIOD_NS}ns  DEVICE=${DEVICE}"
puts "================================================================"

open_project -reset proj_mont_param
set_top mont_mul_top_param
add_files mont_hls_param.cpp -cflags $cflags
open_solution -reset "solution1" -flow_target vivado
set_part $DEVICE
create_clock -period $CLOCK_PERIOD_NS -name default
csynth_design
exit
