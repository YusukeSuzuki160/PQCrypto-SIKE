# run_mont_converted.tcl — 変換後（MontOps）モンゴメリ乗算の HLS 合成
open_project -reset proj_mont_converted
set_top mont_mul_top
add_files mont_hls_converted.cpp -cflags "-I../include"
open_solution -reset "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 10 -name default
csynth_design
exit
