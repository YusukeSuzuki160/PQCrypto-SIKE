# run_hls_montcsa_shared.tcl — 変換後(FIOS-CSA-True + 平方専用コア)
# + リソース共有ディレクティブ + ループ修正済み版。
# fpmul_mont/fpsqr_montを、元のmp_mulと同様に「設計全体で1個だけ生成し
# 時分割共有する」よう set_directive_allocation -type function -limit 1
# で強制することで、無制御な複製によるDSP/LUT爆発(前回: DSP442%,
# LUT1542%)を解消できるか検証する。

open_project -reset sikep503_hls_montcsa_shared

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

# モンゴメリ乗算/平方コアを設計全体で1個だけに制限し、
# 全呼び出し箇所で時分割共有させる(元のmp_mulが持っていた
# limit=1 function 相当の指定をfpmul_mont/fpsqr_montにも適用)。
# P503_internal.h の #define fpmul_mont fpmul503_mont (fpsqr_mont も同様) により
# 実体のシンボル名は fpmul503_mont/fpsqr503_mont になっているため、
# set_directive_allocation にはマクロ展開後の実名を渡す必要がある。
set_directive_allocation -type function -limit 1 sikep503_kem_enc_hw fpmul503_mont
set_directive_allocation -type function -limit 1 sikep503_kem_enc_hw fpsqr503_mont
# fp2mul_mont(GF(p^2)乗算、同型写像ウォーク中の支配的な乗算経路)が16個の
# 別インスタンスに複製される問題への対処実験。
set_directive_allocation -type function -limit 1 sikep503_kem_enc_hw fp2mul503_mont
set_directive_allocation -type function -limit 1 sikep503_kem_enc_hw fp2sqr503_mont
set_directive_allocation -type function -limit 1 sikep503_kem_enc_hw mp_mul

csynth_design

exit
