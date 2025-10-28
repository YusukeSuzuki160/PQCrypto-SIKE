open_project -reset proj_comba_bits16
set_top test_mul_comba_configurable
add_files test_comba_bits16.cpp
open_solution "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 10 -name default
# csim_design  # テストベンチなしなのでスキップ
puts "Running C synthesis for comba CHUNK_BITS=16..."
csynth_design
exit
