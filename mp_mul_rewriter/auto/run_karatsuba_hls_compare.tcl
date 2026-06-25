# Karatsuba HLS 比較: 手書き(再帰) / 手書き(平坦) / 変換後 PackedOps
set part "xcvu9p-flga2104-2-i"
set clock_ns 10
set out_dir "hls_comparison_results"
file mkdir $out_dir

proc try_synth {proj top src {extras ""} {out_name ""}} {
    global part clock_ns out_dir
    if {$out_name eq ""} { set out_name $proj }
    puts "\n========== $proj ($top) =========="
    set ok 1
    catch {
        open_project -reset $proj
        set_top $top
        add_files $src
        foreach f $extras { add_files $f }
        open_solution -reset solution1 -flow_target vivado
        set_part $part
        create_clock -period $clock_ns -name default
        csynth_design
        set rpt [file join $proj solution1 syn report "${top}_csynth.rpt"]
        set dst [file join $out_dir "${out_name}_csynth.rpt"]
        if {[file exists $rpt]} {
            file copy -force $rpt $dst
            puts "OK -> $dst"
        }
        close_project
    } err
    if {$err ne ""} {
        puts "FAILED: $err"
        set ok 0
        catch { close_project }
    }
    return $ok
}

try_synth proj_karatsuba_orig test_mul_karatsuba_handwritten test_karatsuba_handwritten.cpp {} karatsuba_orig
try_synth proj_karatsuba_flat test_mul_karatsuba_handwritten_flat test_karatsuba_handwritten_flat.cpp {} karatsuba_flat
try_synth proj_karatsuba_conv test_mul_karatsuba_synth test_karatsuba_synth.cpp {mpx_packed_karatsuba.hpp} karatsuba_conv

exit
