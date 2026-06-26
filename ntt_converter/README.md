# ntt_converter

NTT（Number Theoretic Transform）バタフライパターンを自動検出し、  
HLS最適化された `ntt::NTTOps` 呼び出しへ変換する Clang LibTooling ツールです。  
[mpx_mul_converter](../mpx_mul_converter/) の設計パターンを参考にしています。

---

## 検出対象パターン

| パターン | 外ループの特徴 | 例 |
|----------|--------------|-----|
| Cooley-Tukey DIT | `len <<= 1` | 標準的な前進NTT |
| Gentleman-Sande DIF | `len >>= 1` | 逆NTT / KYBER/DILITHIUM スタイル |
| 混合 | `len <<= 1` + GS内側 | INTT |

### 検出基準

1. **シフトループ** — `len <<= 1` または `len >>= 1` を持つ `for` ループ
2. **バタフライ書き込み** — 内側ループで同一配列に2回以上書き込む（`a[k]` と `a[k+stride]`）
3. **加算と減算** — 内側ループに `+` と `-` の両方が存在する

追加でスコア向上に使う情報（SHIPしない基準）:
- **モジュラー演算** — `%` や `mulmod`, `addmod`, `submod` 等の呼び出し
- **Twiddle乗算** — 内側ループに乗算が存在する

---

## ビルド方法

```bash
cd ntt_converter
mkdir -p build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make ntt_auto_rewriter
# オプション: サンプルプログラムもビルド
make test_ntt_ct test_ntt_gs
```

LLVM/Clang 14 が必要です（mpx_mul_converter と同一環境）。

---

## 使い方

### 検出のみ（--dry-run）

```bash
./ntt_auto_rewriter --dry-run --trace \
    examples/test_ntt_ct.cpp -- -std=c++17

./ntt_auto_rewriter --dry-run --trace \
    examples/test_ntt_gs.cpp -- -std=c++17
```

出力例:
```
[ntt-auto] Function 'ntt_forward': shift_loop=1, kind=CooleyTukey(CT,forward), add=3, sub=3, mul=3, mod=3, arrayWrites=2, twiddle=1, modular=1 => CONVERT
[ntt-auto] Function 'schoolbook_mul': shift_loop=0, ... => SKIP
```

### 変換実施

```bash
# Cooley-Tukey NTT を変換
./ntt_auto_rewriter --max-log2n=8 \
    --output=examples/test_ntt_ct_converted.cpp \
    examples/test_ntt_ct.cpp -- -std=c++17

# Gentleman-Sande INTT を変換
./ntt_auto_rewriter --ntt-type=inverse --max-log2n=8 \
    --output=examples/test_ntt_gs_converted.cpp \
    examples/test_ntt_gs.cpp -- -std=c++17
```

### カスタムモジュラー関数名を追加

```bash
./ntt_auto_rewriter --dry-run --trace \
    --mod-func=barrett_mul --mod-func=mont_reduce \
    your_ntt.cpp -- -std=c++17
```

---

## 生成コード例

### 変換前（Cooley-Tukey NTT）

```cpp
void ntt_forward(uint64_t *a, unsigned n, uint64_t mod, const uint64_t *roots)
{
    for (unsigned len = 1; len < n; len <<= 1) {
        for (unsigned i = 0; i < n; i += 2 * len) {
            for (unsigned j = 0; j < len; j++) {
                uint64_t u = a[i + j];
                uint64_t v = mulmod(a[i + j + len], roots[j], mod);
                a[i + j]       = addmod(u, v, mod);
                a[i + j + len] = submod(u, v, mod);
            }
        }
    }
}
```

### 変換後

```cpp
void ntt_forward(uint64_t *a, unsigned n, uint64_t mod, const uint64_t *roots)
{
  // Auto-converted by ntt_auto_rewriter
  // Original: CooleyTukey(CT,forward)
  #pragma HLS INLINE off
  constexpr unsigned MAX_LOG2N = 8;
  using Elem = std::remove_cv_t<std::remove_pointer_t<decltype(a)>>;
  if (static_cast<unsigned>(n) > (1u << MAX_LOG2N)) return;
  ntt::NTTOps<Elem, MAX_LOG2N>::forward_ntt(
      a, n, roots, mod);
}
```

---

## CLIオプション一覧

| オプション | デフォルト | 説明 |
|-----------|-----------|------|
| `--dry-run` | false | 検出のみ（変換しない） |
| `--trace` | false | 詳細なデバッグ出力 |
| `--output=FILE` | （上書き）| 出力ファイル名 |
| `--max-log2n=N` | 8 | MAX_LOG2N 値（n ≤ 2^N） |
| `--ntt-type=TYPE` | auto | `auto` / `forward` / `inverse` |
| `--min-butterfly=N` | 2 | 内側ループの最小配列書き込み数 |
| `--mod-func=NAME` | — | 追加のモジュラー関数名（繰り返し可） |
| `--allow-call=NAME` | — | 内側ループで許可する追加の呼び出し名 |
| `--lib-header=PATH` | `ntt_ops.hpp` | インクルードするヘッダパス |
| `--insert-includes` | true | `#include` を自動挿入 |
| `--no-hls-directives` | false | HLS プラグマを生成しない |

---

## ntt_ops.hpp ヘッダ

`include/ntt_ops.hpp` は以下を提供します：

- `ntt::addmod(a, b, mod)` — ブランチレスモジュラー加算
- `ntt::submod(a, b, mod)` — ブランチレスモジュラー減算
- `ntt::mulmod(a, b, mod)` — 64/128ビットモジュラー乗算
- `ntt::butterfly_ct(u, v, w, mod)` — CT バタフライ
- `ntt::butterfly_gs(u, v, w, mod)` — GS バタフライ
- `ntt::NTTOps<T, LOG2N>::forward_ntt(a, n, roots, mod)` — CT DIT 前進変換
- `ntt::NTTOps<T, LOG2N>::inverse_ntt(a, n, roots, mod)` — GS DIF 逆変換
- `ntt::NTTOps<T, LOG2N>::poly_mul(a, b, c, n, roots, inv_roots, mod)` — NTT 多項式積
- `ntt::NTTOps<int16_t, 8>` — KYBER（q=3329, n=256）特殊化

---

## mpx_mul_converter との比較

| 項目 | mpx_mul_converter | ntt_converter |
|------|------------------|---------------|
| 検出対象 | 多倍長整数乗算（Schoolbook/Comba/Karatsuba） | NTTバタフライ（CT/GS） |
| キー特徴量 | 二重ループ + `a[i]*b[j]` + `c[i+j]` | シフトループ + バタフライ書き込み + add/sub |
| 変換先 | `mpx::PackedOps<Digit, N>::mul(...)` | `ntt::NTTOps<Elem, LOG2N>::forward/inverse_ntt(...)` |
| HLS最適化 | `ap_uint` パック積 | PIPELINE II=1 バタフライ |
| 誤検出抑止 | インデックス形制約, 型制約 | シフトループ + バタフライ対 + add/sub 要件 |
