# run_hls.tcl — RSA (512bit) modExp、語単位CIOS版(変換前ベースライン)の
# HLS合成。SIKEp503_HLSと同じデバイス・クロックで比較しやすくしている。

open_project -reset rsa_modexp_hls

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

csynth_design

exit
