# run_hls_converted.tcl — RSA (512bit) modExp、変換後(FIOS-CSA-True自動
# 置換版)のHLS合成。run_hls.tcl(変換前)と同一デバイス・クロックで
# 比較する。

open_project -reset rsa_modexp_hls_converted

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

csynth_design

exit
