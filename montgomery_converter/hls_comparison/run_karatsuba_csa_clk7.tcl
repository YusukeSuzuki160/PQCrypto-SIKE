# run_karatsuba_csa_clk7.tcl — Karatsuba + FIOS-CSA-Flat スタイル REDC, 7ns
# REDC 外側ループを UNROLL + Pre-sum に変更 (PIPELINE との比較)
open_project -reset proj_mont_karatsuba_csa_clk7
set_top mont_mul_karatsuba_csa
add_files mont_hls_karatsuba_csa.cpp -cflags "-I../include"
open_solution -reset "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 7 -name default
csynth_design
exit
