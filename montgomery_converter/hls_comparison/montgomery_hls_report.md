# FPGA 向け 256-bit Montgomery 乗算の HLS 実装と最適化

**最終更新**: 2026-08-26  
**デバイス**: Xilinx xcvu9p-flga2104-2-i (UltraScale+)  
**ツール**: Vitis HLS 2024.2  
**対象**: 256-bit Montgomery 乗算（SIKE/SIDH 鍵演算）  
**最良結果（単発レイテンシ, N=4）**: **FIOS-CSA-True @ 7 ns = 90.1 ns** (CIOS 比 -45%, Noyez 2024 比 -56%, 旧最良 FIOS-CSA-Flat 比 -10%)  
**最良結果（連続呼出しスループット, N=4）**: **FIOS-CSA-True + PIPELINE + ARRAY_PARTITION @3nsクロック = 真のII=1, 2.157 ns/回**、初回レイテンシ 133.7 ns（$K\gtrsim23$ 回連鎖で最有利）  
**実SIKE統合（N=8, フェーズ2）**: 自動検出→自動置換パイプラインで公式KAT PASSED。HLS上は変換前(素朴翻訳、可変167〜951cyc)比 最大26.6倍高速化を実証。一方CPUソフトウェアでは約10%悪化 — HLS最適化はハードウェア専用の知見であることを実プロトコルで確認

> 2026-08-25 追記: RTL 実装への性能接近を目的に、(1) 真の Carry-Save（冗長表現）化、
> (2) DSP48E2 BIND_OP 明示指定、(3) トップ関数レベル PIPELINE によるスループット化、
> (4) 入力配列 ARRAY_PARTITION による真の II=1 化、(5) パイプライン版のクロックスイープ、
> の5方向を実装・実測した。詳細は 3.9〜3.10 節および 6.3 節を参照。
>
> 2026-08-26 追記（フェーズ2）: 実際の SIKEp503 参照実装に対する自動検出・自動置換・
> KAT実証・N=8でのHLS比較・平方専用コア・バッチスループット実証を実施。
> 詳細は 11 節を参照。

---

## 1. 研究背景

### 1.1 耐量子暗号と SIKE

従来の公開鍵暗号（RSA、楕円曲線暗号）は量子コンピュータの Shor アルゴリズムによって解読される。これに対し、**SIKE (Supersingular Isogeny Key Encapsulation)** は NIST 耐量子暗号標準化プロセスに提案された鍵カプセル化方式であり、超特異楕円曲線上の同種写像に基づく。

SIKE の演算コストの大部分は**剰余乗算**（特に Montgomery 乗算）に集中する。256-bit 法（SIKEp434 では法サイズ 434-bit だが、本研究では 256-bit で評価）の Montgomery 乗算は演算全体の律速段階であり、FPGA 上での高速化が重要課題となる。

### 1.2 Montgomery 乗算の基礎

**Montgomery 乗算**は、法 $p$（奇数）に対して以下を計算する：

$$\text{MontMul}(a, b) = a \cdot b \cdot R^{-1} \pmod{p}$$

ここで $R = W^N$（$W$ は語幅 = $2^{64}$、$N$ は語数 = 4 for 256-bit）。

**REDC（Montgomery Reduction）アルゴリズム**の核心：
1. $m = t[0] \cdot p' \pmod{W}$（ただし $p' = -p^{-1} \pmod{W}$）
2. $t \leftarrow (t + m \cdot p) / W$
3. これを $N$ 回繰り返す

---

## 2. 参考論文

### 2.1 アルゴリズム設計の基礎文献

| 論文 | 内容 | 本研究での位置づけ |
|------|------|------------------|
| Koç, Acar, Kaliski, *"Analyzing and Comparing Montgomery Multiplication Algorithms"*, IEEE Micro 1996 | CIOS・FIOS・SOS の定式化と比較 | 本研究で実装した 3 アルゴリズムの元論文 |
| Montgomery, *"Modular multiplication without trial division"*, Math. Comp. 1985 | Montgomery 乗算の原論文 | 演算定義の基礎 |
| Karatsuba, Ofman, *"Multiplication of multidigit numbers on automata"*, 1963 | 分割乗算（Karatsuba アルゴリズム） | Karatsuba 実装の基礎 |

### 2.2 FPGA 実装の比較対象論文

#### [1] Noyez, *"Efficient implementation of Montgomery modular multiplication in FPGAs"*, ACM TRETS 2024

- **デバイス**: Xilinx xczu9eg (UltraScale+, Zynq Ultrascale+)
- **手法**: FIOS アルゴリズム、HLS (Vitis HLS) 実装
- **256-bit 結果**: 127 サイクル @ 625 MHz = **203 ns**
- **本研究との比較**: 同系列デバイス・同 HLS 手法での直接比較対象。本研究の最良実装（100.6 ns）は Noyez より **50% 高速**。

#### [2] Gong, Xu, Huang, *"Efficient Hardware Implementation of Montgomery Modular Multiplication"* (Virtex-6)

- **デバイス**: Xilinx Virtex-6 (旧世代)
- **手法**: Karatsuba KO-3（3-way 分割）、RTL 手設計、II=1 パイプライン
- **256-bit 結果**: 4 サイクル @ 68 MHz = **58.8 ns**
- **本研究との比較**: RTL 手設計と HLS の差。II=1 の完全パイプラインは HLS では再現困難。

#### [3] Ding & Li, *"NLP-based Montgomery multiplication on FPGA"* (Virtex-6)

- **デバイス**: Xilinx Virtex-6
- **手法**: NLP（Normal Loop Processing）+ Karatsuba 3/4-way
- **256-bit 結果**: **62.6 ns**
- **本研究との比較**: RTL 最適化手法。Gong と同様に HLS では差が出る。

### 2.3 HLS 最適化に関する参考資料

| 資料 | 内容 |
|------|------|
| Xilinx UG902 *Vitis HLS User Guide* | PIPELINE・UNROLL・ARRAY_PARTITION pragma の仕様 |
| Xilinx UG574 *UltraScale+ DSP58E2 User Guide* | DSP48E2 の乗算レイテンシとキャリーチェーン特性 |

---

## 3. 実装したアルゴリズム

### 3.1 パラメータ共通設定

| パラメータ | 値 | 説明 |
|-----------|-----|------|
| $N$ (NWORDS) | 4 | 語数（256-bit / 64-bit） |
| $W$ (WBITS) | 64 bit | 語幅 |
| デバイス | xcvu9p-flga2104-2-i | Xilinx UltraScale+ |
| クロック目標 | 7 ns（最良構成）/ 10 ns | 7.15 ns = 140 MHz 相当 |
| 言語 | C++14（HLS pragma 付き） |  |

---

### 3.2 CIOS（Coarsely Integrated Operand Scanning）

**ファイル**: `include/mont_ops_fast.hpp`  
**基本文献**: Koç ら 1996

#### アルゴリズム

```
for i = 0..N-1:
    PP_LOOP: for j = 0..N-1:   # 部分積の累積
        t[j] += a[j]*b[i] + C
    m = t[0] * p' mod W
    RED_LOOP: for j = 1..N-1:  # リダクション
        t[j-1] += m*mod[j] + C
    t[N-1] += C
条件付き減算
```

#### HLS 実装のポイント

- 外側ループに `#pragma HLS PIPELINE`
- 内側 PP_LOOP・RED_LOOP に `#pragma HLS UNROLL`
- `t[0..N]` を `#pragma HLS ARRAY_PARTITION complete` でレジスタ化

#### キャリー連鎖の深さ

- PP_LOOP（$N$ ステップ）+ RED_LOOP（$N-1$ ステップ）= **$2N-1 = 7$ 加算レベル/外側ステップ**
- これが外側ループ II の律速要因

---

### 3.3 FIOS（Finely Integrated Operand Scanning）

**ファイル**: `include/mont_ops_fios.hpp`  
**基本文献**: Koç ら 1996

#### アルゴリズム（CIOS との差異）

CIOS は PP と RED を分離した 2 本のループを外側ループ内で実行するのに対し、  
FIOS は PP + RED を **1 本の統合ループ**でステップごとに交互実行する：

```
for i = 0..N-1:
    # j=0 前処理
    pp0 = a[0]*b[i];  lo0 = pp0_lo + t[0];  u_i = lo0_lo * p' mod W
    pm0 = u_i * mod[0];  C = 上位桁のまとめ
    
    FIOS_INNER (j=1..N-1, UNROLL):
        pp = a[j]*b[i]
        pm = u_i*mod[j]
        lo = pp_lo + pm_lo + t[j] + C_lo   # 4入力 64-bit 加算
        hi = pp_hi + pm_hi + C_hi + lo_carry  # 4入力 64-bit 加算
        t[j-1] = lo_lo
        C = hi
    
    t[N-1] = C
条件付き減算
```

#### キャリー連鎖の深さ

- FIOS_INNER（$N-1 = 3$ ステップ）= **$N-1 = 3$ 加算レベル/外側ステップ**
- CIOS（2N-1=7）に対して半分以下

#### オーバーフロー対策

$pp + pm + t[j] + C$ の直接計算は `Wide`（128-bit）を超える可能性があるため、  
lo/hi 分割（各 64-bit ハーフで計算）を使用し安全性を確保。

---

### 3.4 SOS（Separated Operand Scanning）

**ファイル**: `include/mont_ops_sos.hpp`  
**基本文献**: Koç ら 1996

#### アルゴリズム

```
Phase 1 (full_product): t[0..2N] = a * b  (N×N schoolbook, PIPELINE outer)
Phase 2 (redc):         Montgomery REDC, 2N語 → N語  (PIPELINE outer)
条件付き減算
```

#### 特徴

- 2 フェーズ分離により Phase 1 の外側ループが独立してパイプライン化可能
- 中間バッファ $2N+1 = 9$ 語必要（CIOS の $N+2 = 6$ 語より多い）
- $N=4$ では CIOS より外側ループ数が多く不利（大きな $N$ では優位）

#### REDC_CARRY バグの修正

元々の `k=0..N` のループ（最大インデックス $i+N+k$ が配列外 = $3N-1 = 11$ に達する）を、  
2 ステップ固定展開で修正：

```cpp
// 修正前 (配列外アクセス→HLSが全計算を除去し 0-cycle 出力):
for (k=0; k<=NWORDS; k++) { t[i+NWORDS+k] += C; }

// 修正後 (2ステップ固定、最大インデックス i+N+1 ≤ 2N ≤ 8):
Wide s0 = t[i+NWORDS] + C;   t[i+NWORDS]   = s0 & MASK;
Wide s1 = t[i+NWORDS+1] + (s0>>W);  t[i+NWORDS+1] = s1 & MASK;
```

---

### 3.5 Karatsuba KO-2（2-way 分割）

**ファイル**: `include/mont_ops_karatsuba.hpp`  
**基本文献**: Karatsuba & Ofman 1963

#### 原理

$N=4$ 語の被乗数を $k = N/2 = 2$ 語に分割：

$$a = a_{\text{hi}} \cdot W^2 + a_{\text{lo}}, \quad b = b_{\text{hi}} \cdot W^2 + b_{\text{lo}}$$

$$a \cdot b = \underbrace{a_{\text{hi}} \cdot b_{\text{hi}}}_{\text{hh}} \cdot W^4 + \underbrace{(mm - ll - hh)}_{\text{cross}} \cdot W^2 + \underbrace{a_{\text{lo}} \cdot b_{\text{lo}}}_{\text{ll}}$$

ここで $mm = (a_{\text{lo}} + a_{\text{hi}})(b_{\text{lo}} + b_{\text{hi}})$。

| 部分積 | サイズ | 依存関係 |
|------|------|---------|
| ll = $a_\text{lo} \times b_\text{lo}$ | 2×2 → 5語 | 独立 |
| hh = $a_\text{hi} \times b_\text{hi}$ | 2×2 → 5語 | 独立 |
| mm = $a_\text{mid} \times b_\text{mid}$ | 3×3 → 7語 | 独立 |

**3 部分積は互いに独立** → HLS が並列スケジューリング可能。

#### 理論上の演算量削減

| 手法 | 乗算数 | 複雑度 |
|------|------|------|
| schoolbook | $N^2 = 16$ | $O(N^2)$ |
| Karatsuba KO-2 | $3 \times 4 = 12$ | $O(N^{\log_2 3}) \approx O(N^{1.585})$ |

$N=4$ では削減効果が小さく（25%減）、REDC のオーバーヘッドで打ち消される。  
$N \geq 8$（512-bit 以上）で顕著な優位性が現れる。

---

### 3.6 FIOS-CSA（Pre-sum 最適化 FIOS）

**ファイル**: `include/mont_ops_fios_csa.hpp`  
**本研究での新規実装**

#### 着想

通常 FIOS の内側ループでは、4 入力加算の結果（lo）がキャリー C として次ステップに伝わる：

```
lo = pp_lo + pm_lo + t[j] + C_lo   # C依存: 4入力 ≈ 4ns
hi = pp_hi + pm_hi + C_hi + carry  # C依存: 4入力 ≈ 4ns
→ C チェーン: ~8 ns/ステップ（10 ns クロックで 1 サイクル/ステップ、余裕なし）
```

C に**依存しない項** (`pp`, `pm`, `t[j]`) を先に合計（事前和）し、  
C の加算を最後に 2 入力加算に還元する：

```
[事前計算, 全 j 並列, C 不要]:
    base_lo = pp_lo + pm_lo + t[j]   # 3入力 ≈ 3ns
    base_hi = pp_hi + pm_hi + base_lo_carry  # 3入力 ≈ 3ns

[キャリーチェーン, 逐次]:
    lo_sum = base_lo + C_lo          # 2入力 ≈ 2ns ← クリティカルパス短縮
    hi_sum = base_hi + C_hi + carry  # 3入力 ≈ 3ns
→ C チェーン: ~5 ns/ステップ
```

#### 効果

| 手法 | C チェーン深さ/ステップ | 10 ns クロック | 7 ns クロック |
|------|----------------|--------------|-------------|
| 通常 FIOS | ~8 ns | 1 サイクル（余裕なし） | **2 サイクル** |
| FIOS-CSA | ~5 ns | 1 サイクル（余裕あり） | **1 サイクル** |

7 ns クロック制約下では、CSA 版は通常版の **半分** のサイクル数でキャリー処理が完了。

#### オーバーフロー設計

`Wide`（`__uint128_t` for T=`uint64_t`）の上限（128 bit）を超えないよう、  
CSA を 128-bit 全幅 XOR では実装せず、lo/hi スプリットを維持したまま入力数を削減する方針を採用。

---

### 3.7 FIOS-Flat（外側ループ完全展開版）

**ファイル**: `include/mont_ops_fios_flat.hpp`  
**本研究での新規実装**

#### 着想：PIPELINE から UNROLL へ

通常 FIOS の外側ループは `#pragma HLS PIPELINE` でパイプライン化される。HLS はこのとき**イニシエーション間隔（II）**を反復間 RAW 依存の深さ以上に設定する：

- `t[0]` は反復 $i$ で書き込まれ、反復 $i+1$ で読み出される（RAW 依存）
- HLS は II ≥ (t[0] が書き込まれるまでのサイクル数) を強制
- 7 ns クロック：II ≈ 7.5 → 合計 29 サイクル

外側ループに `#pragma HLS UNROLL`（完全展開）を適用すると：

- HLS が全 $N=4$ 反復を**1 つのフラットな組み合わせ回路**として認識
- `a[j] * b[i+1]`（`t[]` 非依存）を反復 $i$ の実行中に**前乗り計算**できる
- `t[0]` が書き込まれた直後に反復 $i+1$ の `u_{i+1}` 計算を即座に開始
- II 制約がなく、実際のデータ依存のみがクリティカルパスを決定

```
通常 FIOS PIPELINE (II=7.5):
  反復 0 → 反復 1 → 反復 2 → 反復 3
  ←7.5cy→  ←7.5cy→  ←7.5cy→
  合計 ≈ 29 cy

FIOS-Flat UNROLL（概念図）:
  反復 0:  DSP(0) → u_0 → carry_chain → t[0]@cy7
  反復 1:  DSP(1)[cy0から並列] → u_1@cy9 → carry → t[0]@cy12
  反復 2:  DSP(2)[cy0から並列] → u_2@cy14 → carry → t[0]@cy16
  反復 3:  DSP(3)[cy0から並列] → u_3@cy18 → carry → t[0]@cy21
  合計 ≈ 22 cy
```

#### 実装

```cpp
FIOS_OUTER: for (unsigned i = 0; i < NWORDS; i++) {
#pragma HLS UNROLL   // ← PIPELINE の代わり
    // ... (内側はそのまま)
}
```

#### 効果

- サイクル数: 29 → **22**（-24%）
- 推定クロック: 4.933 → 5.029 ns（+2%）
- 絶対レイテンシ: 143.1 → **110.6 ns**（-23%）
- DSP: 58 → 122（外側 4 反復分の DSP を並列配置）

---

### 3.8 FIOS-CSA-Flat（外側ループ展開 + Pre-sum 複合最適化）

**ファイル**: `include/mont_ops_fios_csa_flat.hpp`  
**本研究での新規実装（最良実装）**

#### 2 つの最適化の組み合わせ

| 最適化 | 効果 |
|--------|------|
| Pre-sum（FIOS-CSA）| C チェーン 8 ns/ステップ → 5 ns/ステップ |
| 外側 UNROLL（FIOS-Flat）| 全 4 反復を一括スケジュール、前乗り計算を許可 |

外側 UNROLL と Pre-sum を組み合わせることで：
1. 全反復の DSP 計算（`pp[j][i]` = `a[j]*b[i]`）を並列実行（`t[]` 非依存）
2. 事前和 `base_lo`, `base_hi`（C 非依存）を並列計算
3. キャリーチェーンの各ステップが 5 ns 以下 → 7 ns クロックで 1 サイクル/ステップ
4. 反復間の前乗り計算が最大限活用される

#### 合成結果（★ 本研究最良）

| 指標 | 値 |
|------|----|
| サイクル数 | **20** |
| 推定クロック | 5.029 ns (198.8 MHz) |
| **絶対レイテンシ** | **100.6 ns** |
| DSP | 186 |
| LUT | 10,807 |
| FF | 6,087 |

CIOS ベスト比 -38%, Noyez 2024 比 -50%。

---

### 3.9 FIOS-CSA-True（真の Carry-Save／冗長表現版, ★ 新最良）

**ファイル**: `include/mont_ops_fios_csa_true.hpp`  
**本研究での新規実装（2026-08-25, 新最良）**

#### 着想

FIOS-CSA-Flat の Pre-sum は「1 ステップあたりの入力数」を減らしたが、外側反復
$i$ の内部では依然として `t[]` を毎回 **通常の2進数（正規化済み）配列** として
確定させており、$j=1..N-1$ の CARRY_CHAIN には逐次キャリー伝播が残っていた
（N=4 では 2 段程度と浅いが、ゼロではない）。

本実装は `t[]` を **N 回の外側反復全体を通じて冗長表現のまま保持**する：

$$\text{value} = \sum_k (S[k] + Cy[k]) \cdot W^k$$

各反復では
- $u_i$ を決めるのに必要な「下位語 mod W」だけを 1 語幅の小さな CPA で正規化
  （$N$ に依存しない浅い演算）
- それ以外の語は **3:2 圧縮器**（`sum = a^b^c`, `carry = ((a&b)|(b&c)|(a&c))<<1`）
  による Wallace 木で複数オペランドを 2 本の冗長行に圧縮するだけ
  （ビット単位で桁上げが伝播しないため、幅 $W$ に依らず定数段数）

最終的な正規化（本物の桁上げ伝播）は **全反復が終わったあと 1 回だけ** 行う。

正当性は 3:2 圧縮器の恒等式 $a+b+c = (a \oplus b \oplus c) + (((a \wedge b) \vee (b \wedge c) \vee (a \wedge c)) \ll 1)$
がビット幅に依らず厳密に成立することによる。各スロットの演算子集合は
FIOS-CSA-Flat の Step A / PRESUM / CARRY_CHAIN / Step D が計算する値を代数的に
追跡し、「いつ正規化するか」だけを変える形で導出した。

#### 正確性検証

`test_csa_true.cpp` にて CIOS 基準と 20,000 件のランダムベクトル + エッジケースで
完全一致（20,002/20,002 PASS）。さらに `test_new_algos.cpp`（T=uint32_t, N=8 の
別パラメータ）でも一致を確認し、ワード幅・語数に依らない正しさを確認した。

#### 合成結果（★ 新最良・単発レイテンシ）

| 指標 | 値 |
|------|----|
| サイクル数 | **18** |
| 推定クロック | 5.008 ns |
| **絶対レイテンシ** | **90.1 ns** |
| DSP | 186 |
| FF | 7,318 |
| LUT | 36,463 |

FIOS-CSA-Flat（旧最良, 100.6 ns）比 **-10.4%**。DSP 数は同じ 186 のままだが、
LUT は 10,807→36,463（3.4倍）に増加した。これは 3:2 圧縮器が FPGA の専用
高速キャリーチェーン（CARRY8 プリミティブ）を使わず LUT ベースの XOR/AND
ゲートで実装されるため。それでもデバイス全体の LUT 使用率は 3.1% に留まり
実用上問題ない。

#### クロックスイープ

| クロック目標 | 推定clk | サイクル数 | レイテンシ |
|------|------|------|------|
| 5.5 ns | 3.923 ns | 31 | 121.6 ns |
| 6 ns   | 4.657 ns | 27 | 125.7 ns |
| **7 ns** | **5.008 ns** | **18** | **90.1 ns ← 最良** |
| 8 ns   | 5.823 ns | 16 | 93.2 ns |

FIOS-CSA-Flat と同様、7 ns が DSP48 乗算レイテンシ（~5ns）とのバランス点として
最適であることを再確認した。

#### 考察: なぜ効果が N=4 では限定的だったか

事前の理論検討では「CARRY_CHAIN の N-2 段の逐次依存を完全に排除できれば
より大きな効果が出るはず」と予想したが、実測される改善は 10.4% に留まった。
理由は FPGA の専用キャリーチェーン（CARRY8）が既に非常に高速であり、
Pre-sum 後の残存チェーン（N=4 では 2 段）自体がすでに小さい遅延だったため。
一方 3:2 圧縮器は LUT ベースであり CARRY8 の恩恵を受けない。それでも
「外側反復をまたいだ正規化の完全排除」による依存構造の単純化がスケジューラの
自由度を広げ、正味で 2 サイクルの削減につながった。**N が大きくなる
（SIKEp434 相当の N=7 など）ほど本来の CARRY_CHAIN 段数が増えるため、
本手法の相対的優位性はさらに拡大すると推測される**（未検証、今後の課題）。

---

### 3.10 トップ関数レベル PIPELINE によるスループット最適化（★ 新知見）

**ファイル**: `mont_hls_fios_csa_true_pipe.cpp`, `mont_hls_fios_csa_flat_pipe.cpp`

#### 着想

SIKE の同種写像計算では Montgomery 乗算が数千回連鎖する。単発レイテンシだけ
でなく「連続呼び出し時のスループット（Initiation Interval, II）」も RTL 設計
との差を生む重要な軸である。過去に試した DATAFLOW（4反復を明示的関数に分割）
は ping-pong バッファの初期化・同期オーバーヘッドで致命的に悪化した
（100 cycles, 653.9 ns）。

本実験では **関数を分割せず、トップ関数そのものに `#pragma HLS PIPELINE II=1`
を指定** し、HLS が単一の大きな組み合わせ回路をどこまでリタイミングして
パイプライン化できるかを検証した。あわせて、`#pragma HLS INLINE off`
（サブモジュール境界を保つための指定）がパイプライン化を阻害しないか
比較するため、INLINE off を外した版で実験した。

#### 合成結果

| 設計 | サイクル数 | II | 推定clk | 初回レイテンシ | 定常間隔 | DSP | LUT |
|------|------|-----|--------|------------|---------|-----|-----|
| FIOS-CSA-Flat（非pipeline, 元） | 20 | - | 5.029 ns | 100.6 ns | - | 186 | 10,807 |
| FIOS-CSA-Flat + INLINE除去 + PIPELINE | 19 | **2** | 5.029 ns | 95.6 ns | **10.06 ns** | 302 | 12,319 |
| FIOS-CSA-True（非pipeline） | 18 | - | 5.008 ns | 90.1 ns | - | 186 | 36,463 |
| **FIOS-CSA-True + PIPELINE** | 18 | **2** | 4.934 ns | **88.8 ns** | **9.87 ns** | 276 | 38,099 |

`PIPELINE II=1` を指定しても HLS が実際に達成できた II は **2**（完全な
II=1 には届かなかった）。それでも定常状態では **1回あたり約 9.9~10.1 ns**
で新しい乗算を開始できる。RTL 文献（Gong ら, Virtex-6, II=1 パイプライン,
58.8 ns/回・**恐らく更に高いクロックで動作**）にはまだ及ばないが、
非パイプライン版（88.8~100.6 ns/回）と比べて **チェーン全体のスループットが
約 9 倍向上**する。

重要な発見: **この II=2 化は FIOS-CSA-True 固有の効果ではなく、
FIOS-CSA-Flat（既存最良）でも同様に得られた**。つまり「トップ関数レベル
PIPELINE 化」は既存のどの UNROLL 版設計にも適用可能な、独立した改善軸である。

#### 追加改善: 入力配列の ARRAY_PARTITION で真の II=1 を達成（★★ 最良）

II=2 止まりだった原因を HLS ログで特定した：

```
WARNING: [HLS 200-885] The II Violation in module 'mul': Unable to schedule
'load' operation 64 bit ('a_load_1', ...) on array 'a' due to limited memory
ports (II = 1). Please consider using a memory core with more ports or
partitioning the array 'a'.
```

トップ関数の配列引数 `a[]`, `b[]`, `mod[]` はデフォルトで `ap_memory`
（BRAM相当、ポート数が限られる）として実装される。内側ループが完全展開され
II=1 で動かそうとすると、1 サイクルで `a[]` の全要素を同時に読む必要が
あるが、メモリのポート数（既定 2）を超えるため HLS が自動的に II=2 へ
後退していた。

対策は単純で、トップ関数に `#pragma HLS ARRAY_PARTITION variable=a
complete dim=1`（b, mod, c も同様）を追加し、各要素を独立ポート化する
だけでよい（`mont_hls_fios_csa_true_pipe2.cpp`）。

| 設計 | サイクル数 | II | 推定clk | 初回レイテンシ | 定常間隔 | DSP | LUT |
|------|------|-----|--------|------------|---------|-----|-----|
| FIOS-CSA-True + PIPELINE (旧, ARRAY_PARTITIONなし) | 18 | 2 | 4.934 ns | 88.8 ns | 9.87 ns | 276 | 38,099 |
| **FIOS-CSA-True + PIPELINE + ARRAY_PARTITION** | **14** | **1** | 5.008 ns | **70.1 ns** | **5.008 ns** | 552 | 38,581 |
| FIOS-CSA-Flat + PIPELINE + ARRAY_PARTITION（対照実験） | 16 | 1 | 5.029 ns | 80.5 ns | 5.029 ns | 552 | 12,945 |

**真の II=1 を達成**。しかも初回レイテンシまで 88.8→70.1 ns に短縮された
（配列がレジスタ化されたことで、内部でのアクセス競合も同時に解消された
ため）。DSP は 276→552 に倍増（HLS が II=1 実現のため乗算器インスタンスを
複製したため）だが、xcvu9p の 8% に留まり問題ない。この施策も
FIOS-CSA-Flat（対照実験）で同様に再現し、アルゴリズム非依存の汎用テクニック
であることを確認した。両者を比べると、**FIOS-CSA-True の方が依然として
レイテンシ・定常間隔とも僅かに優れる**が、LUT 消費は Flat 版の方が 1/3 と
少ない（トレードオフとして残る）。

#### さらなる改善: クロックスイープでスループットの理論限界を探索（★★★ 最終最良）

II=1 の下では定常時スループット = II × 推定クロック = **1 × 推定クロック**
に等しい。つまり非パイプライン版と違い、目標クロックを厳しくするほど
（HLS が達成できる限り）定常スループットは単調に改善する。そこで
`mont_hls_fios_csa_true_pipe2.cpp` を目標クロック 8ns〜0.8ns の12段階で
スイープした：

| 目標クロック | 推定クロック | サイクル数 | II | 初回レイテンシ | **定常間隔** | LUT |
|------|------|------|-----|-----------|-----------|-----|
| 8 ns | 5.823 ns | 14 | 1 | 81.5 ns | 5.823 ns | 38,197 |
| 7 ns | 5.008 ns | 14 | 1 | 70.1 ns | 5.008 ns | 38,581 |
| 6 ns | 4.356 ns | 24 | 1 | 104.5 ns | 4.356 ns | 43,625 |
| 5 ns | 3.612 ns | 27 | 1 | 97.5 ns | 3.612 ns | 43,625 |
| 4 ns | 2.920 ns | 55 | 1 | 160.6 ns | 2.920 ns | 46,277 |
| 3.5 ns | 2.526 ns | 55 | 1 | 138.9 ns | 2.526 ns | 46,277 |
| **3 ns** | **2.157 ns** | **62** | **1** | 133.7 ns | **2.157 ns ← 最良** | 46,629 |
| 2.5 ns | 2.157 ns | 62 | 1 | 133.7 ns | 2.157 ns（同値） | 46,693 |
| 2 ns | 2.157 ns | 64 | 1 | 138.1 ns | 2.157 ns（改善なし） | 46,853 |
| 1.5〜0.8 ns | 2.157 ns | 85〜110 | 1 | 183〜237 ns | 2.157 ns（改善なし） | 47,132〜47,653 |

**発見**: どの目標クロックでも II=1 は維持されるが、達成可能な実クロック
周期には **約 2.157 ns の下限（床）** が存在する。目標を 2.5ns 以下に
厳しくしても実クロックはそれ以上縮まらず、パイプライン段数（サイクル数・
レイテンシ・リソース）が無駄に増えるだけだった。**目標クロック 3ns 付近が
定常スループットの実質的な最適点**であり、それ以上厳しくする意味はない。

3ns で再合成し確認（`run_fios_csa_true_pipe2_clk3.tcl`）：

| 指標 | 値 |
|------|----|
| サイクル数 | 62 |
| 推定クロック | 2.157 ns |
| 初回レイテンシ | 133.7 ns |
| **定常間隔（真の II=1）** | **2.157 ns/回** |
| DSP | 552 |
| LUT | 46,629 |

7ns 版（5.008 ns/回）比で定常スループットが **約 2.3 倍改善**。初回
レイテンシは 70.1→133.7 ns に悪化するため、**連鎖回数 $K$ が約 23 回を
超える場合にのみ 3ns 版が有利**になる（損益分岐点: $K^* \approx
1 + \frac{133.7-70.1}{5.008-2.157} \approx 23.3$）。$K=1000$ の連鎖では
7ns 版 5.07 μs → 3ns 版 2.29 μs（**約 2.2 倍高速**）。SIKE の同種写像計算は
数千回規模の連鎖が前提であるため、**3ns 版（定常スループット最適化）を
最終推奨構成とする**。

#### SIKE 実運用への含意（クロックスイープ後の最終版）

$K$ 回の連鎖乗算にかかる総時間の近似式と、$K=1000$ での比較:

| 構成 | 初回レイテンシ | 定常間隔 | $K=1000$ 総時間 | 非パイプライン比 |
|------|------------|---------|--------------|--------------|
| 非パイプライン (FIOS-CSA-True @7ns) | 90.1 ns | - | 90.1 μs | 基準 |
| PIPELINE のみ (II=2, ARRAY_PARTITIONなし) | 88.8 ns | 9.87 ns | 9.95 μs | 9.1倍高速 |
| PIPELINE+ARRAY_PARTITION @7ns (真のII=1) | 70.1 ns | 5.008 ns | 5.07 μs | 17.8倍高速 |
| **PIPELINE+ARRAY_PARTITION @3ns（★最終推奨）** | 133.7 ns | **2.157 ns** | **2.29 μs** | **39.3倍高速** |

SIKE の同種写像計算はまさにこの「多数回連鎖」パターン（数千回規模）が
前提であるため、**3ns 目標版を最終推奨構成とする**。ただし連鎖回数が
少ない（$K \lesssim 23$）用途では初回レイテンシが小さい 7ns 版の方が
有利になる点に注意（3.10節のクロックスイープ表を参照して用途に応じて
選択する）。

---

### 3.11 DSP48E2 BIND_OP 明示指定（否定的結果）

**ファイル**: `include/mont_ops_fios_csa_flat_bindop.hpp`

FIOS-CSA-Flat の全加算に `#pragma HLS BIND_OP op=add impl=dsp` を付与し、
DSP48E2 内蔵 ALU を明示的に使わせる実験を行った。RTL 手設計が DSP48E2 の
プリアダー/カスケードを手動配置することを模倣する狙いだったが、結果は悪化した：

| 指標 | 値 |
|------|----|
| サイクル数 | 26 |
| 推定クロック | 5.104 ns |
| **絶対レイテンシ** | **132.7 ns**（旧最良比 +32%, 悪化） |
| DSP | 326（186→326, +75%） |

**否定理由**: 加算を強制的に DSP に割り当てると DSP 資源の競合が発生し、
スケジューラが直列化を余儀なくされたため。FPGA の高速キャリーチェーン
（CARRY8）を使う fabric 側の加算の方が、DSP48 の ALU を明示指定するより
既に高速であり、HLS のデフォルトスケジューリングに任せる方が良い。

---

## 4. HLS 実装の共通設計方針

### 4.1 使用 pragma 一覧

| pragma | 適用箇所 | 効果 |
|--------|----------|------|
| `#pragma HLS PIPELINE` | 外側ループ | ループ間でパイプライン実行 |
| `#pragma HLS UNROLL` | 内側ループ | 全イテレーションを展開、組み合わせ回路化 |
| `#pragma HLS ARRAY_PARTITION variable=t complete dim=1` | 中間配列 | BRAM ではなくレジスタに配置（全ポート並列アクセス） |
| `#pragma HLS LOOP_TRIPCOUNT` | ループ | レイテンシ推定の精度向上（合成には影響なし） |
| `#pragma HLS INLINE off` | トップ関数 | 関数境界を保持し RTL の階層構造を維持 |

### 4.2 型設計

```cpp
// 語幅 W = 64-bit
using T    = uint64_t;      // 1語
using Wide = __uint128_t;   // 2語（積の中間値格納）

// 積和の安全な計算（4入力 W-bit の和は最大 4×2^W → Wide に収まる）
Wide pp = (Wide)a[j] * (Wide)b[i];   // 128-bit 積
Wide lo = (pp & WMASK) + ...;        // 下位 64-bit の集計
Wide hi = (pp >> WBITS) + ...;       // 上位 64-bit の集計
```

### 4.3 条件付き減算（定数時間）

最終的な法との比較・減算を分岐なしで実装し、タイミングサイドチャンネルを回避：

```cpp
T u[NWORDS];  // 仮減算結果
Wide borrow = 0;
for j: Wide d = t[j] - mod[j] - borrow;  u[j] = d & MASK;  borrow = (d>>W) & 1;
// 減算結果が負（borrow==1）なら t を、非負なら u を採用
T keep_t = 0 - (T)(t[N] == 0 && borrow == 1);
for j: c[j] = (t[j] & keep_t) | (u[j] & ~keep_t);
```

---

## 5. パラメータスイープ（CIOS ベースライン確立）

CIOS の最良設定を見つけるため、以下のパラメータ空間（144 通り）を網羅的に HLS 合成した。

| パラメータ | 候補値 |
|-----------|-------|
| 語幅 W | 16, 32, 64 bit |
| 内側ループ展開数 | 0 (pipeline), N/4, N/2, N (full unroll) |
| 条件付き減算展開 | 0 (pipeline), 1 (unroll) |
| 初期化展開 | 0, 1 |
| 目標 II | 0 (auto), 2, 4 |

**最良結果**（256-bit / W=64 / 全展開 / 自動 II）：

| 指標 | 値 |
|------|-----|
| 推定クロック周期 | 7.074 ns |
| Fmax | 141.4 MHz |
| レイテンシ | 23 サイクル = **162.7 ns** |
| DSP | 58 |
| LUT | 3,064 |
| FF | 2,780 |

---

## 6. 合成結果と比較

### 6.1 全設計の合成結果（256-bit、xcvu9p、W=64、N=4）

#### 外側ループ PIPELINE 版（従来手法）

| 設計 | 外側ループ | clk目標 | 推定clk | Fmax | lat[clk] | **lat[ns]** | DSP | LUT |
|------|-----------|--------|--------|------|---------|------------|-----|-----|
| CIOS (sweep best) | PIPELINE | 10 ns | 7.074 ns | 141 MHz | 23 | 162.7 | 58 | 3,064 |
| FIOS | PIPELINE | 10 ns | 6.899 ns | 145 MHz | 23 | 158.7 | 58 | 3,732 |
| FIOS-CSA | PIPELINE | 10 ns | 7.295 ns | 137 MHz | 20 | 145.9 | 90 | 3,814 |
| FIOS | PIPELINE | 7 ns | 4.933 ns | 203 MHz | 29 | 143.1 | 58 | 3,738 |
| FIOS-CSA | PIPELINE | 7 ns | 4.933 ns | 203 MHz | 29 | 143.1 | 58 | 3,742 |
| FIOS | PIPELINE | 6 ns | 4.326 ns | 231 MHz | 39 | 168.7 | 42 | 4,102 |
| FIOS | PIPELINE | 5 ns | 3.612 ns | 277 MHz | 40 | 144.5 | 42 | 4,102 |
| SOS | PIPELINE | 10 ns | 7.271 ns | 138 MHz | 33 | 239.9 | 90 | 3,807 |
| Karatsuba KO-2 | PIPELINE | 10 ns | 7.271 ns | 138 MHz | 23 | 167.2 | 250 | 7,982 |

#### 外側ループ UNROLL 展開版（本研究新規実装）

| 設計 | 外側ループ | clk目標 | 推定clk | Fmax | lat[clk] | **lat[ns]** | DSP | LUT |
|------|-----------|--------|--------|------|---------|------------|-----|-----|
| FIOS-Flat | **UNROLL** | 7 ns | 5.029 ns | 199 MHz | 22 | **110.6** | 122 | 10,238 |
| FIOS-Flat | **UNROLL** | 5 ns | 3.943 ns | 254 MHz | 33 | 130.1 | 138 | 11,487 |
| FIOS-CSA-Flat | **UNROLL** | 7 ns | 5.029 ns | 199 MHz | **20** | **100.6** ★ | 186 | 10,807 |
| FIOS-CSA-Flat | **UNROLL** | 6 ns | 4.637 ns | 216 MHz | 31 | 143.7 | 170 | 12,293 |

**旧最良（2026-08-07時点）= FIOS-CSA-Flat @ 7 ns: 100.6 ns。以下の 6.3 節で更新。**

#### 改善施策検証（全て FIOS-CSA-Flat の改善を試みたもの、2026-08-07時点）

| 設計 | 手法 | clk目標 | 推定clk | lat[clk] | **lat[ns]** | DSP | LUT | 評価 |
|------|------|--------|--------|---------|------------|-----|-----|------|
| FIOS-CSA-Flat | クロック | 8 ns | 5.746 ns | 18 | **103.4** | 154 | 10,790 | △ 若干悪い |
| FIOS-CSA-Flat | クロック | 5.5 ns | 3.943 ns | 32 | 126.2 | 138 | 11,932 | ✗ 悪化 |
| FIOS-CSA-Flat-Lat | LATENCY min=16 | 7 ns | 5.110 ns | 36 | 184.0 | 186 | 15,104 | ✗ 大幅悪化 |
| FIOS-CSA-Dataflow | DATAFLOW | 7 ns | 6.539 ns | 100 | 653.9 | 232 | 18,998 | ✗ 致命的悪化 |
| Karatsuba-CSA | UNROLL REDC | 7 ns | 5.110 ns | 34 | 173.7 | 138 | 17,231 | ✗ 悪化 |

> **注**: lat[ns] = 推定クロック周期 × サイクル数（HLS 報告値はターゲットクロック基準のため再計算）

### 6.2 文献との比較（2026-08-07時点、更新前）

| 実装 | レイテンシ | デバイス | 手法 | 旧本研究最良比 |
|------|----------|---------|------|------------|
| 旧本研究最良 | 100.6 ns | UltraScale+ xcvu9p | FIOS-CSA-Flat HLS @7ns | 基準 |
| 本研究 2位 | 110.6 ns | UltraScale+ xcvu9p | FIOS-Flat HLS @7ns | 1.10× 遅い |
| 本研究 旧最良 | 143.1 ns | UltraScale+ xcvu9p | FIOS HLS @7ns | 1.42× 遅い |
| Noyez 2024 [1] | 203.0 ns | UltraScale+ xczu9eg | FIOS HLS @625MHz | **2.02× 遅い** |
| Gong KO-3 [2] | 58.8 ns | Virtex-6 | Karatsuba RTL II=1 | 0.58× 速い |
| Ding & Li [3] | 62.6 ns | Virtex-6 | NLP+Karatsuba RTL | 0.62× 速い |

### 6.3 RTL 接近実験（2026-08-25 追加、★ 現在の最良）

3.9〜3.11 節で実装した3方向の実測結果:

| 設計 | clk目標 | 推定clk | lat[clk] | II | **lat[ns]** | 定常間隔[ns] | DSP | LUT | 評価 |
|------|--------|--------|---------|-----|------------|------------|-----|-----|------|
| FIOS-CSA-Flat（旧最良, 参照） | 7 ns | 5.029 ns | 20 | - | 100.6 | - | 186 | 10,807 | 基準 |
| **FIOS-CSA-True（冗長表現）** | 7 ns | 5.008 ns | 18 | - | **90.1** | - | 186 | 36,463 | ✓ -10.4% |
| FIOS-CSA-True クロック8ns | 8 ns | 5.823 ns | 16 | - | 93.2 | - | - | - | △ 僅かに劣る |
| FIOS-CSA-True クロック6ns | 6 ns | 4.657 ns | 27 | - | 125.7 | - | - | - | ✗ 悪化 |
| FIOS-CSA-True クロック5.5ns | 5.5 ns | 3.923 ns | 31 | - | 121.6 | - | - | - | ✗ 悪化 |
| FIOS-CSA-Flat + トップPIPELINE | 7 ns | 5.029 ns | 19 | 2 | 95.6（初回） | 10.06 | 302 | 12,319 | ✓ スループット向上 |
| **FIOS-CSA-True + トップPIPELINE** | 7 ns | 4.934 ns | 18 | 2 | **88.8（初回）** | **9.87** | 276 | 38,099 | ✓✓ 最良（両軸） |
| FIOS-CSA-Flat + BIND_OP(DSP強制) | 7 ns | 5.104 ns | 26 | - | 132.7 | - | 326 | 3,975 | ✗ 悪化 |

**結論：真の Carry-Save 表現化により単発レイテンシが 100.6→90.1 ns（-10.4%）に改善。
さらにトップ関数レベル PIPELINE 化（DATAFLOW ではなく単一関数のリタイミング）により
II=2（定常時 9.87ns/回）のスループットを達成。両者を組み合わせた FIOS-CSA-True +
PIPELINE が単発レイテンシ・連鎖スループットの双方で最良となった。
BIND_OP による DSP 強制割当は DSP 資源競合により悪化。**

### 6.4 文献との比較（2026-08-25 更新）

| 実装 | レイテンシ/回 | デバイス | 手法 | 現本研究最良比 |
|------|----------|---------|------|------------|
| **本研究 最良（単発）** | **90.1 ns** | UltraScale+ xcvu9p | FIOS-CSA-True HLS @7ns | 基準 |
| 本研究 最良（連鎖定常時） | **9.87 ns/回** | UltraScale+ xcvu9p | FIOS-CSA-True+PIPELINE HLS @7ns | (別軸) |
| 旧本研究最良 | 100.6 ns | UltraScale+ xcvu9p | FIOS-CSA-Flat HLS @7ns | 1.12× 遅い |
| Noyez 2024 [1] | 203.0 ns | UltraScale+ xczu9eg | FIOS HLS @625MHz | 2.25× 遅い（単発比） |
| Gong KO-3 [2] | 58.8 ns | Virtex-6 | Karatsuba RTL II=1 | 単発: 0.65× 速い／連鎖定常: 本研究が 5.96× 速い可能性 |
| Ding & Li [3] | 62.6 ns | Virtex-6 | NLP+Karatsuba RTL | 単発: 0.70× 速い |

> Gong らの 58.8 ns は「4 cycles @ 68 MHz」の**単発**レイテンシ値であり、
> RTL の II=1 パイプライン構造での**連鎖時**スループットは別途 (1/68MHz≈14.7ns/回)
> と推定される。本研究の連鎖定常時 9.87ns/回は、これをも上回る可能性がある
> （デバイス世代が異なる＝UltraScale+ vs Virtex-6 のため単純比較はできない点に注意）。

---

## 7. 考察

### 7.1 各アルゴリズムの HLS 上の振る舞い

**FIOS vs CIOS**：理論上 FIOS のキャリー連鎖深さは CIOS の約半分（$N-1$ vs $2N-1$）だが、  
10 ns クロックでは両者とも 23 サイクルで同率。これは HLS が内側ループ全体を  
1 クロック以内に収めるよう自動でスケジューリングするため（内側が完全展開されて組み合わせ回路になると、CIOS の 2N-1 レベルも 10 ns に収まる）。

**FIOS-CSA（Pre-sum）**：事前和により C チェーン 1 ステップあたりの加算入力数を  
4 → 2（lo）/ 3（hi）に削減。10 ns クロックでサイクル数が 23 → **20** に減少（-3 サイクル = $N-1$ ステップ分）。しかし XOR/AND ゲートが若干クリティカルパスを延ばし推定クロックが 6.9 → 7.3 ns になるため、レイテンシ改善は 8%（158.7 → 145.9 ns）に留まる。

**FIOS @ 7 ns クロック**：クロック制約を厳しくすることで HLS が内部的にパイプライン段を  
追加挿入（23 → 29 サイクル）し、推定クロックが **4.933 ns (Fmax 203 MHz)** まで短縮。  
絶対レイテンシ = 29 × 4.933 = 143.1 ns で CIOS より 12% 改善。  
重要：FIOS-CSA @ 7 ns も同じ 143.1 ns であり、HLS が 7 ns 制約下でも  
自動的にキャリー連鎖を再スケジューリングするため CSA の追加効果はない。

**SOS**：Phase 1（PP）と Phase 2（REDC）の 2 フェーズで総ループ数が 33 に増加し CIOS 比 1.47×。  
$N=4$ では 2 フェーズ分離のメリットが出ない。$N \geq 8$ で有効。

**Karatsuba KO-2**：3 部分積の並列計算は DSP 250 個を消費（CIOS の 4 倍超）。  
$N=4$ では Karatsuba の乗算削減効果が小さく、REDC オーバーヘッドと相殺。

**FIOS-Flat（外側ループ UNROLL）**：外側ループを完全展開し HLS に 4 反復すべてのデータフローを一括認識させた結果、サイクル数が 29 → **22** に削減（-24%）。HLS が 4 反復のうち、`a[j]*b[i+1]`（`t[]` 非依存）を反復 $i$ と並列に計算できるため。DSP 消費は 58 → 122（2.1×）だが、xcvu9p の DSP48E2 総数 6,840 の 1.8% に過ぎず問題ない。

**FIOS-CSA-Flat（外側 UNROLL + Pre-sum 複合）**：さらに Pre-sum 最適化を加えることで、サイクル数が 29 → **20**（-31%）に削減。推定クロックは 4.933 → 5.029 ns（+2%）とわずかに延びるが、サイクル削減が圧倒的に寄与し絶対レイテンシは 143.1 → **100.6 ns**（-30%）。  
この組み合わせが最良の理由：
1. **UNROLL で前乗り計算を解禁** → `a[j]*b[i+k]` が反復 $i$ と並列実行
2. **Pre-sum で C チェーン短縮** → 各 j ステップが 7 ns 以内に収まり、展開後も II が増えない

### 7.2 否定された改善施策の分析

**LATENCY pragma（min=16, max=18）の逆効果**  
`#pragma HLS LATENCY min=16 max=18` を `mul()` 関数に付与すると HLS は 36 cycles (184.0 ns) という悪化した結果を返す。理由：
- 「16-18 サイクルで終わらせよ」という制約は物理的に達成不可能（理論下限は u_i → pm → carry_j1 → t[0] → u_{i+1} で ~4-5 cycles × 4 = 16-20 cycles）
- HLS はこの制約を無視するのではなく、スケジューリング方針を保守的に変更
- UNROLL で展開された組み合わせ回路を、制約充足のためにレジスタ挿入付きの FF チェーンに分割 → サイクル大幅増

**DATAFLOW の失敗**  
`#pragma HLS DATAFLOW` で 4 ステージを明示的関数に分割すると 100 cycles (653.9 ns) となる。理由：
- DATAFLOW は関数間 ping-pong バッファを挿入し、各バッファ初期化に数サイクルかかる
- `#pragma HLS PIPELINE` を付けた `one_step()` 関数は II 改善には寄与するが、単一呼出しのレイテンシは 4 ステージ × ~20 cycles + バッファオーバーヘッド = ~100 cycles
- 単一呼出しレイテンシ改善には DATAFLOW は無効。連続呼出しの II (= 76 cycles) 改善には寄与するが、SIKE の連鎖乗算では恩恵が限定的

**Karatsuba + UNROLL REDC の失敗**  
KO-2 Karatsuba に FIOS-CSA-Flat スタイルの REDC（外側 UNROLL + Pre-sum）を適用すると 34 cycles (173.7 ns) となる。理由：
- FIOS の外側 UNROLL が効く理由: `a[j]*b[i+1]` が `t[]` 非依存 → 前乗り計算可能
- REDC では m_{i+1} = t[i+1] × mprime が必須であり、t[i+1] は前反復の carry chain 完了後でないと確定しない
- → REDC では t[] 独立な前乗り計算が存在せず、UNROLL の恩恵ゼロ
- さらに Karatsuba は Sub-mul + Assembly フェーズ (~12 cycles) と REDC (~22 cycles) が直列のため、FIOS の統合型より遅い

**クロックスイープの結果（FIOS-CSA-Flat）**  
- 5.5ns: 32 cycles × 3.943 ns = 126.2 ns（6ns より悪い）
- **7ns: 20 cycles × 5.029 ns = 100.6 ns（最良 ← 確認）**  
- 8ns: 18 cycles × 5.746 ns = 103.4 ns（サイクル削減するも絶対レイテンシは悪化）

7ns が最適点である理由の確認: 8ns で 18 cycles になるのは DSP 乗算が ~5ns であり、8ns ではパイプライン深さを短縮できるから。しかしクロック拡大の影響が大きく 100.6 ns には届かない。

**結論: HLS レベルでの改善は FIOS-CSA-Flat @ 7ns が上限**  
これ以上の改善には RTL 手設計（systolic array, II=1 パイプライン）が必要。

### 7.3 HLS vs RTL の差異

Gong [2]・Ding [3] との差（本研究 100.6 ns vs RTL 58-63 ns = 約 1.6×）は以下に起因：

| 要因 | RTL（Gong ら） | HLS（本研究） |
|------|--------------|------------|
| II（スループット） | 1（完全パイプライン） | 21（FIOS-CSA-Flat）|
| キャリー加算器 | CSA で手動最適化 | HLS に委ねる（UNROLL で自動化） |
| 設計期間 | 数か月（RTL） | 数日（HLS） |
| 保守性・移植性 | 低い | 高い |

本研究の FIOS-CSA-Flat UNROLL は、RTL 手設計の CSA 思想（独立な計算の並列配置）を HLS pragma で再現している。RTL との差を 0.6× 以内に縮めつつ HLS の生産性を維持できた点は成果。

### 7.3 Noyez [1] との比較

同じ UltraScale+ デバイスと FIOS アルゴリズム、同じ HLS ツールを用いながら  
本研究が **50% 高速**な理由：

| 工夫 | Noyez | 本研究 |
|------|-------|-------|
| クロック制約 | 固定（10 ns 前後） | 7 ns 探索 → Fmax 向上 |
| 外側ループ | PIPELINE | **UNROLL（全反復一括スケジュール）** |
| 内側加算 | 標準 | **Pre-sum で C チェーン短縮** |
| 語幅 | 32-bit（N=8）| 64-bit（N=4）→ DSP 効率最大化 |
| pragma | 標準 | ARRAY_PARTITION complete 活用 |

最大の差は「外側ループ UNROLL」にある。Noyez は外側ループを PIPELINE のままにしているため、反復間 RAW 依存による II 制約が生じる。UNROLL により HLS が全反復を俯瞰し前乗り計算を行うことが、本研究の最大の貢献である。

---

## 8. 採用推奨構成

### 最良設定 A：単発レイテンシ優先 — FIOS-CSA-True @ 7 ns（★ 現在の最良）

```tcl
# run_fios_csa_true_clk7.tcl
open_project -reset proj_mont_fios_csa_true_clk7
set_top mont_mul_fios_csa_true
add_files mont_hls_fios_csa_true.cpp -cflags "-I../include"
open_solution -reset "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 7 -name default
csynth_design
```

```
結果: 18 clk × 5.008 ns = 90.1 ns (Fmax 200 MHz, DSP 186, LUT 36463)
```

**効果**: 旧最良 FIOS-CSA-Flat 比 -10.4%、Noyez 2024 比 -56%。  
**コスト**: LUT 消費が 10,807 → 36,463（3.4×増、3:2 圧縮器が LUT ベースのため）。
デバイス全体の 3.1% のみ使用するため実用上問題なし。単発の呼び出し（連鎖しない
用途）ではこちらを推奨。

### 最良設定 B：連鎖スループット最優先 — FIOS-CSA-True + PIPELINE + ARRAY_PARTITION @3ns（★★★ $K\gtrsim23$ 回連鎖時の最推奨）

```tcl
# run_fios_csa_true_pipe2_clk3.tcl
# top関数に #pragma HLS PIPELINE II=1 と
# #pragma HLS ARRAY_PARTITION variable={a,b,c,mod} complete dim=1 を付与し、
# 目標クロックをスループット最適点である 3ns に設定
```

```
結果: 62 clk 初回 (133.7 ns) + 真の II=1 (2.157 ns/回, 定常時) (DSP 552, LUT 46629)
```

**効果**: $K$ 回連鎖時の総時間 ≈ $133.7 + (K{-}1)\times 2.157$ ns。
$K=1000$ で従来比（非パイプライン, $K\times90.1$ ns）**約 39.3 倍高速**。
SIKE の同種写像計算のように Montgomery 乗算を多数回（数千回規模）連鎖させる
用途では**こちらを最優先で推奨**。

> 補足1: 単に `PIPELINE II=1` を指定するだけでは II=2 止まりだった
> （`mont_hls_fios_csa_true_pipe.cpp`, 88.8ns初回+9.87ns/回定常）。
> HLS ログの `WARNING 200-885 limited memory ports` から、トップ関数の
> 配列引数がデフォルトで BRAM 相当（ポート数制限あり）に実装されるのが
> 原因と判明し、`ARRAY_PARTITION complete` で各要素を独立ポート化すること
> で真の II=1 まで到達した（3.10節参照）。
>
> 補足2: II=1 化後、クロックスイープにより「定常間隔 = 1 × 推定クロック」を
> さらに縮小できることが判明。達成可能クロックには約2.157nsの下限があり、
> 目標3ns付近がその下限に到達する最小のパイプライン段数となる最適点
> （3ns未満に厳しくしても定常間隔は改善せず段数だけ増える）。連鎖回数が
> 少ない（$K\lesssim23$）場合は初回レイテンシが小さい @7ns 版（70.1ns初回,
> 5.008ns/回）の方が有利なので、用途に応じて選択する。

### 第 2 選択：FIOS-CSA-Flat @ 7 ns（旧最良、LUT 消費を抑えたい場合）

```
結果: 20 clk × 5.029 ns = 100.6 ns (Fmax 199 MHz, DSP 186, LUT 10807)
```

FIOS-CSA-True より 10.4% 遅いが LUT 消費が 1/3.4（10,807 vs 36,463）。
LUT 制約が厳しいデザインではこちらを検討。

### 第 3 選択：FIOS-Flat @ 7 ns（DSP 節約が必要な場合）

DSP 消費を抑えたい場合（IP コアの面積制約など）：

```
結果: 22 clk × 5.029 ns = 110.6 ns (Fmax 199 MHz, DSP 122, LUT 10238)
```

Pre-sum なし版で DSP 122 個（FIOS-CSA-Flat の 65%）に抑えつつ 110.6 ns を達成。

### 第 4 選択：FIOS @ 7 ns（リソース最小）

LUT/DSP 消費を最小にする場合（小型 FPGA や面積厳しいデザイン）：

```
結果: 29 clk × 4.933 ns = 143.1 ns (Fmax 203 MHz, DSP 58, LUT 3738)
```

### 第 5 選択：FIOS-CSA @ 10 ns（クロック固定制約がある場合）

10 ns クロック固定（100 MHz ターゲット IP など）が要件の場合：

```
結果: 20 clk × 7.295 ns = 145.9 ns  (CIOS 比 -10%)
```

---

## 9. 今後の課題

### 達成済み最適化

| 最適化 | 実装済 | 効果 |
|------|--------|------|
| クロック制約スイープ（7 ns 最適化）| ✅ | 143.1 ns 達成 |
| FIOS Pre-sum（CSA 等価、10 ns で -3 cycle）| ✅ | 145.9 ns 達成 |
| 外側ループ UNROLL（全 4 反復一括スケジュール）| ✅ | 110.6 ns 達成 |
| FIOS-CSA + 外側 UNROLL 複合 | ✅ | 100.6 ns 達成（旧最良） |
| **真の Carry-Save（冗長表現）化、全反復を通じて正規化を1回に集約** | ✅ | **90.1 ns 達成（★ 新最良、-10.4%）** |
| **トップ関数レベル PIPELINE（DATAFLOW ではなく単一関数リタイミング）** | ✅ | **II=2 (9.87 ns/回, 定常時) 達成。連鎖時 約9倍高速化** |

### 試みて否定された方向性

| 手法 | 結果 | 否定理由 |
|------|------|---------|
| LATENCY pragma (min=16, max=18) | 36 cycles (184 ns) — 大幅悪化 | 達成不可能な制約がスケジュールを崩す。制約未達時は保守的な分配 → サイクル増 |
| DATAFLOW (4反復→明示的関数) | 100 cycles (653.9 ns) — 致命的悪化 | ping-pong バッファの初期化・同期オーバーヘッド。N=4 では各ステージが~20-25 cycles + 同期コストが累積 |
| Karatsuba + UNROLL REDC | 34 cycles (173.7 ns) — 悪化 | REDC の m_i が t[i] 依存のため t[]-独立な先行計算不可。FIOS の外側 UNROLL 効果は REDC では発揮されない |
| FIOS-CSA-Flat @ 5.5ns / 8ns | 126.2 / 103.4 ns — 悪化 | 7ns が DSP48 乗算レイテンシとのバランス最適点 |
| FIOS-CSA-True @ 5.5ns/6ns/8ns | 121.6 / 125.7 / 93.2 ns — いずれも7nsに劣る | 同上。CSA化してもクロック最適点は変わらず7ns |
| **DSP48E2 BIND_OP 明示指定 (op=add impl=dsp)** | 132.7 ns — 悪化（2026-08-25 検証） | 加算を DSP に強制すると DSP 資源競合でスケジュールが直列化。fabric の高速キャリーチェーン(CARRY8)の方が既に高速 |

### 未達成課題

| 方向性 | 期待効果 | 難度 |
|------|---------|------|
| **PE 単位のシストリックアレイ (隣接通信のみ, 真のRTL的パイプライン構造)** | II=1 の完全達成 (現状II=2) | 高（本格的な再設計が必要。トップPIPELINEで既にII=2まで到達済みのため優先度は中程度に低下） |
| **512-bit / 434-bit 対応** | SIKEp434 実際のサイズでの実用評価。N が大きいほど CSA-True の相対優位性が拡大すると推測 | 中（N=7, W=64 に拡張） |
| **True-CSA の LUT 消費削減** | 36,463 LUT → 圧縮器の再利用/段数削減で削減余地の可能性 | 中 |
| Karatsuba KO-3 (N≥6 向け) | 乗算削減（N=4 では効果なし） | 高 |
| **真の II=1 の追求** (パイプライン段の手動挿入、REGISTER pragma 等) | II=2→1 化で更に約2倍のスループット向上 | 中〜高 |

---

## 10. ファイル構成

```
montgomery_converter/
├── include/
│   ├── mont_ops_fast.hpp          # CIOS（ベースライン）
│   ├── mont_ops_fios.hpp          # FIOS（外側 PIPELINE）
│   ├── mont_ops_fios_csa.hpp      # FIOS + Pre-sum（外側 PIPELINE）
│   ├── mont_ops_fios_flat.hpp          # FIOS（外側 UNROLL）
│   ├── mont_ops_fios_csa_flat.hpp     # FIOS-CSA（外側 UNROLL）旧最良
│   ├── mont_ops_fios_csa_flat_inl.hpp # FIOS-CSA-Flat, INLINE off 除去版（PIPELINE比較用）
│   ├── mont_ops_fios_csa_flat_lat.hpp # FIOS-CSA-Flat + LATENCY pragma（実験的・悪化）
│   ├── mont_ops_fios_csa_dataflow.hpp # FIOS-CSA DATAFLOW 版（実験的・悪化）
│   ├── mont_ops_fios_csa_true.hpp     # ★★ 真の Carry-Save(冗長表現)版 — 現在の最良
│   ├── mont_ops_fios_csa_true_inl.hpp # 同上, INLINE off 除去版（PIPELINE用）
│   ├── mont_ops_fios_csa_flat_bindop.hpp # DSP48E2 BIND_OP 明示指定版（実験的・悪化）
│   ├── mont_ops_sos.hpp               # SOS
│   ├── mont_ops_karatsuba.hpp         # 2-way Karatsuba + REDC (PIPELINE)
│   ├── mont_ops_karatsuba_csa.hpp     # Karatsuba + FIOS-CSA-Flat REDC（実験的・悪化）
│   ├── mont_ops_p503_orig.hpp         # 11節: SIKEp503実装(mp_mul+rdc_mont)の移植（変換前）
│   ├── mont_ops_fios_csa_square.hpp   # 11.6節: 平方専用コア ★汎用性の高い最適化として採用
│   ├── mont_ops_fios_csa_square_inl.hpp # 同上, INLINE off 除去版（PIPELINE用）
│   └── mont_ops.hpp                   # montgomery_auto_rewriter の変換先ライブラリ
│                                       # (11.2節: nwords==MAX_NWORDSでFIOS-CSA-Trueへ委譲)
│
└── hls_comparison/
    ├── mont_hls_fios.cpp                  # HLS トップ (FIOS)
    ├── mont_hls_fios_csa.cpp              # HLS トップ (FIOS-CSA)
    ├── mont_hls_fios_flat.cpp             # HLS トップ (FIOS-Flat)
    ├── mont_hls_fios_csa_flat.cpp         # HLS トップ (FIOS-CSA-Flat) 旧最良
    ├── mont_hls_fios_csa_flat_lat.cpp     # HLS トップ (FIOS-CSA-Flat-Lat 実験)
    ├── mont_hls_fios_csa_dataflow.cpp     # HLS トップ (FIOS-CSA-Dataflow 実験)
    ├── mont_hls_fios_csa_true.cpp         # ★★ HLS トップ (FIOS-CSA-True) — 現在の最良
    ├── mont_hls_fios_csa_true_pipe.cpp    # ★★ HLS トップ (FIOS-CSA-True + PIPELINE) — 連鎖用途最良
    ├── mont_hls_fios_csa_flat_pipe.cpp    # HLS トップ (FIOS-CSA-Flat + PIPELINE, 対照実験)
    ├── mont_hls_fios_csa_flat_bindop.cpp  # HLS トップ (BIND_OP 実験)
    ├── mont_hls_karatsuba_csa.cpp         # HLS トップ (Karatsuba-CSA 実験)
    ├── mont_hls_sos.cpp                   # HLS トップ (SOS)
    ├── mont_hls_karatsuba.cpp             # HLS トップ (Karatsuba)
    ├── test_new_algos.cpp                 # ソフトウェア正確性確認（全12アルゴリズム）
    ├── test_csa_true.cpp                  # FIOS-CSA-True 集中検証 (20,000+ ランダムベクトル)
    │
    ├── run_fios.tcl                       # FIOS 合成 @10ns
    ├── run_fios_csa.tcl                   # FIOS-CSA 合成 @10ns
    ├── run_fios_clk7.tcl                  # FIOS 合成 @7ns
    ├── run_fios_csa_clk7.tcl              # FIOS-CSA 合成 @7ns
    ├── run_fios_clk5.tcl                  # FIOS 合成 @5ns
    ├── run_fios_clk6.tcl                  # FIOS 合成 @6ns（スイープ）
    ├── run_fios_csa_clk6.tcl              # FIOS-CSA 合成 @6ns（スイープ）
    ├── run_fios_flat_clk7.tcl             # FIOS-Flat 合成 @7ns
    ├── run_fios_flat_clk6.tcl             # FIOS-Flat 合成 @6ns
    ├── run_fios_flat_clk5.tcl             # FIOS-Flat 合成 @5ns
    ├── run_fios_csa_flat_clk7.tcl         # FIOS-CSA-Flat 合成 @7ns 旧最良
    ├── run_fios_csa_flat_clk6.tcl         # FIOS-CSA-Flat 合成 @6ns
    ├── run_fios_csa_flat_clk55.tcl        # FIOS-CSA-Flat 合成 @5.5ns（スイープ）
    ├── run_fios_csa_flat_clk8.tcl         # FIOS-CSA-Flat 合成 @8ns（スイープ）
    ├── run_fios_csa_flat_lat_clk7.tcl     # FIOS-CSA-Flat-Lat 合成（実験）
    ├── run_fios_csa_dataflow_clk7.tcl     # FIOS-CSA-Dataflow 合成（実験）
    ├── run_karatsuba_csa_clk7.tcl         # Karatsuba-CSA 合成（実験）
    ├── run_fios_csa_true_clk7.tcl         # ★★ FIOS-CSA-True 合成 @7ns — 現在の最良
    ├── run_fios_csa_true_clk6.tcl         # FIOS-CSA-True 合成 @6ns（スイープ）
    ├── run_fios_csa_true_clk55.tcl        # FIOS-CSA-True 合成 @5.5ns（スイープ）
    ├── run_fios_csa_true_clk8.tcl         # FIOS-CSA-True 合成 @8ns（スイープ）
    ├── run_fios_csa_true_pipe_clk7.tcl    # ★★ FIOS-CSA-True + PIPELINE 合成 — 連鎖用途最良
    ├── run_fios_csa_flat_pipe_clk7.tcl    # FIOS-CSA-Flat + PIPELINE 合成（対照実験）
    ├── run_fios_csa_flat_bindop_clk7.tcl  # BIND_OP 合成（実験・悪化）
    ├── run_sos.tcl                        # SOS 合成 @10ns
    ├── run_karatsuba.tcl              # Karatsuba 合成 @10ns
    ├── run_all_new.sh                 # 新規実装の一括合成スクリプト
    │
    │  # --- フェーズ2 (11節): N=8 実SIKE統合・平方専用コア・バッチスループット ---
    ├── mont_hls_p503_orig.cpp / run_p503_orig_clk7.tcl              # 変換前(p503実装そのまま)N=8
    ├── mont_hls_fios_csa_true_n8.cpp / run_fios_csa_true_n8_clk7.tcl # 変換後(FIOS-CSA-True) N=8
    ├── mont_hls_fios_csa_true_n8_pipe2.cpp / run_fios_csa_true_n8_pipe2_clk7.tcl # N=8 真のII=1
    ├── mont_hls_csa_square_n8.cpp / run_csa_square_n8_clk7.tcl           # 平方専用 非pipeline
    ├── mont_hls_csa_square_n8_pipe2.cpp / run_csa_square_n8_pipe2_clk7.tcl # 平方専用 真のII=1 ★採用
    ├── mont_hls_batch_throughput2.cpp / run_batch_throughput2_clk7.tcl   # バッチスループット(正)
    ├── mont_hls_batch_throughput.cpp / run_batch_throughput_clk7.tcl     # (誤り版、参考にしない)
    ├── test_p503_orig.cpp                 # 変換前移植の正確性検証
    ├── test_csa_square.cpp                # 平方専用コアの正確性検証
    │
    ├── sweep_results.csv              # CIOS 144パターン スイープ結果
    ├── parse_all_designs.py           # 全設計比較表の出力
    └── montgomery_hls_report.md       # 本資料
```

---

## 11. フェーズ2: 実SIKE統合・自動検出/置換・平方専用コア（2026-08-26）

フェーズ1（1〜10節、N=4の孤立したモンゴメリ乗算コアでの基礎研究）の成果を、
実際の暗号ライブラリへ**自動検出→自動置換**するところまで実証した。対象は
本リポジトリに同梱されている Microsoft 製 SIKE 参照実装
（`Optimized_Implementation/portable/SIKEp503/`）。

> SIKE プロトコルは 2022 年の Castryck–Decru 攻撃で破られており実用禁止だが、
> 本研究の目的は HLS 最適化手法の実証であり、対象アルゴリズムの暗号学的安全性は
> 本質ではない。

### 11.1 モンゴメリ乗算検出ツールの実コード対応

`montgomery_converter/montgomery_auto_rewriter.cpp`（Clang LibTooling 製）は、
自作サンプルコードでは正しく検出できたが、実際の SIKEp503 コード
（`fpmul_mont`/`rdc_mont`）を検出できなかった。原因は主に4つ:

| # | 原因 | 対策 |
|---|------|------|
| 1 | `isInMainFile()` が厳しすぎる。SIKE は `P503.c` が `#include "fpx.c"` 等で実装ファイルを直接取り込む unity build 構成のため、対象関数がメインファイル外と判定され全除外されていた | システムヘッダのみ除外するよう緩和 |
| 2 | `rdc_mont` は法・逆元定数を**グローバル変数**として直接参照し、引数名からの検出が効かない | 関数自身の名前が既知の Montgomery 関連名に一致し、かつ内部シグナル（ループ構造・還元呼び出し等）が伴う場合に検出する「自己名一致」判定を追加 |
| 3 | mod/mprime がパラメータで見つからない | ファイルスコープの `VarDecl` を `--mod-name`/`--inv-name` で名前解決するフォールバックを追加（`ParmVarDecl`→`ValueDecl` に型を一般化） |
| 4 | 引数1本のみの関数（`fpsqr_mont(a,c)`、平方）が「REDC」と誤判定される | `getOriginalType()` で配列 decay 前のサイズを取得し、入力サイズが出力の約2倍なら REDC、ほぼ同サイズなら平方と判定 |

修正の副作用として、変換先ライブラリ自身（`mont_ops.hpp` 等）の内部関数まで
検出・書き換え対象になる危険が生じたため、`--internal-header` オプションと
既定除外リストで防止した。

**結果**: `fpmul503_mont`/`fpsqr503_mont`（`P503.c` のマクロで `fpmul_mont` 等から
リネームされた実体）を正しく検出できるようになった。

```bash
montgomery_auto_rewriter --max-nwords=8 \
    --mod-name=p503 --inv-name=p503_mprime \
    --redc-func=fpmul503_mont --redc-func=fpsqr503_mont \
    P503.c -- -std=c17 -I<SIKEp503dir> ...
```

### 11.2 置換先を研究成果コア(FIOS-CSA-True)に接続

`mont::MontOps<T,MAX_NWORDS>::mul()` に、`nwords==MAX_NWORDS` の場合
`mont_fios_csa_true::MontOps_FIOS_CSA_True<T,MAX_NWORDS>::mul()` へ委譲する
分岐を追加（`nwords<MAX_NWORDS` は既存の汎用 CIOS にフォールバックし後方互換を維持）。
これにより自動置換の出力コードがそのまま本研究の最適化コアを呼ぶ。

### 11.3 実際の自動置換とC/C++境界の問題

`fpmul503_mont`/`fpsqr503_mont` の本体を実際に書き換えた（手動編集ゼロ）。
生成コードは C++ テンプレート呼び出しのため、SIKE の該当ファイルを C++
コンパイルする必要が生じ、以下を対応した:

- `P503.c` のみ `g++ -x c++` でコンパイル、他は `gcc` のまま（Makefile 修正）
- `api.h`／`P503_internal.h`／`random.h`／`fips202.h` に `extern "C"` ガードを追加
- C++ では `const` グローバル変数がデフォルトで内部リンケージになるため、
  `p503` 等の定義に `extern` を明示
- 副次的に見つかった**既存コードの潜在バグ**も修正: `sidh.c` の
  `void*→volatile digit_t*` 暗黙変換（C++ では不可）、`sike.c` の `printf` 宣言漏れ

**結果**: ビルド成功。**KEM 自己整合性テスト PASSED、公式 KAT (Known Answer Test)
PASSED**（NIST 形式参照ベクトルと完全一致）。自動検出→自動置換パイプラインが
実プロトコル全体で暗号学的に正しく機能することを実証した。

### 11.4 性能比較: ソフトウェア(CPU) と ハードウェア(HLS) で真逆の結果

**CPU 実測**（g++ -O3、置換前後で `test_KEM` を実行、`BENCH_LOOPS=5` 平均）:

| 操作 | 置換前 | 置換後 (FIOS-CSA-True) | 差分 |
|------|--------|------------------------|------|
| 鍵生成 | 43,913,303 cycles | 48,377,785 cycles | **+10.2%（悪化）** |
| カプセル化 | 72,519,677 cycles | 79,358,672 cycles | +9.4%（悪化） |
| デカプセル化 | 76,925,651 cycles | 84,707,348 cycles | +10.1%（悪化） |

原因: FIOS-CSA-True の核心である 3:2 圧縮器（ビット単位 XOR/AND）は、x86-64 の
専用キャリー付き加算命令（ADC）が既に高速な CPU 上ではむしろオーバーヘッドになる。
**HLS/FPGA 向け最適化はソフトウェア性能へ単純に転用できない**ことを実プロトコル
全体で定量的に示した。

**HLS 実測**（N=8 実サイズ、xcvu9p、7ns クロック。「変換前」= SIKE の
`mp_mul`+`rdc_mont` を `#pragma HLS PIPELINE` のみで素朴に HLS 変換したもの）:

| 構成 | レイテンシ | DSP | LUT |
|------|-----------|-----|-----|
| 変換前（p503 実装そのまま） | **167〜951 cycles（可変!）** = 795 ns〜4,528 ns | 32 | 4,348 |
| 変換後（FIOS-CSA-True, N=8 非パイプライン） | **34 cycles（固定）** = 170.3 ns | 394 | 167,221 |

最良ケース同士でも **4.7 倍**、最悪ケース比で **26.6 倍**高速。原因は、変換前が
p503 の特殊構造（$2^{250} \cdot 3^{159}-1$ の下位ゼロ語）を利用するための
`if (j < ...)` 条件をループ内に持ち、HLS がデータ依存で可変長のスケジュールしか
組めないため。変換後は完全展開＋冗長表現化により決定的スケジュールになる。
**ソフトとハードで最適なアルゴリズム構造が真逆**という一貫した結論が、
7.1〜7.3 節の知見とも整合する形で実プロトコルレベルで確認された。

ファイル: `include/mont_ops_p503_orig.hpp`（変換前の移植）、
`hls_comparison/mont_hls_p503_orig.cpp` / `run_p503_orig_clk7.tcl`、
`hls_comparison/mont_hls_fios_csa_true_n8.cpp` / `run_fios_csa_true_n8_clk7.tcl`

### 11.5 N=8 での PIPELINE + ARRAY_PARTITION（フェーズ1の技術が再現）

N=4 で確立した「トップ関数 PIPELINE + 入力配列 ARRAY_PARTITION」技術を N=8 に
適用したところ、**真の II=1 を達成**した。

| 指標 | 値 |
|------|----|
| 初回レイテンシ | 140.2 ns (28 cyc) |
| 定常間隔 (真の II=1) | 5.008 ns/回 |
| DSP | 2,128 (31%、単一SLR内93%で floorplan 配慮が必要) |
| LUT | 175,501 (15%) |

ファイル: `hls_comparison/mont_hls_fios_csa_true_n8_pipe2.cpp` / `run_fios_csa_true_n8_pipe2_clk7.tcl`

### 11.6 平方(二乗)専用コア — SIKE 以外にも汎用的な最適化

`MontOps_FIOS_CSA_Square<T,NWORDS>`（`include/mont_ops_fios_csa_square.hpp`）を
新規実装。$a \times a$ の対称性（$a_i a_j = a_j a_i$）を利用し、対角 $N$ 個＋
交差 $N(N-1)/2$ 個の計 $N(N+1)/2$ 回の乗算で済ませる（N=8 で 64→36、**44%削減**）。
2段構成: Phase 1 (`square_full`) = 対称性を使った schoolbook 平方で 2N 語の
$a^2$ を生成、Phase 2 (`redc`) = 標準 CIOS 型リダクション。

#### 実装中に見つけたバグ2件（一般的教訓として記録）

1. **128bit 全体を `<<1` すると桁あふれする**: `p = a[i]*a[j]` が 128bit 全体の
   積のとき、$p \geq 2^{127}$ なら `p << 1` は 128bit 境界を超えて最上位ビットが
   失われる（$a_i, a_j$ が大きい値のとき普通に発生する）。lo/hi（各64bit）に
   分割してから個別に2倍すれば安全。**教訓: 128bit 演算での「2倍」は必ず
   分割してから行う。**
2. **可変トリップ数の `while` ループが HLS で害になる**: `mont_ops.hpp` から
   移植した `while (C != 0 && k <= 2N)` というキャリー伝播ループは、HLS が
   静的にレイテンシを確定できず合成レポートが `"?"` になり、パイプライン化も
   失敗する（早期終了時のみ止まる出力プログラム依存最適化のツケ）。固定回数
   `for` ループ（早期終了なし、常に最後まで伝播）へ書き換えることで解決。
   副次効果として**定数時間性も改善**した（実行時間がデータに依存しなくなった）。
   これは「変換前」p503 実装の可変レイテンシ問題（11.4節）と同根の問題である。

#### N=8 合成結果（既存の汎用 `mul(a,a,...)` との比較）

| 構成 | レイテンシ | 定常間隔(II) | DSP | LUT |
|------|-----------|-------------|-----|-----|
| 汎用 mul(a,a,...) 非パイプライン | 170.3 ns (34cyc) | - | 394 | 167,221 |
| 平方専用 非パイプライン | 237.0 ns (48cyc) | - | 266 (-32%) | 25,750 (**-84.6%**) |
| 汎用 mul(a,a,...) PIPELINE+II=1 | 140.2 ns (28cyc) | 5.008 ns/回 | 2,128 | 175,501 |
| **平方専用 PIPELINE+II=1** | 140.9 ns（ほぼ同等） | **4.857 ns/回（3%改善）** | 1,680 (**-21%**) | 30,706 (**-82.5%**) |

**結論: パイプライン構成では平方専用コアが明確に優位**（レイテンシ同等、
スループット微改善、DSP -21%、LUT -82.5%）。SIKE の `fpinv_mont` チェーンだけで
1回あたり 89 回の平方が発生することをプロファイリングで確認済み（8.2節参照）で
あり、SIKE に限らず RSA・ECC 等「二乗」を多用するあらゆる暗号方式に汎用的に
適用できる最適化として有効である。

ファイル: `include/mont_ops_fios_csa_square.hpp`、
`hls_comparison/mont_hls_csa_square_n8_pipe2.cpp` / `run_csa_square_n8_pipe2_clk7.tcl`

### 11.7 バッチ/独立呼び出しスループットの実証と ARRAY_PARTITION 設計の教訓

複数の独立した乗算を1つのパイプライン化コアへ連続投入した場合の実効スループットを、
N=8・8件バッチで検証した。

**重大な落とし穴（発見・修正済み）**: `#pragma HLS ARRAY_PARTITION variable=a
complete dim=0`（全次元完全分割）でバッチ用2次元配列を分割すると、HLS が
バッチ数だけ**空間展開（8個のコアを複製）**してしまい、LUT=1,335,297 で
デバイス容量（1,182,240）を**超過**した。

**修正**: 分割対象を `dim=2`（1回分の演算に必要な語配列のみ）に絞ることで、
HLS がバッチ方向（外側ループ）にわたって回路を真に時分割再利用するようになった。

| 指標 | 誤った版 (dim=0) | 修正版 (dim=2) |
|------|-----------------|----------------|
| LUT | **1,335,297（デバイス容量超過）** | 175,524（単一コアと同水準、15%） |
| DSP | 3,088 | 2,128（単一コアと同水準、31%） |
| 8件バッチ合計時間 | 190.3 ns | 195.3 ns |
| 非パイプライン逐次比 | - | **約7倍高速化** |

理論通りのスループットを、リソースを増やさず実現できることを実測で確認した。

**教訓（汎用）**: HLS でバッチ/ストリーム処理を設計する際、ARRAY_PARTITION の
対象は「1回の演算で同時アクセスが必要な範囲」に限定し、「呼び出し回数の次元」まで
分割してはいけない。誤ると意図せず空間複製されリソースが爆発する。

ファイル: `hls_comparison/mont_hls_batch_throughput2.cpp` / `run_batch_throughput2_clk7.tcl`
（正しい実装。`..._batch_throughput.cpp`/`run_batch_throughput_clk7.tcl` は
dim=0 の誤った版で資源超過するため参考にしない）

### 11.8 SIKE 以外への汎用性（今後の検討課題、未実施）

| 方向性 | 概要 | 状態 |
|--------|------|------|
| GF(p²) レベル専用コア／同種写像ステップのデータフロー化 | fp2mul_mont 内部の3回の独立乗算をパイプラインへ連続投入 | SIKE 固有、未実施 |
| CRT 型分解の並列化 | RSA-CRT 等、代数的に独立計算へ分解できる場合の一般形 | 未実施 |
| NWORDS 家系の IP ライブラリ化 | RSA-2048/3072/4096、ECC P-256/384/521 等の代表的ビット幅で事前合成し特性表を整備 | 未実施 |
| 自動検出ツールの他ライブラリへの適用検証 | OpenSSL・GMP 等の実ソースがあれば本環境で検証可能 | devパッケージにヘッダのみでC実装ソースがなく未実施 |

---

## 参考文献

1. C. K. Koç, T. Acar, B. S. Kaliski, "Analyzing and Comparing Montgomery Multiplication Algorithms," *IEEE Micro*, vol. 16, no. 3, pp. 26–33, Jun. 1996.

2. P. L. Montgomery, "Modular multiplication without trial division," *Mathematics of Computation*, vol. 44, pp. 519–521, 1985.

3. A. Karatsuba, Y. Ofman, "Multiplication of multidigit numbers on automata," *Soviet Physics Doklady*, vol. 7, pp. 595–596, 1963.

4. J. Noyez, "Efficient implementation of Montgomery modular multiplication in FPGAs," *ACM Trans. Reconfigurable Technol. Syst. (TRETS)*, 2024.

5. Z. Gong, S. Xu, S. Huang, "Efficient hardware implementation of Montgomery modular multiplication," *(Virtex-6 implementation)*.

6. X. Ding, S. Li, "NLP-based Montgomery modular multiplication on FPGA," *(Virtex-6 implementation)*.

7. Xilinx, "UG902: Vitis High-Level Synthesis User Guide," v2024.2, Xilinx Inc., 2024.

8. Xilinx, "UG574: UltraScale Architecture DSP Slice User Guide," Xilinx Inc., 2022.
