open_project -reset proj_karatsuba_conv
set_top test_mul_karatsuba_synth
add_files test_karatsuba_synth.cpp
add_files mpx_packed_karatsuba.hpp
open_solution -reset solution1 -flow_target vivado
set_part xcvu9p-flga2104-2-i
create_clock -period 10 -name default
csynth_design
file copy -force proj_karatsuba_conv/solution1/syn/report/test_mul_karatsuba_synth_csynth.rpt hls_comparison_results/karatsuba_conv_csynth.rpt
exit
