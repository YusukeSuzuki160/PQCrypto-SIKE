# run_hls_speed_clk73.tcl — 速度重視版(窓法+統合)で、これまで一貫して
# 報告されてきたEstimated Fmax(136.99MHz≒7.3ns)に近いクロック周期を
# 試す実験。10ns指定時に余っていたスラックを削れるかを検証する。

open_project -reset rsa_modexp_hls_speed_clk73

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
create_clock -period 7.3

set tb_file [file normalize "src_converted_flat_speed/tb_top.cpp"]
add_files -tb $tb_file

csynth_design

exit
