# run_hls_lean_kernel_zu7ev.tcl — 案0(同核比較): lean核(MontOps_Fast)の
# montMult_words単体カーネルをxczu7evで実P&Rする。これと
# run_hls_lean_full_zu7ev.tcl(同じlean核を使ったRSAトップ全体)の
# クリティカルパスを比較し、「トップレベルのマルチプレクサ/FSMが
# クリティカルパスを悪化させるか」を同じ核で切り分ける。

open_project -reset lean_kernel_zu7ev

set_include_path {
    src_lean_kernel_only
    ../montgomery_converter/include
    .
}

add_files src_lean_kernel_only/mont_word.h
add_files src_lean_kernel_only/kernel_top.h
add_files src_lean_kernel_only/mont_word.cpp -cflags "-I../montgomery_converter/include"
add_files src_lean_kernel_only/kernel_top.cpp

set_top kernel_top

open_solution "solution1" -flow_target vivado
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 10

set tb_file [file normalize "src_lean_kernel_only/tb_top.cpp"]
add_files -tb $tb_file

csim_design

csynth_design

export_design -rtl verilog -format ip_catalog -flow impl

exit
