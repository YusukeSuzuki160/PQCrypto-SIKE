# run_hls_speed_w5.tcl — 速度重視版の窓幅を4bit→5bitへ変更する実験。

open_project -reset rsa_modexp_hls_speed_w5

set_include_path {
    src_converted_flat_speed_w5
    ../montgomery_converter/include
    .
}

add_files src_converted_flat_speed_w5/mont_word.h
add_files src_converted_flat_speed_w5/rsa_modexp_hw.h
add_files src_converted_flat_speed_w5/mont_word.cpp -cflags "-I../montgomery_converter/include"
add_files src_converted_flat_speed_w5/rsa_modexp_hw.cpp

set_top rsa_modexp_hw

open_solution "solution1" -flow_target vivado
set_part {xcvu29p-fsga2577-2L-e}
create_clock -period 10

set tb_file [file normalize "src_converted_flat_speed_w5/tb_top.cpp"]
add_files -tb $tb_file

csynth_design

exit
