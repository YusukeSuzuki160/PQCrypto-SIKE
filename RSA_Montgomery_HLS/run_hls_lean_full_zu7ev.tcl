# run_hls_lean_full_zu7ev.tcl — 案0(同核比較): lean核(MontOps_Fast)を
# 使ったRSAトップ全体(src_converted_lean、非窓法、呼び出し統合あり)を
# xczu7evで実P&Rする。LUT見積もり17,983(xcvu29p換算)と小さいため
# xczu7ev(LUT 230,400)に十分収まる。run_hls_lean_kernel_zu7ev.tclの
# 単体カーネル結果と比較する。

open_project -reset lean_full_zu7ev

set_include_path {
    src_converted_lean
    ../montgomery_converter/include
    .
}

add_files src_converted_lean/mont_word.h
add_files src_converted_lean/rsa_modexp_hw.h
add_files src_converted_lean/mont_word.cpp -cflags "-I../montgomery_converter/include"
add_files src_converted_lean/rsa_modexp_hw.cpp

set_top rsa_modexp_hw

open_solution "solution1" -flow_target vivado
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 10

set tb_file [file normalize "src_converted_lean/tb_top.cpp"]
add_files -tb $tb_file

csim_design

csynth_design

export_design -rtl verilog -format ip_catalog -flow impl

exit
