# run_hls_speed_dtable.tcl — 案D: 事前計算テーブルをdoubling-ladder構成
# (2並列インスタンス化)へ再編成し、依存チェーンの深さを32段から17段へ
# 圧縮できるか検証する。WBITS=5+clk7.3nsの採用版(combo)がベース。

open_project -reset rsa_modexp_hls_speed_dtable

set_include_path {
    src_converted_flat_speed_dtable
    ../montgomery_converter/include
    .
}

add_files src_converted_flat_speed_dtable/mont_word.h
add_files src_converted_flat_speed_dtable/rsa_modexp_hw.h
add_files src_converted_flat_speed_dtable/mont_word.cpp -cflags "-I../montgomery_converter/include"
add_files src_converted_flat_speed_dtable/rsa_modexp_hw.cpp

set_top rsa_modexp_hw

open_solution "solution1" -flow_target vivado
set_part {xcvu29p-fsga2577-2L-e}
create_clock -period 7.3

set tb_file [file normalize "src_converted_flat_speed_dtable/tb_top.cpp"]
add_files -tb $tb_file

csim_design

csynth_design

exit
