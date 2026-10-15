# run_hls_speed_w5_64bit.tcl — 案1をRSAトップ全体へ適用した版。
# WBITS=5窓法+呼び出し統合は維持し、語幅のみ32bit(N=16)→64bit(N=8)。
# 単体カーネル実測(サイクル数-35%・LUT-53%)が全体トップでも
# 再現するかを確認する(xcvu29p, clk=10ns, サイクル数/リソースの比較
# 目的でns換算の絶対時間は主張しない)。

open_project -reset rsa_modexp_hls_speed_w5_64bit

set_include_path {
    src_converted_flat_speed_w5_64bit
    ../montgomery_converter/include
    .
}

add_files src_converted_flat_speed_w5_64bit/mont_word.h
add_files src_converted_flat_speed_w5_64bit/rsa_modexp_hw.h
add_files src_converted_flat_speed_w5_64bit/mont_word.cpp -cflags "-I../montgomery_converter/include"
add_files src_converted_flat_speed_w5_64bit/rsa_modexp_hw.cpp

set_top rsa_modexp_hw

open_solution "solution1" -flow_target vivado
set_part {xcvu29p-fsga2577-2L-e}
create_clock -period 10

set tb_file [file normalize "src_converted_flat_speed_w5_64bit/tb_top.cpp"]
add_files -tb $tb_file

csim_design

csynth_design

exit
