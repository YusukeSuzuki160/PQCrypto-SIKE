# 最適化されたHLS合成スクリプト
# DSP使用量を大幅に削減

# プロジェクト設定
open_project sikep503_hls_optimized
set_top sikep503_kem_enc_hw_optimized

# ソースファイルの追加
add_files src/sikep503_kem_enc_hw_optimized.cpp
add_files src/generic/fp_generic_optimized.cpp
add_files src/mpx_packed_optimized.hpp

# テストベンチの追加
add_files -tb tb/tb_sikep503_kem_enc_hw_optimized.cpp

# ソリューション設定
open_solution "solution1_optimized"
set_part {xcvu29p-fsga2577-2L-e}

# クロック制約
create_clock -period 10 -name default

# 最適化設定
config_compile -name_max_length 50
config_rtl -reset all -reset_async

# DSP使用量制限の設定
config_bind -effort medium
config_schedule -effort medium
config_interface -m_axi_auto_max_ports false

# 最適化ディレクティブの適用
source src/hls_directives_optimized.tcl

# 合成実行
csynth_design

# 合成結果の確認
puts "=== 合成結果 ==="
puts "DSP使用量: [get_dsp_usage]"
puts "LUT使用量: [get_lut_usage]"
puts "FF使用量: [get_ff_usage]"
puts "BRAM使用量: [get_bram_usage]"

# 最適化結果のレポート生成
report_utilization -file utilization_optimized.rpt
report_timing -file timing_optimized.rpt
report_power -file power_optimized.rpt

# エクスポート
export_design -format ip_catalog -ipname sikep503_kem_enc_hw_optimized

puts "最適化された合成が完了しました。"
puts "DSP使用量が大幅に削減されているはずです。"
