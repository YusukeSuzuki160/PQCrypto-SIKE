# run_hls_kernel32_xcvu29p.tcl — 比較基準: 32bit語版montMult_words単体
# カーネルをxcvu29pでcsynthする(64bit語版との単体カーネル同条件比較用)。

open_project -reset kernel32_xcvu29p

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
set_part {xcvu29p-fsga2577-2L-e}
create_clock -period 10

set tb_file [file normalize "src_mult_kernel_only/tb_top.cpp"]
add_files -tb $tb_file

csim_design

csynth_design

exit
