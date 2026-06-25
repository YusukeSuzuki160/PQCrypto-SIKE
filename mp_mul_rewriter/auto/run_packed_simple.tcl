open_project -reset proj_packed_simple
set_top test_mul_packed_simple

add_files test_packed_mpx_simple.cpp
add_files mpx_packed.hpp

open_solution "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 10 -name default

# csim_design  # テストベンチなしなのでスキップ
puts "Running C synthesis for packed_simple..."
csynth_design

exit
