# run_fios_csa_flat_lat_clk7.tcl — FIOS-CSA-Flat + LATENCY 制約, 7ns clock
# HLS LATENCY min=16 max=18 で 16-18 サイクル以内を強制
open_project -reset proj_mont_fios_csa_flat_lat_clk7
set_top mont_mul_fios_csa_flat_lat
add_files mont_hls_fios_csa_flat_lat.cpp -cflags "-I../include"
open_solution -reset "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 7 -name default
csynth_design
exit
