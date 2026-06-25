open_project -reset proj_kara_base4
set_top test_mul_karatsuba_configurable
add_files /home/meltpoint/eeic/PQCrypto-SIKE/mp_mul_rewriter/auto/test_kara_sweep_base4.cpp
add_files /home/meltpoint/eeic/PQCrypto-SIKE/mp_mul_rewriter/auto/mpx_packed_karatsuba.hpp
open_solution -reset solution1 -flow_target vivado
set_part xcvu9p-flga2104-2-i
create_clock -period 10 -name default
csynth_design
exit
