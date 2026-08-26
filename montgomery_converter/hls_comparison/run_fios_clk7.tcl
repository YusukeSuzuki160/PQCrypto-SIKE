# run_fios_clk7.tcl — 通常 FIOS (CSAなし), 7ns clock
# CSA版との比較用: クロック変更の単独効果を測定
open_project -reset proj_mont_fios_clk7
set_top mont_mul_fios
add_files mont_hls_fios.cpp -cflags "-I../include"
open_solution -reset "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 7 -name default
csynth_design
exit
