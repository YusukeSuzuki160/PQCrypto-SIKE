# run_fios_clk5.tcl — 通常 FIOS (CSAなし), 5ns clock
# 積極的クロック制約: サイクル数増加と短縮クロックのトレードオフを測定
open_project -reset proj_mont_fios_clk5
set_top mont_mul_fios
add_files mont_hls_fios.cpp -cflags "-I../include"
open_solution -reset "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 5 -name default
csynth_design
exit
