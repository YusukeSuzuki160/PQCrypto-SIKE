# run_fios_clk6.tcl — 通常 FIOS (PIPELINE), 6ns clock (クロック微調整)
# 7ns と 5ns の中間点を探る
open_project -reset proj_mont_fios_clk6
set_top mont_mul_fios
add_files mont_hls_fios.cpp -cflags "-I../include"
open_solution -reset "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 6 -name default
csynth_design
exit
