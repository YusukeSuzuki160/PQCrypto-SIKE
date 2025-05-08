# run_hls.tcl
open_project sike_hls
set_top sike_p503_kernel
add_files rtl/*.cpp
add_files -tb tests/test_SIKEp503.c   ;# 変更不要でそのまま使える
open_solution "syn"
set_part {xcvu9p-flgb2104-2-i}        ;# ボードに合わせて変更
create_clock -period 3.33 -name default
csim_design -argv { ... }             ;# まずは SW 動作を確認
csynth_design
cosim_design                           ;# 波形 & 性能解析
export_design -format ip_catalog