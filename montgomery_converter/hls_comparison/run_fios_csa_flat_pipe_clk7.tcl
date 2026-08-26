# run_fios_csa_flat_pipe_clk7.tcl — 既存最良 + トップ PIPELINE II=1 対照実験, 7ns clock
open_project -reset proj_mont_fios_csa_flat_pipe_clk7
set_top mont_mul_fios_csa_flat_pipe
add_files mont_hls_fios_csa_flat_pipe.cpp -cflags "-I../include"
open_solution -reset "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 7 -name default
csynth_design
exit
