open_project sikep503_hls
set_top sikep503_kem_enc_hw
add_files -cflags "-std=c++17" /mnt/data/SIKEp503_HLS/src
open_solution "solution1" -flow_target vivado
set_part {xczu9eg-ffvb1156-2-i}
create_clock -period 10 -name default
csim_design
csynth_design
cosim_design -rtl verilog
export_design -format ip_catalog
exit
