# run_hls_kernel_orig_xcvu29p.tcl — 変換前(素のCIOS、32bit x 16語、
# UNROLL/FIOS-CSA等の最適化なし)のmontMult_words単体カーネルを
# xcvu29pでcsynthする。最適化版(FIOS-CSA-Flat, 64bit)との単体比較基準。

open_project -reset kernel_orig_xcvu29p

set_include_path {
    src_mult_kernel_orig
    .
}

add_files src_mult_kernel_orig/mont_word.h
add_files src_mult_kernel_orig/kernel_top.h
add_files src_mult_kernel_orig/mont_word.c
add_files src_mult_kernel_orig/kernel_top.cpp

set_top kernel_top

open_solution "solution1" -flow_target vivado
set_part {xcvu29p-fsga2577-2L-e}
create_clock -period 10

set tb_file [file normalize "src_mult_kernel_orig/tb_top.cpp"]
add_files -tb $tb_file

csim_design

csynth_design

exit
