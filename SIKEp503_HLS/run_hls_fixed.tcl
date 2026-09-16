# run_hls_fixed.tcl — 変換前(元のmp_mul+rdc_mont)+ 可変トリップ数ループ修正版
# ec_isogeny.cpp(xDBLe/xTPLe/LADDER3PT)とsidh.cpp(npts系4箇所)の
# 実行時可変ループを固定回数化し、レイテンシ不定("?")を解消したうえで
# run_hls.tcl(変換前の元祖)と同一条件で再合成する。
# src_montcsa版(変換後+同じループ修正)と対にして、モンゴメリ乗算の
# 置換だけを変数にした公平な比較を行う。

open_project -reset sikep503_hls_fixed

set_include_path {
    src
    src/generic
    src/random
    src/sha3
    .
}

add_files src/P503_internal.h
add_files src/fpx.h
add_files src/ec_isogeny.h
add_files src/sidh.h
add_files src/sike.h
add_files src/config.h
add_files src/api.h
add_files src/random/random.h
add_files src/sha3/fips202.h
add_files src/generic/mpx_iface_tvu_mul.hpp

add_files src/fpx.cpp
add_files src/ec_isogeny.cpp
add_files src/sidh.cpp
add_files src/sike.cpp
add_files src/P503.cpp
add_files src/sikep503_kem_enc_hw.cpp

add_files src/generic/fp_generic.cpp
add_files src/random/random.cpp
add_files src/sha3/fips202.cpp

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
