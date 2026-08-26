# run_fios_csa_flat_bindop_clk7.tcl — FIOS-CSA-Flat + DSP BIND_OP 明示指定版, 7ns clock
open_project -reset proj_mont_fios_csa_flat_bindop_clk7
set_top mont_mul_fios_csa_flat_bindop
add_files mont_hls_fios_csa_flat_bindop.cpp -cflags "-I../include"
open_solution -reset "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 7 -name default
csynth_design
exit
