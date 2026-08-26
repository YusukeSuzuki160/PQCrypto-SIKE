# run_batch_throughput_clk7.tcl — 8件バッチ独立乗算のスループット実証, 7ns
open_project -reset proj_mont_batch_throughput_clk7
set_top mont_mul_batch
add_files mont_hls_batch_throughput.cpp -cflags "-I../include"
open_solution -reset "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 7 -name default
csynth_design
exit
