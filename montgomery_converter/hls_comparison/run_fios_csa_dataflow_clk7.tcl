# run_fios_csa_dataflow_clk7.tcl — FIOS-CSA DATAFLOW 版, 7ns clock
# 4 反復を明示的関数に分割し HLS DATAFLOW で連結 (スループット II 改善狙い)
open_project -reset proj_mont_fios_csa_dataflow_clk7
set_top mont_mul_fios_csa_dataflow
add_files mont_hls_fios_csa_dataflow.cpp -cflags "-I../include"
open_solution -reset "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 7 -name default
csynth_design
exit
