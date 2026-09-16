# run_csim_converted.tcl — 変換後版のcsimのみで素早く正当性確認する。

open_project -reset rsa_modexp_hls_converted_csim

set_include_path {
    src_converted
    ../montgomery_converter/include
    .
}

add_files src_converted/mont_word.h
add_files src_converted/rsa_modexp_hw.h
add_files src_converted/mont_word.cpp -cflags "-I../montgomery_converter/include"
add_files src_converted/rsa_modexp_hw.cpp

set_top rsa_modexp_hw

open_solution "solution1" -flow_target vivado
set_part {xcvu29p-fsga2577-2L-e}
create_clock -period 10

set tb_file [file normalize "src_converted/tb_top.cpp"]
add_files -tb $tb_file

csim_design

exit
