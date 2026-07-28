# NTT 変換ツール — 検出アルゴリズム・変換アルゴリズム・アーキテクチャ

本書は `ntt_converter` の3つの側面をまとめる。

1. **検出アルゴリズム** — ソースコードから NTT バタフライを自動認識する仕組み（`ntt_auto_rewriter.cpp`）
2. **変換後アルゴリズム** — 生成される高性能 NTT の数学的内容（`include/ntt_ops.hpp`, `hls_comparison/ntt_ops_hls.hpp`）
3. **ハードウェアアーキテクチャ** — Vitis HLS が合成する回路構造と最適化

---

## 1. 検出アルゴリズム

### 1.1 全体パイプライン

Clang LibTooling（`RecursiveASTVisitor` + `ASTMatchFinder`）で C/C++ の AST を走査する。

```
ソース.cpp
   │  clang AST 構築
   ▼
functionDecl(isDefinition())  ← すべての関数定義にマッチ
   │
   ▼
[A] パラメータ分類    a / n / mod / roots を名前と型から特定
   │
   ▼
[B] 本体スキャン      NTTBodyScanner で for ループ内の特徴量を収集
   │
   ▼
[C] 候補判定          isCandidate() が真なら CONVERT、偽なら SKIP
   │
   ▼
[D] コード生成        本体を ntt::NTTOps<Elem,LOG2N>::forward/inverse_ntt(...) に置換
```

### 1.2 [A] パラメータ分類

関数引数を「型」と「既知の名前集合」で4種類に振り分ける。

| 役割 | 型条件 | 名前集合（一致を優先） |
|------|--------|------------------------|
| `roots`（回転子） | ポインタ/配列 | `roots, zetas, omega, twiddle, w, psi, omegas, twiddles, rootsOfUnity` |
| `a`（変換対象配列） | ポインタ/配列 | （roots 以外の最初のポインタ） |
| `mod`（法） | 整数 | `mod, q, Q, p, P, prime, modulus, MOD` |
| `n`（長さ） | 整数 | `n, len, size, count, N, log2n, logn`（無ければ最初の整数） |

- ポインタ引数が1つも無ければ **SKIP**（配列変換対象が無い）。
- 名前が規約外でも、型からフォールバック特定する（最初のポインタを `a` とみなす等）。

### 1.3 [B] 本体スキャン（`NTTBodyScanner`）

`for` ループの中（`forDepth_ > 0`）に現れる演算を数える。

#### (1) シフトループの検出 — NTT 方向の判定

外側ループのインクリメント部から方向を決める。

| 記述 | 検出 | 種別 |
|------|------|------|
| `len <<= 1` / `len = len << 1` / `len = len * 2` | Shl | **Cooley-Tukey (CT, 前進 DIT)** |
| `len >>= 1` / `len = len >> 1` / `len = len / 2` | Shr | **Gentleman-Sande (GS, 逆 DIF)** |

インクリメントから判定できない場合、初期値で補完する：
`len = 1` から開始 → CT、`len = n/2`（≥2）から開始 → GS。

#### (2) 演算カウント

内側ループ内で以下を集計する。素の演算子・**演算子オーバーロード**（`ap_uint` 等）・
**モジュラー関数呼び出し**の3経路すべてに対応する。

| 特徴量 | 素の演算子 | オーバーロード | 関数名 |
|--------|-----------|---------------|--------|
| `add` | `+ +=` | `OO_Plus` | `addmod, add_mod, ntt_add, modadd, fqadd` |
| `sub` | `- -=` | `OO_Minus` | `submod, sub_mod, ntt_sub, modsub, fqsub` |
| `mul`（twiddle） | `* *=` | `OO_Star` | `mulmod, fqmul, mont_mul, barrett_mul, montgomery_reduce, ...` |
| `mod` | `% %=` | `OO_Percent` | — |

#### (3) 配列書き込みとバタフライペア

代入文の左辺が `a[...]` の形なら `arrayWrite` を加算。
直前と**同じ配列名**へ2回目の書き込みがあれば「バタフライペア」（`a[k]` と `a[k+stride]` の対）とみなす。

### 1.4 [C] 候補判定

```cpp
bool isCandidate() const {
    return hasShiftLoop_               // (1) シフトループがある
        && innerAddCount_ >= 1         // (2) 内側に加算がある
        && innerSubCount_ >= 1         // (3) 内側に減算がある
        && innerArrayWriteCount_ >= MinButterflyCount;  // (4) 配列書き込み ≥ 2（既定）
    // ※ mod 演算 / twiddle 乗算は「あれば確度が上がる」補助情報で、判定必須ではない
}
```

この4条件が NTT バタフライの本質（**段ごとにストライドが倍々/半々に変わるループ**の中で、
**同一配列に加算結果と減算結果を書き戻す**）を捉えている。Schoolbook 乗算等は
シフトループを持たないため弾かれる。

判定結果は1行で出力される：

```
[ntt-auto] Function 'ntt_forward': shift_loop=1, kind=CooleyTukey(CT,forward),
           add=3, sub=3, mul=3, mod=3, arrayWrites=2, twiddle=1, modular=1 => CONVERT
```

### 1.5 [D] コード生成

関数本体（`CompoundStmt`）を丸ごと以下に置換する。既存の `#pragma HLS` は保持される。

```cpp
{
  #pragma HLS INLINE off
  // Auto-converted by ntt_auto_rewriter
  // Original: CooleyTukey(CT,forward)
  constexpr unsigned MAX_LOG2N = 8;
  using Elem = std::remove_cv_t<std::remove_pointer_t<decltype(a)>>;
  if (static_cast<unsigned>(n) > (1u << MAX_LOG2N)) return;
  ntt::NTTOps<Elem, MAX_LOG2N>::forward_ntt(a, n, roots, mod);
}
```

方向は CT→`forward_ntt` / GS→`inverse_ntt`（`--ntt-type` で上書き可）。
`#include "ntt_ops.hpp"` 等もファイル先頭に挿入される。

---

## 2. 変換後アルゴリズム

変換後は `ntt::NTTOps` ライブラリ呼び出しに置き換わる。中身は **Barrett リダクションを核とした
ハードウェア最適化 NTT** である。元の `%` ベース実装と**ビット単位で同一の結果**を返すことを
`hls_comparison/verify_equiv.cpp` で検証済み。

### 2.1 モジュラー演算プリミティブ

#### Barrett リダクション（除算器を排除）

`a*b mod m` を **乗算・シフト・加算のみ**で計算する。除算 `%`（HLS では反復除算器
`srem`、約 68 サイクル）を一切使わない。

事前計算（法 `m` はループ不変なので NTT 1 回につき1度だけ）：

```
mu = floor(2^63 / m)        // 33 ビット程度
```

各乗算：

```
x = a * b                   // 0 ≤ x < 2^62
q = (x * mu) >> 63          // x/m の近似（誤差 ≤ 2）
r = x - q * m               // 0 ≤ r < ~2m
if (r >= m) r -= m;         // 補正1
if (r >= m) r -= m;         // 補正2（安全側）
return r;                   // = a*b mod m
```

> **誤差の根拠**: `mu = 2^63/m − f`（`0 ≤ f < 1`）とすると
> `x·mu/2^63 = x/m − x·f/2^63`。`x < 2^62, f < 1` より補正項 < 0.5。
> よって `q ∈ (x/m − 1.5, x/m]`、`r < 1.5m` となり最大2回の減算で確定する。

#### ブランチレス加減算

```
addmod(a,b,m): r = a+b;  r -= (m & -(r >= m));   // 条件分岐を算術マスク化
submod(a,b,m): r = a-b;  r += (m & -(r <  0));
```

> **適用範囲**: `a+b` が `int32` に収まる必要があるため `2m < 2^31`、すなわち `m < 2^30`。
> 実用 NTT 素数（998244353, 469762049, 8380417 等）はすべて対象内。`m ≥ 2^30` は
> 変換前実装も同様に非対応。

### 2.2 前進 NTT — Cooley-Tukey DIT

```
for (len = 1; len < n; len <<= 1)           // 各段でストライドが倍々
  for (i = 0; i < n; i += 2*len)            // ブロック
    for (j = 0; j < len; j++)               // ブロック内バタフライ
        CT_butterfly(a[i+j], a[i+j+len], w=roots[j]):
            t = mulmod_barrett(v, w, m, mu)  // ← Barrett
            v = submod(u, t, m)              // u − w·v
            u = addmod(u, t, m)              // u + w·v
```

### 2.3 逆 NTT — Gentleman-Sande DIF

```
for (len = n/2; len >= 1; len >>= 1)        // 各段でストライドが半々
  for (start = 0; start < n; start += 2*len)
    for (j = start; j < start+len; j++)
        GS_butterfly(a[j], a[j+len], w=roots[j-start]):
            t = u
            u = addmod(t, v, m)              // u + v
            v = mulmod_barrett(submod(t,v,m), w, m, mu)  // (u − v)·w
```

> `mu` は両関数とも内側ループの**外**で1度だけ計算され、全バタフライで共有される。

---

## 3. ハードウェアアーキテクチャ

Vitis HLS が `forward_ntt`/`inverse_ntt` から合成する回路の構造。
ターゲット xcvu9p-flga2104-2-i、10 ns クロック、N=256。

### 3.1 メモリアーキテクチャ — 3フェーズ構成

バタフライは1回あたり `a` に **2 read + 2 write** を要する。BRAM は2ポートしか無いため、
そのまま回すと II≥2 が下限になる。これを「ロード→演算→ストア」の3フェーズに分け、
演算フェーズの作業配列を**完全分割（レジスタ化）**して回避する。

```
            ┌─────────────┐   load (II=1)    ┌──────────────────────┐
  BRAM a ──▶│  buf[256]    │◀────────────────│ ARRAY_PARTITION       │
  BRAM roots│  rt[256]     │   完全分割→FF配列 │ complete (256 レジスタ)│
            └──────┬──────┘                  └──────────────────────┘
                   │  任意の2要素を1サイクルで read/write 可能
                   ▼
            ┌─────────────────────────────┐
            │  バタフライ・パイプライン     │  ← 本体（後述 3.2）
            │  8 段 × 128 バタフライ        │
            └──────┬──────────────────────┘
                   │  store (II=1)
                   ▼
               BRAM a へ書き戻し
```

- `#pragma HLS ARRAY_PARTITION variable=buf complete dim=1` で `buf` を 256 個のレジスタに展開。
  任意インデックスの2要素を同時アクセスでき、メモリポート律速を解消する。
- ロード/ストアフェーズはそれぞれ II=1 の単純パイプライン（Depth=2/1）。

### 3.2 バタフライ・データパス（II=1, Depth=5）

Barrett 演算は長い乗算連鎖（64bit 乗算 → 127bit 乗算 → 64bit 乗算）を含む。
これを**5段にパイプライン化**し、各ステージを10 nsクロックに収める。

```
 stage0        stage1            stage2            stage3         stage4
┌────────┐   ┌──────────┐     ┌──────────┐     ┌─────────┐   ┌──────────┐
│ 256:1  │   │ x=v*w    │     │ xm=x*mu  │     │ q*m,    │   │ addmod   │
│ read   │──▶│ (64bit   │────▶│ (127bit  │────▶│ r=x-q*m │──▶│ submod   │──▶ 256:1
│ mux    │   │  mul)    │     │  mul)    │     │ 補正    │   │ (ブランチ │    write
│ buf,rt │   │ ~3.2ns   │     │ ~4.4ns   │     │ レス)   │   │  レス)   │    demux
└────────┘   └──────────┘     └──────────┘     └─────────┘   └──────────┘
   毎サイクル新しいバタフライを投入（II=1） →  実効 6.12 ns/butterfly
```

#### 偽依存の排除（II=1 と高 Fmax の両立に必須）

完全分割配列を**変数インデックス**で読み書きすると、HLS は
「`buf[i+j+len]` への書き込みが次反復の読み出しと衝突するかもしれない」と
保守的に**偽の反復間依存**を仮定する。これにより Barrett の長い経路が1段に圧縮され、
クロックが **23.4 ns（Fmax 42.7 MHz）に劣化**していた。

内側ループの各 `j` は互いに素なインデックス `(i+j, i+j+len)` にアクセスするため、
実際には依存しない。これを明示すると HLS が経路を5段に再パイプライン化できる：

```cpp
#pragma HLS PIPELINE II=1
#pragma HLS DEPENDENCE variable=buf type=inter dependent=false
```

→ クロック **6.12 ns（Fmax 163 MHz, 10ns 制約クリア）**まで回復。

### 3.3 合成結果（Vitis HLS 2024.2 実測）

| 指標 | 変換前（`%`, プラグマ無） | 旧変換後（PIPELINE のみ） | **新変換後（本最適化）** |
|------|------:|------:|------:|
| 内側バタフライ II | 69 | 71 | **1** |
| 内側 Depth | 70 | 71 | 5 |
| 推定クロック周期 | 5.64 ns | 5.64 ns | 6.12 ns |
| 推定 Fmax | 177 MHz | 177 MHz | 163 MHz |
| **実効スループット (II×周期)** | 389 ns/bfly | 401 ns/bfly | **6.12 ns/bfly** |
| LUT | 7,536 | 7,545 | 17,130 |
| FF | 9,058 | 9,052 | 18,650 |
| DSP | 4 | 4 | 27 |
| BRAM | 0 | 0 | 0 |

- **バタフライ・スループットが約63倍**（389 → 6.12 ns）に向上し、10 ns 制約も満たす。
- 「`PIPELINE` を付けるだけ」では `%`(srem) がボトルネックで全く速くならない点に注意。
  **Barrett でデータパスから除算器を除く**ことが本質的改善。
- コストは LUT 2.3×・DSP 27 個だが、デバイス利用率は最大でも4%と小さい。

### 3.4 最適化の対応関係まとめ

| 最適化 | 解決する問題 | 効果 |
|--------|-------------|------|
| Barrett リダクション | `%`=`srem` 68 cyc がパイプラインを阻害 | II 71→ 数サイクル化の土台 |
| 完全分割バッファ | BRAM 2ポートで II≥2 | メモリ律速を解消 |
| `DEPENDENCE inter false` | 偽依存で経路が1段に圧縮、クロック23ns | 5段化、クロック6.12ns |
| ブランチレス add/sub | 分岐がスケジューリングを阻害 | 経路短縮 |
| `mu` のループ外計算 | 法のための除算が毎回入る | 1 NTT につき1除算に削減 |

---

## 関連ファイル

| ファイル | 内容 |
|----------|------|
| `ntt_auto_rewriter.cpp` | 検出・変換ツール本体（第1章） |
| `include/ntt_ops.hpp` | 汎用 NTT ライブラリ（変換先・第2章） |
| `hls_comparison/ntt_ops_hls.hpp` | Vitis HLS 専用ライブラリ（`ap_int` 版・第2/3章） |
| `hls_comparison/verify_equiv.cpp` | 変換前後のビット一致を検証する等価性テスト |
| `hls_comparison/ntt_comparison_report.md` | 合成結果の詳細比較レポート（第3章） |
