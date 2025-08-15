# Vitis HLS batch flow to compare "mp_mul_orig" vs "mp_mul_packed".
# Usage: vitis_hls -f scripts/run_hls.tcl
set proj_name mpx_compare
set src_dir   "./src"
set inc_dir   "./include"
set tb_dir    "./tb"

# Env
set part   [expr {[info exists ::env(HLS_PART)] ? $::env(HLS_PART) : "xcu250-figd2104-2L-e"}]
set period [expr {[info exists ::env(HLS_CLK)]  ? $::env(HLS_CLK)  : 3.3}]

# Optional extra include flags
set extra_inc ""
if {[info exists ::env(HLS_INC)] && $::env(HLS_INC) ne ""} {
  set extra_inc $::env(HLS_INC)
}

puts "===> PART=$part, CLOCK=$period ns, EXTRA_INC='$extra_inc'"

# === Solution: Original (schoolbook) ===
open_project -reset ${proj_name}_orig
set_top mp_mul_orig
add_files -cflags "-I$inc_dir -I$src_dir $extra_inc" $src_dir/mp_mul_orig.cpp
add_files -cflags "-I$inc_dir -I$src_dir $extra_inc" $src_dir/types.hpp
add_files -tb   -cflags "-I$inc_dir -I$src_dir $extra_inc" $tb_dir/tb_mul_orig.cpp

open_solution -reset "orig"
set_part $part
create_clock -period $period -name default
csim_design
csynth_design
# cosim_design -setup -rtl verilog
export_design -format ip_catalog -rtl verilog -output ./export_orig
close_project

# === Solution: Packed (ap_uint) ===
open_project -reset ${proj_name}_packed
set_top mp_mul_packed
add_files -cflags "-I$inc_dir -I$src_dir $extra_inc" $src_dir/mp_mul_packed.cpp
add_files -cflags "-I$inc_dir -I$src_dir $extra_inc" $src_dir/types.hpp
add_files -cflags "-I$inc_dir -I$src_dir $extra_inc" $inc_dir/mpx_packed.hpp
add_files -tb   -cflags "-I$inc_dir -I$src_dir $extra_inc" $tb_dir/tb_mul_packed.cpp

open_solution -reset "packed"
set_part $part
create_clock -period $period -name default
csim_design
csynth_design
# cosim_design -setup -rtl verilog
export_design -format ip_catalog -rtl verilog -output ./export_packed
close_project

exit
