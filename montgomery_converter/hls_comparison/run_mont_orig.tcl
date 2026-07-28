# run_mont_orig.tcl — 変換前 CIOS モンゴメリ乗算の HLS 合成
open_project -reset proj_mont_orig
set_top mont_mul_top
add_files mont_hls_orig.cpp
open_solution -reset "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 10 -name default
csynth_design
exit
