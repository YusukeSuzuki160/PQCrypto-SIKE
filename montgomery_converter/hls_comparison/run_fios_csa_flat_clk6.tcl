# run_fios_csa_flat_clk6.tcl — FIOS-CSA 外側ループ展開版, 6ns clock
open_project -reset proj_mont_fios_csa_flat_clk6
set_top mont_mul_fios_csa_flat
add_files mont_hls_fios_csa_flat.cpp -cflags "-I../include"
open_solution -reset "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 6 -name default
csynth_design
exit
