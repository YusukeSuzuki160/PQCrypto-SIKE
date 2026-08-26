# run_fios_flat_clk7.tcl — FIOS 外側ループ展開版, 7ns clock
# PIPELINE → UNROLL で HLS に全4反復のデータフローを一括認識させる
open_project -reset proj_mont_fios_flat_clk7
set_top mont_mul_fios_flat
add_files mont_hls_fios_flat.cpp -cflags "-I../include"
open_solution -reset "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 7 -name default
csynth_design
exit
