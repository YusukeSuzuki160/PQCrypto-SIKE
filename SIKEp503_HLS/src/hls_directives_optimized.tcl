# HLS最適化ディレクティブ
# DSP使用量を大幅に削減するための設定

# 全体のDSP使用量を制限
set_directive_allocation -limit 10 -type function sikep503_kem_enc_hw

# 乗算器のDSP使用量を制限
set_directive_allocation -limit 1 -type operation mul sikep503_kem_enc_hw
set_directive_allocation -limit 1 -type operation mul mp_mul_optimized
set_directive_allocation -limit 1 -type operation mul digit_x_digit_optimized
set_directive_allocation -limit 1 -type operation mul mp_mul
set_directive_allocation -limit 1 -type function mp_mul

# パイプライン最適化
set_directive_pipeline sikep503_kem_enc_hw
set_directive_pipeline mp_mul_optimized
set_directive_pipeline rdc_mont_optimized

# ループ最適化（実際のループ名に合わせて調整）
# set_directive_unroll -factor 2 sikep503_kem_enc_hw/loop_i
# set_directive_unroll -factor 2 sikep503_kem_enc_hw/loop_j

# 配列分割最適化（実際の変数名に合わせて調整）
# set_directive_array_partition -type complete -dim 1 sikep503_kem_enc_hw/a
# set_directive_array_partition -type complete -dim 1 sikep503_kem_enc_hw/b
# set_directive_array_partition -type complete -dim 1 sikep503_kem_enc_hw/c

# インターフェース最適化（実際の変数名に合わせて調整）
# set_directive_interface -mode ap_fifo sikep503_kem_enc_hw/a
# set_directive_interface -mode ap_fifo sikep503_kem_enc_hw/b
# set_directive_interface -mode ap_fifo sikep503_kem_enc_hw/c

# リソース使用量の制限
set_directive_resource -core Mul_LUT sikep503_kem_enc_hw
set_directive_resource -core Mul_LUT mp_mul_optimized
set_directive_resource -core Mul_LUT digit_x_digit_optimized
set_directive_resource -core Mul_LUT mp_mul

# データフロー最適化
set_directive_dataflow sikep503_kem_enc_hw

# メモリ最適化（実際の変数名に合わせて調整）
# set_directive_array_reshape -type complete -dim 1 sikep503_kem_enc_hw/temp
# set_directive_array_reshape -type complete -dim 1 sikep503_kem_enc_hw/result

# 依存関係の最適化（実際の変数名に合わせて調整）
# set_directive_dependence -variable c -type inter -direction RAW sikep503_kem_enc_hw
# set_directive_dependence -variable temp -type inter -direction RAW sikep503_kem_enc_hw
