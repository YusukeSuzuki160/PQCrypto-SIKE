# run_csa_square_n8_clk7.tcl — 平方専用コア(N=8), 7ns clock
open_project -reset proj_mont_csa_square_n8_clk7
set_top mont_sqr_csa_square_n8
add_files mont_hls_csa_square_n8.cpp -cflags "-I../include"
open_solution -reset "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 7 -name default
csynth_design
exit
