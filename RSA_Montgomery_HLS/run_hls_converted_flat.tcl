# run_hls_converted_flat.tcl — RSA (512bit) modExp、変換後(FIOS-CSA-Flat
# 手動差し替え版、LUT削減狙い)のHLS合成。run_hls.tcl(変換前)、
# run_hls_converted.tcl(FIOS-CSA-True)と同一デバイス・クロックで比較する。

open_project -reset rsa_modexp_hls_converted_flat

set_include_path {
    src_converted_flat
    ../montgomery_converter/include
    .
}

add_files src_converted_flat/mont_word.h
add_files src_converted_flat/rsa_modexp_hw.h
add_files src_converted_flat/mont_word.cpp -cflags "-I../montgomery_converter/include"
add_files src_converted_flat/rsa_modexp_hw.cpp

set_top rsa_modexp_hw

open_solution "solution1" -flow_target vivado
set_part {xcvu29p-fsga2577-2L-e}
create_clock -period 10

set tb_file [file normalize "src_converted_flat/tb_top.cpp"]
add_files -tb $tb_file

csynth_design

exit
