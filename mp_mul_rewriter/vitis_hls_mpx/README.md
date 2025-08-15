cd vitis_hls_mpx
# お手元のデバイスに合わせて変更
export HLS_PART=xcu250-figd2104-2L-e
# 目標クロック(ns)
export HLS_CLK=3.3
# ap_int.h の追加パスが必要なら（未設定でもOK）
# export HLS_INC="-I/opt/Xilinx/Vivado/2023.2/include"

vitis_hls -f scripts/run_hls.tcl