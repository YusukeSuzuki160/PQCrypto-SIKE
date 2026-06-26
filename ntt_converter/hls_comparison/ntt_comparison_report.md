# NTT HLS 合成比較レポート

**ターゲットデバイス**: xcvu9p-flga2104-2-i (Vitis HLS 2024.2, 10ns clock)  
**変換前**: `ntt_forward_orig` — `#pragma HLS PIPELINE` なし  
**変換後**: `ntt_forward_converted` — `#pragma HLS PIPELINE II=1` あり  

| 指標 | 変換前 | 変換後 |
|------|--------|--------|
| 推定クロック周期 | 5.643 ns | 5.643 ns |
| 推定 Fmax | 177.2 MHz | 177.2 MHz |
| レイテンシ max[clk] | ? | 18543634 |
| レイテンシ max[abs] | ? | 0.185 sec |
| 内側ループ Final II | 69 | 71 |
| 内側ループ Depth | 70 | 71 |
| LUT | 7536 | 7545 |
| FF | 9058 | 9052 |
| DSP | 4 | 4 |
| BRAM | 0 | 0 |

## 考察

- 内側バタフライループの II は変換前後でほぼ同等
- ボトルネック: `srem`（`%` 演算）が ~68サイクルのレイテンシを持つため II = 1 未達
- DSP・LUT・FF 使用量はほぼ同等
- **変換後**は LOOP_TRIPCOUNT pragma により HLS がレイテンシを具体的に推定できる
- 改善策: ARRAY_PARTITION + Barrett/Montgomery リダクション
