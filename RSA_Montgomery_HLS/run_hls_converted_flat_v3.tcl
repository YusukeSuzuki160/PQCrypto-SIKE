# run_hls_converted_flat_v3.tcl — 案C: メインループ内の二乗とz候補を
# 別々の呼び出し文に戻し、2物理インスタンスでの並列実行を狙う実験。

open_project -reset rsa_modexp_hls_converted_flat_v3

set_include_path {
    src_converted_flat_v3
    ../montgomery_converter/include
    .
}

add_files src_converted_flat_v3/mont_word.h
add_files src_converted_flat_v3/rsa_modexp_hw.h
add_files src_converted_flat_v3/mont_word.cpp -cflags "-I../montgomery_converter/include"
add_files src_converted_flat_v3/rsa_modexp_hw.cpp

set_top rsa_modexp_hw

open_solution "solution1" -flow_target vivado
set_part {xcvu29p-fsga2577-2L-e}
create_clock -period 10

set tb_file [file normalize "src_converted_flat_v3/tb_top.cpp"]
add_files -tb $tb_file

csynth_design

exit
