# run_csim.tcl — csim_designのみで正当性を素早く確認する。

open_project -reset rsa_modexp_hls_csim

set_include_path {
    src
    .
}

add_files src/mont_word.h
add_files src/rsa_modexp_hw.h
add_files src/mont_word.c
add_files src/rsa_modexp_hw.cpp

set_top rsa_modexp_hw

open_solution "solution1" -flow_target vivado
set_part {xcvu29p-fsga2577-2L-e}
create_clock -period 10

set tb_file [file normalize "src/tb_top.cpp"]
add_files -tb $tb_file

csim_design

exit
