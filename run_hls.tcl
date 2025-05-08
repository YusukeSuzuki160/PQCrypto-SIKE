# run_hls.tcl
# --- ルートを決めるだけで再帰的に全部拾う -----------------
set root "./SIKEp503_vitis"               ;# ← 元プロジェクトの src 直下
add_files -scan_type recur $root

# --- include ディレクトリ自動抽出（サブフォルダも通す） ---
set incs ""
foreach dir [glob -type d -directory $root *] {
    lappend incs "-I$dir"
}
set incs [join $incs " "]

# --- ビルドフロー ------------------------------------------
open_project sike_hls
set_top sike_p503_kernel
open_solution syn
create_clock -period 3.33 -name default
csim_design   -cflags $incs
csynth_design -cflags $incs
cosim_design
export_design -format ip_catalog