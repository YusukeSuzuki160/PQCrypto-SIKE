# run_fios_csa_true_pipe2_clk3.tcl — FIOS-CSA-True + PIPELINE + ARRAY_PARTITION
# クロックスイープで判明した定常スループット最適点 (3ns target)
open_project -reset proj_mont_fios_csa_true_pipe2_clk3
set_top mont_mul_fios_csa_true_pipe2
add_files mont_hls_fios_csa_true_pipe2.cpp -cflags "-I../include"
open_solution -reset "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 3 -name default
csynth_design
exit
