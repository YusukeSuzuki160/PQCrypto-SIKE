# run_fios_csa_true_n8_clk7.tcl — FIOS-CSA-True(変換後), N=8, 7ns clock
open_project -reset proj_mont_fios_csa_true_n8_clk7
set_top mont_mul_fios_csa_true_n8
add_files mont_hls_fios_csa_true_n8.cpp -cflags "-I../include"
open_solution -reset "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 7 -name default
csynth_design
exit
