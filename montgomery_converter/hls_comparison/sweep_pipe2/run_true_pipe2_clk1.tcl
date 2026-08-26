open_project -reset proj_true_pipe2_clk1
set_top mont_mul_fios_csa_true_pipe2
add_files ../mont_hls_fios_csa_true_pipe2.cpp -cflags "-I../../include"
open_solution -reset "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 1 -name default
csynth_design
exit
