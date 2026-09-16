# run_hls_converted_flat_speed.tcl — 速度重視オプション: 4bit窓法 +
# 呼び出し箇所統合(リソース圧縮版)。

open_project -reset rsa_modexp_hls_converted_flat_speed

set_include_path {
    src_converted_flat_speed
    ../montgomery_converter/include
    .
}

add_files src_converted_flat_speed/mont_word.h
add_files src_converted_flat_speed/rsa_modexp_hw.h
add_files src_converted_flat_speed/mont_word.cpp -cflags "-I../montgomery_converter/include"
add_files src_converted_flat_speed/rsa_modexp_hw.cpp

set_top rsa_modexp_hw

open_solution "solution1" -flow_target vivado
set_part {xcvu29p-fsga2577-2L-e}
create_clock -period 10

set tb_file [file normalize "src_converted_flat_speed/tb_top.cpp"]
add_files -tb $tb_file

csynth_design

exit
