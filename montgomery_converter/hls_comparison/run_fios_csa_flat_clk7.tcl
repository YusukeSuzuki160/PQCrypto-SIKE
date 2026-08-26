# run_fios_csa_flat_clk7.tcl — FIOS-CSA 外側ループ展開版, 7ns clock
# Pre-sum (carry 5ns/step) + 外側 UNROLL の複合最適化
open_project -reset proj_mont_fios_csa_flat_clk7
set_top mont_mul_fios_csa_flat
add_files mont_hls_fios_csa_flat.cpp -cflags "-I../include"
open_solution -reset "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 7 -name default
csynth_design
exit
