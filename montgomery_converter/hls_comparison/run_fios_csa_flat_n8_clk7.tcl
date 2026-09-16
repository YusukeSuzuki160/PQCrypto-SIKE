# run_fios_csa_flat_n8_clk7.tcl — FIOS-CSA-Flat(N=8), 7ns clock
open_project -reset proj_mont_fios_csa_flat_n8_clk7
set_top mont_mul_fios_csa_flat_n8
add_files mont_hls_fios_csa_flat_n8.cpp -cflags "-I../include"
open_solution -reset "solution1" -flow_target vivado
set_part {xcvu29p-fsga2577-2L-e}
create_clock -period 10
csynth_design
exit
