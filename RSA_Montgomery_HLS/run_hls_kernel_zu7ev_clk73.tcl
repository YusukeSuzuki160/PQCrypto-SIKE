# run_hls_kernel_zu7ev_clk73.tcl — 同カーネルをtarget=7.3nsで合成し、
# clk10版と実タイミングを比較する。

open_project -reset kernel_zu7ev_clk73

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
create_clock -period 7.3

set tb_file [file normalize "src_mult_kernel_only/tb_top.cpp"]
add_files -tb $tb_file

csim_design

csynth_design

export_design -rtl verilog -format ip_catalog -flow impl

exit
