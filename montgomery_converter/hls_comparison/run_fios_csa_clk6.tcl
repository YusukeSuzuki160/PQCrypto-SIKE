# run_fios_csa_clk6.tcl — FIOS-CSA (PIPELINE), 6ns clock (クロック微調整)
open_project -reset proj_mont_fios_csa_clk6
set_top mont_mul_fios_csa
add_files mont_hls_fios_csa.cpp -cflags "-I../include"
open_solution -reset "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 6 -name default
csynth_design
exit
