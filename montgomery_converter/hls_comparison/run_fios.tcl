# run_fios.tcl
open_project -reset proj_mont_fios
set_top mont_mul_fios
add_files mont_hls_fios.cpp -cflags "-I../include"
open_solution -reset "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 10 -name default
csynth_design
exit
