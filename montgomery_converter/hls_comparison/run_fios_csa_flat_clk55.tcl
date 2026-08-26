# run_fios_csa_flat_clk55.tcl — FIOS-CSA-Flat, 5.5ns clock (スイープ)
# 7ns (最良) と 5ns (悪化) の中間点を探索
open_project -reset proj_mont_fios_csa_flat_clk55
set_top mont_mul_fios_csa_flat
add_files mont_hls_fios_csa_flat.cpp -cflags "-I../include"
open_solution -reset "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 5.5 -name default
csynth_design
exit
