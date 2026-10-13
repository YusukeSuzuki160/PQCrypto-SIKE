# run_hls_kernel_zu7ev_clk10.tcl — 案A手法検証: montMult_words単体カーネルを
# WebPACK対象デバイス(xczu7ev、実Vivado P&Rが可能)でtarget=10nsにて
# 合成する。この後export_design -flow implで実配置配線まで通し、
# 「Estimated Fmax」と実タイミングの関係を検証する基準点とする。

open_project -reset kernel_zu7ev_clk10

set_include_path {
    src_mult_kernel_only
    ../montgomery_converter/include
    .
}

add_files src_mult_kernel_only/mont_word.h
add_files src_mult_kernel_only/kernel_top.h
add_files src_mult_kernel_only/mont_word.cpp -cflags "-I../montgomery_converter/include"
add_files src_mult_kernel_only/kernel_top.cpp

set_top kernel_top

open_solution "solution1" -flow_target vivado
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 10

set tb_file [file normalize "src_mult_kernel_only/tb_top.cpp"]
add_files -tb $tb_file

csim_design

csynth_design

export_design -rtl verilog -format ip_catalog -flow impl

exit
