# run_hls_kernel64_xcvu29p.tcl — 案1: 64bit語版montMult_words単体カーネルを
# xcvu29pでcsynth(C合成レベル推定)する。目的はns単位の絶対時間ではなく
# 「サイクル数」と「リソース見積もり」を32bit語版(src_mult_kernel_only)と
# 同一clock targetで比較すること(サイクル数はHLSスケジューリング結果で
# あり、今回の教訓が無効化するのはns換算のみ)。

open_project -reset kernel64_xcvu29p

set_include_path {
    src_mult_kernel_64
    ../montgomery_converter/include
    .
}

add_files src_mult_kernel_64/mont_word.h
add_files src_mult_kernel_64/kernel_top.h
add_files src_mult_kernel_64/mont_word.cpp -cflags "-I../montgomery_converter/include"
add_files src_mult_kernel_64/kernel_top.cpp

set_top kernel_top

open_solution "solution1" -flow_target vivado
set_part {xcvu29p-fsga2577-2L-e}
create_clock -period 10

set tb_file [file normalize "src_mult_kernel_64/tb_top.cpp"]
add_files -tb $tb_file

csim_design

csynth_design

exit
