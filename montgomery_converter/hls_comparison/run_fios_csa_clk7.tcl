# run_fios_csa_clk7.tcl — FIOS + CSA inner loop, 7ns clock
# 7ns クロックでは CSA版の 5ns/step < 7ns → 1サイクル/step を期待
# 通常版 FIOS は 8ns/step > 7ns → 2サイクル/step になるため CSA が優位
open_project -reset proj_mont_fios_csa_clk7
set_top mont_mul_fios_csa
add_files mont_hls_fios_csa.cpp -cflags "-I../include"
open_solution -reset "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 7 -name default
csynth_design
exit
