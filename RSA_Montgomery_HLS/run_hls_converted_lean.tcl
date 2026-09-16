# run_hls_converted_lean.tcl — リソース最小化オプション: MontOps_Fast
# (外側ループPIPELINE、完全展開なしの古典的CIOS)+ 呼び出し箇所統合。

open_project -reset rsa_modexp_hls_converted_lean

set_include_path {
    src_converted_lean
    ../montgomery_converter/include
    .
}

add_files src_converted_lean/mont_word.h
add_files src_converted_lean/rsa_modexp_hw.h
add_files src_converted_lean/mont_word.cpp -cflags "-I../montgomery_converter/include"
add_files src_converted_lean/rsa_modexp_hw.cpp

set_top rsa_modexp_hw

open_solution "solution1" -flow_target vivado
set_part {xcvu29p-fsga2577-2L-e}
create_clock -period 10

set tb_file [file normalize "src_converted_lean/tb_top.cpp"]
add_files -tb $tb_file

csynth_design

exit
