# run_hls_converted_flat_v2.tcl — FromMontも trip-count-1 ループで包んだ
# バリエーション(案A: 追加のインスタンス統合を狙う実験)。

open_project -reset rsa_modexp_hls_converted_flat_v2

set_include_path {
    src_converted_flat_v2
    ../montgomery_converter/include
    .
}

add_files src_converted_flat_v2/mont_word.h
add_files src_converted_flat_v2/rsa_modexp_hw.h
add_files src_converted_flat_v2/mont_word.cpp -cflags "-I../montgomery_converter/include"
add_files src_converted_flat_v2/rsa_modexp_hw.cpp

set_top rsa_modexp_hw

open_solution "solution1" -flow_target vivado
set_part {xcvu29p-fsga2577-2L-e}
create_clock -period 10

set tb_file [file normalize "src_converted_flat_v2/tb_top.cpp"]
add_files -tb $tb_file

csynth_design

exit
