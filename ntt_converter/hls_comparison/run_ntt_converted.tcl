# run_ntt_converted.tcl
# 変換後の NTT を Vitis HLS で合成する

set part   "xcvu9p-flga2104-2-i"
set period 10

open_project  -reset proj_ntt_converted
set_top       ntt_forward_converted
add_files     ntt_hls_converted.cpp
add_files     ntt_ops_hls.hpp

open_solution -reset solution1 -flow_target vivado
set_part      $part
create_clock  -period $period -name default

puts "Running C synthesis for ntt_forward_converted (PIPELINE II=1)..."
csynth_design

# レポートをコピー
set rpt  [file join proj_ntt_converted solution1 syn report "ntt_forward_converted_csynth.rpt"]
set dst  "ntt_converted_csynth.rpt"
if {[file exists $rpt]} {
    file copy -force $rpt $dst
    puts "Report saved: $dst"
} else {
    puts "WARNING: Report not found at $rpt"
    foreach f [glob -nocomplain proj_ntt_converted/solution1/syn/report/*csynth.rpt] {
        file copy -force $f $dst
        puts "Report saved: $dst (from $f)"
        break
    }
}

close_project
exit
