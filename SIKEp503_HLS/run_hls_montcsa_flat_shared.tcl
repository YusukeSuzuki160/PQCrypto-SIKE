# run_hls_montcsa_flat_shared.tcl — 新オプション「リソース重視版」
# (FIOS-CSA-Flat + 平方専用コア + ループ修正 + リソース共有ディレクティブ)
# の全体合成。既存のFIOS-CSA-True版(高速重視オプション)はsrc_montcsa/に
# 残したまま、src_montcsa_flat/を対象にした別プロジェクトとして合成する。

open_project -reset sikep503_hls_montcsa_flat_shared

set_include_path {
    src_montcsa_flat
    src_montcsa_flat/generic
    src_montcsa_flat/random
    src_montcsa_flat/sha3
    ../montgomery_converter/include
    .
}

add_files src_montcsa_flat/P503_internal.h
add_files src_montcsa_flat/fpx.h
add_files src_montcsa_flat/ec_isogeny.h
add_files src_montcsa_flat/sidh.h
add_files src_montcsa_flat/sike.h
add_files src_montcsa_flat/config.h
add_files src_montcsa_flat/api.h
add_files src_montcsa_flat/random/random.h
add_files src_montcsa_flat/sha3/fips202.h
add_files src_montcsa_flat/generic/mpx_iface_tvu_mul.hpp

add_files src_montcsa_flat/fpx.cpp -cflags "-I../montgomery_converter/include"
add_files src_montcsa_flat/ec_isogeny.cpp
add_files src_montcsa_flat/sidh.cpp
add_files src_montcsa_flat/sike.cpp
add_files src_montcsa_flat/P503.cpp
add_files src_montcsa_flat/sikep503_kem_enc_hw.cpp

add_files src_montcsa_flat/generic/fp_generic.cpp
add_files src_montcsa_flat/random/random.cpp
add_files src_montcsa_flat/sha3/fips202.cpp

set_top sikep503_kem_enc_hw

open_solution "solution1" -flow_target vivado
set_part {xcvu29p-fsga2577-2L-e}
create_clock -period 10

set_directive_interface -mode ap_ctrl_hs sikep503_kem_enc_hw
set_directive_interface -mode s_axilite sikep503_kem_enc_hw
set_directive_interface -mode m_axi -depth 402 sikep503_kem_enc_hw ct
set_directive_interface -mode m_axi -depth 378 sikep503_kem_enc_hw pk
set_directive_interface -mode m_axi -depth 16 sikep503_kem_enc_hw ss

# マクロ展開後の実名 (P503_internal.h: #define fpmul_mont fpmul503_mont 等)
set_directive_allocation -type function -limit 1 sikep503_kem_enc_hw fpmul503_mont
set_directive_allocation -type function -limit 1 sikep503_kem_enc_hw fpsqr503_mont
# fp2mul_mont(GF(p^2)乗算、同型写像ウォーク中の支配的な乗算経路)が16個の
# 別インスタンスに複製される問題への対処実験。これまでfpmul503_mont/
# fpsqr503_montにしかALLOCATIONディレクティブを適用しておらず、
# fp2mul503_mont/mp_mul自体は一度も制約していなかった。
set_directive_allocation -type function -limit 1 sikep503_kem_enc_hw fp2mul503_mont
set_directive_allocation -type function -limit 1 sikep503_kem_enc_hw fp2sqr503_mont
set_directive_allocation -type function -limit 1 sikep503_kem_enc_hw mp_mul

csynth_design

exit
