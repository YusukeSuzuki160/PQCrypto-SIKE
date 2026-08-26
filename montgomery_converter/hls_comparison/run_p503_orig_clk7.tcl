# run_p503_orig_clk7.tcl — SIKEp503 実装そのまま(変換前), N=8, 7ns clock
open_project -reset proj_mont_p503_orig_clk7
set_top mont_mul_p503_orig
add_files mont_hls_p503_orig.cpp -cflags "-I../include"
open_solution -reset "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 7 -name default
csynth_design
exit
