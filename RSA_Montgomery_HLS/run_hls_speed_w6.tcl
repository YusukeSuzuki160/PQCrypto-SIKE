# run_hls_speed_w6.tcl — 案E: 速度重視版の窓幅を4bit→6bitへ拡大する実験。
# 計算上は精算チェーンが伸びる分、総乗算回数がむしろ増えると予想される。

open_project -reset rsa_modexp_hls_speed_w6

set_include_path {
    src_converted_flat_speed_w6
    ../montgomery_converter/include
    .
}

add_files src_converted_flat_speed_w6/mont_word.h
add_files src_converted_flat_speed_w6/rsa_modexp_hw.h
add_files src_converted_flat_speed_w6/mont_word.cpp -cflags "-I../montgomery_converter/include"
add_files src_converted_flat_speed_w6/rsa_modexp_hw.cpp

set_top rsa_modexp_hw

open_solution "solution1" -flow_target vivado
set_part {xcvu29p-fsga2577-2L-e}
create_clock -period 10

set tb_file [file normalize "src_converted_flat_speed_w6/tb_top.cpp"]
add_files -tb $tb_file

csynth_design

exit
