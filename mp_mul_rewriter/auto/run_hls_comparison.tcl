# run_hls_comparison.tcl
# 3つのバージョンのHLS合成を実行・比較するスクリプト

puts "============================================"
puts "HLS Performance Comparison Test"
puts "============================================"

# 出力ディレクトリ
set output_dir "hls_comparison_results"
file mkdir $output_dir

# テストケースのリスト
set test_cases [list \
    {test_orig "Original (pre-conversion)" test_orig.cpp} \
    {test_converted "Converted (PackedOps)" test_converted.cpp mpx_packed.hpp} \
    {test_comba "Comba multiplication" test_comba.cpp} \
    {karatsuba_synth "Karatsuba (PackedOps)" test_karatsuba_synth.cpp mpx_packed_karatsuba.hpp} \
]

# 各テストケースを実行
foreach test_case $test_cases {
    set name [lindex $test_case 0]
    set desc [lindex $test_case 1]
    set src [lindex $test_case 2]
    
    puts "\n============================================"
    puts "Testing: $name - $desc"
    puts "============================================"
    
    # プロジェクト作成
    open_project -reset "proj_${name}"
    set_top test_mul_${name}
    
    # ソースファイル追加
    add_files $src
    
    # 追加のヘッダファイルがあれば追加
    if {[llength $test_case] > 3} {
        foreach header [lrange $test_case 3 end] {
            add_files -tb $header
        }
    }
    
    # Cシミュレーション実行
    puts "\n--- Running C simulation ---"
    open_solution -reset "solution1" -flow_target vivado
    set_part {xcvu9p-flga2104-2-i}
    create_clock -period 10 -name default
    
    csim_design
    
    # 合成実行
    puts "\n--- Running C synthesis ---"
    csynth_design
    
    # 結果を保存
    set rpt_file [file join $output_dir "${name}_report.txt"]
    puts "Saving report to $rpt_file"
    
    # レポートの主要な情報を抽出
    set report_content "========================================\n"
    append report_content "Test: $name - $desc\n"
    append report_content "========================================\n\n"
    
    # C合成レポートから情報を取得
    append report_content "=== C Synthesis Report ===\n"
    set synth_report [file join proj_${name} solution1 syn report "test_mul_${name}_csynth.rpt"]
    if {[file exists $synth_report]} {
        append report_content [read_file $synth_report]
    }
    
    # ファイルに書き込み
    set fp [open $rpt_file w]
    puts $fp $report_content
    close $fp
    
    # 結果を表示
    puts "\nReport saved to: $rpt_file"
    
    # プロジェクトを閉じる
    close_project
}

puts "\n============================================"
puts "All tests completed!"
puts "Results saved in: $output_dir"
puts "============================================"

# 結果のサマリーを表示
puts "\nGenerating summary..."
set summary_file [file join $output_dir "summary.txt"]
set fp [open $summary_file w]

puts $fp "HLS Performance Comparison Summary"
puts $fp "Generated: [clock format [clock seconds]]"
puts $fp "\n========================================\n"

foreach test_case $test_cases {
    set name [lindex $test_case 0]
    set desc [lindex $test_case 1]
    set rpt_file [file join $output_dir "${name}_report.txt"]
    
    puts $fp "\n--- $name: $desc ---"
    puts $fp "Report: $rpt_file"
    puts $fp ""
    
    # レポートファイルから主要な指標を抽出
    if {[file exists $rpt_file]} {
        set rpt_content [read_file $rpt_file]
        # 簡易的にファイルサイズを表示（実際は詳細なパースが必要）
        puts $fp "Report size: [file size $rpt_file] bytes"
    }
}

close $fp
puts "Summary saved to: $summary_file"

