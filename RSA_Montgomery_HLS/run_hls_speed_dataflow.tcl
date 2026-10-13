# run_hls_speed_dataflow.tcl — 速度重視版(窓法+統合)へDATAFLOWを追加し、
# cand(テーブル選択)計算とt-loopの乗算列を重複実行できるか試す実験。

open_project -reset rsa_modexp_hls_speed_dataflow

set_include_path {
    src_converted_flat_speed_dataflow
    ../montgomery_converter/include
    .
}

add_files src_converted_flat_speed_dataflow/mont_word.h
add_files src_converted_flat_speed_dataflow/rsa_modexp_hw.h
add_files src_converted_flat_speed_dataflow/mont_word.cpp -cflags "-I../montgomery_converter/include"
add_files src_converted_flat_speed_dataflow/rsa_modexp_hw.cpp

set_top rsa_modexp_hw

open_solution "solution1" -flow_target vivado
set_part {xcvu29p-fsga2577-2L-e}
create_clock -period 10

set tb_file [file normalize "src_converted_flat_speed_dataflow/tb_top.cpp"]
add_files -tb $tb_file

csim_design

csynth_design

exit
