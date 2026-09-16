# run_hls_montcsa.tcl — 変換後(FIOS-CSA-True自動置換版)のSIKEp503全体合成
# run_hls.tcl(変換前, 既存のsikep503_hlsプロジェクト)と同一のトップ関数・
# デバイス・クロックで、fpmul_mont/fpsqr_montだけがmont::MontOps<>::mul
# (montgomery_auto_rewriterで自動置換, 内部でFIOS-CSA-Trueへ委譲)に
# 置き換わったsrc_montcsa/を対象に合成する。
# csim/cosim/exportは省略しcsynth_designのみ実行(前回の全体フローは
# csynth 15分39秒 + cosim 2時間6分28秒かかったため、比較に必要な
# csynthのみに絞って時間を抑える)。

open_project -reset sikep503_hls_montcsa

set_include_path {
    src_montcsa
    src_montcsa/generic
    src_montcsa/random
    src_montcsa/sha3
    ../montgomery_converter/include
    .
}

add_files src_montcsa/P503_internal.h
add_files src_montcsa/fpx.h
add_files src_montcsa/ec_isogeny.h
add_files src_montcsa/sidh.h
add_files src_montcsa/sike.h
add_files src_montcsa/config.h
add_files src_montcsa/api.h
add_files src_montcsa/random/random.h
add_files src_montcsa/sha3/fips202.h
add_files src_montcsa/generic/mpx_iface_tvu_mul.hpp

add_files src_montcsa/fpx.cpp -cflags "-I../montgomery_converter/include"
add_files src_montcsa/ec_isogeny.cpp
add_files src_montcsa/sidh.cpp
add_files src_montcsa/sike.cpp
add_files src_montcsa/P503.cpp
add_files src_montcsa/sikep503_kem_enc_hw.cpp

add_files src_montcsa/generic/fp_generic.cpp
add_files src_montcsa/random/random.cpp
add_files src_montcsa/sha3/fips202.cpp

set_top sikep503_kem_enc_hw

open_solution "solution1" -flow_target vivado
set_part {xcvu29p-fsga2577-2L-e}
create_clock -period 10

set_directive_interface -mode ap_ctrl_hs sikep503_kem_enc_hw
set_directive_interface -mode s_axilite sikep503_kem_enc_hw
set_directive_interface -mode m_axi -depth 402 sikep503_kem_enc_hw ct
set_directive_interface -mode m_axi -depth 378 sikep503_kem_enc_hw pk
set_directive_interface -mode m_axi -depth 16 sikep503_kem_enc_hw ss

csynth_design

exit
