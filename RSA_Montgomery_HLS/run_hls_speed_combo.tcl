# run_hls_speed_combo.tcl — WBITS=5窓法 + 7.3nsクロック短縮の組み合わせ。
# clk73単体(絶対時間-13.5%)とw5単体(絶対時間-2.2%)を重ねた結果、
# 絶対時間0.388ms(ベースライン比-15.7%)を達成し、速度重視オプションの
# 最終採用版となった(DATAFLOW重複実行案は悪化したため不採用)。

open_project -reset rsa_modexp_hls_speed_combo

set_include_path {
    src_converted_flat_speed_combo
    ../montgomery_converter/include
    .
}

add_files src_converted_flat_speed_combo/mont_word.h
add_files src_converted_flat_speed_combo/rsa_modexp_hw.h
add_files src_converted_flat_speed_combo/mont_word.cpp -cflags "-I../montgomery_converter/include"
add_files src_converted_flat_speed_combo/rsa_modexp_hw.cpp

set_top rsa_modexp_hw

open_solution "solution1" -flow_target vivado
set_part {xcvu29p-fsga2577-2L-e}
create_clock -period 7.3

set tb_file [file normalize "src_converted_flat_speed_combo/tb_top.cpp"]
add_files -tb $tb_file

csynth_design

exit
