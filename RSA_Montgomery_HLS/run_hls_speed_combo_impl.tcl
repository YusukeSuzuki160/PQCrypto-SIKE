# run_hls_speed_combo_impl.tcl — 案A: Vitis HLSのC合成レベル見積もりではなく、
# 実際にVivado out-of-context synth+implを回し、7.3nsクロックで本当に
# タイミングが閉じるか(実クロック周波数)を検証する。
# 既存のrsa_modexp_hls_speed_combo(WBITS=5+clk7.3ns)プロジェクトを再利用。

open_project rsa_modexp_hls_speed_combo

open_solution "solution1"

export_design -rtl verilog -format ip_catalog -flow impl

exit
