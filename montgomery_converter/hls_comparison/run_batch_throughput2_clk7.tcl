# run_batch_throughput2_clk7.tcl — 8件バッチ独立乗算スループット(改良版, dim=2分割), 7ns
open_project -reset proj_mont_batch_throughput2_clk7
set_top mont_mul_batch2
add_files mont_hls_batch_throughput2.cpp -cflags "-I../include"
open_solution -reset "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 7 -name default
csynth_design
exit
