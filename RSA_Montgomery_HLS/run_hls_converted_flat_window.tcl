# run_hls_converted_flat_window.tcl — 案B: 4bit固定窓法(windowed
# exponentiation)による乗算回数削減の実験。

open_project -reset rsa_modexp_hls_converted_flat_window

set_include_path {
    src_converted_flat_window
    ../montgomery_converter/include
    .
}

add_files src_converted_flat_window/mont_word.h
add_files src_converted_flat_window/rsa_modexp_hw.h
add_files src_converted_flat_window/mont_word.cpp -cflags "-I../montgomery_converter/include"
add_files src_converted_flat_window/rsa_modexp_hw.cpp

set_top rsa_modexp_hw

open_solution "solution1" -flow_target vivado
set_part {xcvu29p-fsga2577-2L-e}
create_clock -period 10

set tb_file [file normalize "src_converted_flat_window/tb_top.cpp"]
add_files -tb $tb_file

csynth_design

exit
