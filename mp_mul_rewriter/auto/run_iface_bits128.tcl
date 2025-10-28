open_project -reset proj_iface_bits128
set_top test_mul_iface_configurable
add_files test_iface_bits128.cpp
open_solution "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 10 -name default
# csim_design  # テストベンチなしなのでスキップ
puts "Running C synthesis for iface BLOCK_BITS=128..."
csynth_design
exit
