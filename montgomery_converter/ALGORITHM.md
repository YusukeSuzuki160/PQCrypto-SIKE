# モンゴメリ乗算アルゴリズムと HLS 最適化

`montgomery_converter` が検出・生成するモンゴメリ乗算（CIOS）と
モンゴメリ・リダクション（REDC）の数学的背景、ならびに `mont_ops.hpp` で
行っている FPGA 向け最適化をまとめる。

---

## 1. モンゴメリ表現とモンゴメリ乗算

奇数の法 `N`（暗号では素数やその積）に対し、基数 `R = W^s`
（`W = 2^w` は語の基数、`s = nwords`、`gcd(R, N) = 1`）を取る。

- **モンゴメリ表現**: `ã = a·R mod N`
- **モンゴメリ乗算**: `MontMul(ã, b̃) = ã·b̃·R⁻¹ mod N = (a·b)·R mod N`

剰余乗算 `a·b mod N` を、除算（`%`）の代わりに `R` による
シフト（語の切り捨て）だけで実現できるのが要点。
`N⁻¹` は使わず、語レベルの定数 `n'₀ = -N₀⁻¹ mod W`（`N₀ = N` の最下位語）のみで済む。

ハードウェアでは「除算器が不要・乗算と加算と語シフトのみ」という性質が効き、
高 `Fmax` で `II=1` パイプライン化しやすい。

---

## 2. CIOS（Coarsely Integrated Operand Scanning）

`mont_ops.hpp` の `MontOps<T,N>::mul` が実装する方式。
部分積走査とリダクション走査を**1 本の外ループ内で交互**に行うため、
中間結果用の配列が `s + 2` 語で済み、メモリ局所性が高い（Koç 1996）。

```
t[0..s+1] = 0
for i in 0 .. s-1:
    # (1) 部分積走査:  t += a · b[i]
    C = 0
    for j in 0 .. s-1:
        (C, t[j]) = t[j] + a[j]·b[i] + C
    (C, t[s]) = t[s] + C
    t[s+1] = C

    # (2) リダクション走査:  m = t[0]·n'₀ mod W;  t = (t + m·N) / W
    m = (t[0] · n'₀) mod W
    (C, _) = t[0] + m·N[0]          # 最下位語が 0 になり 1 語ずれる
    for j in 1 .. s-1:
        (C, t[j-1]) = t[j] + m·N[j] + C
    (C, t[s-1]) = t[s] + C
    t[s]   = t[s+1] + C

# (3) 最終補正:  t >= N なら N を引く
```

各語演算 `(C, S) = x + y·z + C` は倍幅（`2w` ビット）の積和で、
`S` が下位 `w` ビット、`C` が上位 `w` ビット。
`mont_ops.hpp` では `Wide`（`uint32/uint64/__uint128`）で受ける。

ループ終了時、`t[0..s]` が `a·b·R⁻¹ mod N` を表す（`t[s]` は 0/1 の繰り上がり語）。

---

## 3. モンゴメリ・リダクション（REDC）

`MontOps<T,N>::redc` が実装。`2s` 語の積 `x`（= `a·b` など）を
`x·R⁻¹ mod N` に縮約する。乗算とリダクションを分離した SOS 系の縮約段。

```
t[0..2s] = x,  t[2s] = 0
for i in 0 .. s-1:
    m = (t[i]·n'₀) mod W
    C = 0
    for j in 0 .. s-1:
        (C, t[i+j]) = t[i+j] + m·N[j] + C
    propagate C into t[i+s ..]
result = t[s .. 2s-1]            # R⁻¹ 倍された値
# 最終補正:  result >= N なら N を引く
```

`mul`（CIOS）= 乗算 + 縮約が一体、`redc` = 別途求めた積を縮約、という関係。
両者は `MontMul(a,b)` と一致する（`examples/test_mont_cios.cpp` で検証）。

---

## 4. 定数時間の条件付き減算（`cond_sub`）

最終補正 `if (t >= N) t -= N;` を**データ依存分岐なし**で行う。
分岐は暗号実装ではタイミング・サイドチャネルの原因になるため排除する。

```
u = t - N            # 多倍長減算（借り borrow を伝播）
keep_t = (t_hi < borrow) ? 0xFF..FF : 0   # t < N なら t を採用するマスク
for j: c[j] = (t[j] & keep_t) | (u[j] & ~keep_t)   # マスク選択
```

`t_hi`（最上位の繰り上がり語）と最終借り `borrow` の比較だけで、
`t ≥ N` か否かをブランチレスに判定し、`t` と `t−N` をマスクで選択する。
入力値によらず常に同じ演算列を実行するため**定数時間**。

---

## 5. HLS 最適化（`mont_ops.hpp`）

| 最適化 | プラグマ / 手法 | 効果 |
|--------|----------------|------|
| 作業配列の完全分割 | `#pragma HLS ARRAY_PARTITION variable=t complete dim=1` | BRAM の 2 ポート制約を外し、1 サイクルで任意語を read/write |
| 内側ループのパイプライン | `#pragma HLS PIPELINE II=1` | 部分積/リダクション走査を 1 反復/サイクルで流す |
| 可変ループ境界の明示 | `#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_NWORDS` | レイテンシ見積りを可能にし、過剰展開を防ぐ |
| トップのインライン抑止 | `#pragma HLS INLINE off` | 乗算器資源を 1 インスタンスに集約 |
| 倍幅型の静的選択 | `wide_type<T>`（`uint32/uint64/__uint128`） | 語幅に応じて DSP マッピング可能な積和に落とす |
| 分岐レス最終補正 | マスク選択（`cond_sub`） | 定数時間 ＋ 制御パスの単純化で高 `Fmax` |

`MAX_NWORDS` をコンパイル時定数に固定することで、配列サイズ・展開度が確定し、
HLS が資源とレイテンシを静的に最適化できる。

---

## 6. 変換前後の対応

| 変換前（ソフトウェア記述） | 変換後（`mont_ops.hpp`） |
|----------------------------|--------------------------|
| `digit_t t[NW+2]` ローカル配列 | `ARRAY_PARTITION complete` された `t[MAX_NWORDS+2]` |
| `for i: for j:` 素朴な二重ループ | `PIPELINE II=1` 付き内側ループ |
| `if (t >= mod) t -= mod;` | 分岐レス `cond_sub`（定数時間） |
| 語幅固定（`uint32`/`uint64`） | `wide_type<T>` によるテンプレート対応 |

検出器は「逆元定数 `mprime` との乗算」を核に CIOS/REDC を同定し、
本体を上記の最適化済み呼び出しへ機械的に置換する。
