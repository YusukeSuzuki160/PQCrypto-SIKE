open_project -reset proj_converted
set_top test_mul_converted

add_files test_converted.cpp
add_files mpx_packed.hpp

open_solution "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 10 -name default

# csim_design  # テストベンチなしなのでスキップ
puts "Running C synthesis for converted..."
csynth_design

exit
