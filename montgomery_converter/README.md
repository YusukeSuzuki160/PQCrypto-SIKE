# montgomery_converter

暗号計算で多用される **モンゴメリ乗算（Montgomery Multiplication）** を自動検出し、
HLS 最適化された `mont::MontOps<...>::mul / ::redc` 呼び出しへ変換する
Clang LibTooling ツールです。
[mpx_mul_converter](../mpx_mul_converter/) ・ [ntt_converter](../ntt_converter/)
の設計パターンを踏襲しています。

モンゴメリ乗算は、SIKE をはじめ RSA・ECC・PQC の有限体演算で剰余乗算
`a·b mod N` を除算（`%`）なしで行う中核演算です。本ツールは、ソフトウェア記述
された CIOS / REDC を、FPGA で `II=1` パイプライン化しやすく、かつ
**定数時間（サイドチャネル耐性）** を保つ実装へ機械的に置換します。

> 各方式（CIOS / REDC）のアルゴリズムと最適化の要点は
> [`ALGORITHM.md`](ALGORITHM.md) にまとめています。

---

## 構成

```
montgomery_converter/
├── README.md
├── ALGORITHM.md
├── CMakeLists.txt
├── montgomery_auto_rewriter.cpp     # Clang ベース変換ツール本体
├── include/
│   └── mont_ops.hpp                 # 変換先 HLS ライブラリ（MontOps）
├── examples/
│   └── test_mont_cios.cpp           # 手書き CIOS（検出元）＋ 自己検証 main
├── scripts/
│   └── run_rewrite_test.sh          # 検出→変換→数値一致 を一括確認
└── hls_comparison/                  # 変換前後の HLS 合成比較（要 Vitis HLS）
    ├── mont_hls_orig.cpp
    ├── mont_hls_converted.cpp
    ├── run_mont_orig.tcl
    ├── run_mont_converted.tcl
    └── run_comparison.sh
```

---

## 検出対象パターン

対象は `(a, b, c, mod, mprime, nwords)` 相当のシグネチャを持つ関数定義です。
本体を AST 走査し、次の特徴を集計します。

| 検出基準（SHIP 条件） | 内容 |
|----------------------|------|
| **多倍長走査ループ** | `for` が 2 段以上ネスト（語数 `nwords` を回す） |
| **還元乗算** | モンゴメリ定数（`mprime`/`m0inv`/`n0inv`/`qinv`/`inv`/`np` …）との乗算 `t[0] * mprime`、または `montgomery_reduce`/`redc`/`mont_reduce` 等の呼び出し |
| **法の参照** | 法引数（`mod`/`N`/`p`/`prime`/`modulus`/`q` …）を本体で参照 |

スコア補助（誤検出抑止の参考。SHIP 条件ではない）:
- **条件付き減算** — 末尾に減算 `-` と比較 `< / >=` が存在する（最終補正）

> 判別の核は「**逆元定数との乗算**」です。これにより、二重ループ・乗算・法参照を
> 同様に持つ**学校式剰余乗算**などを誤検出しません
> （`examples/test_mont_cios.cpp` の `schoolbook_mul` は正しく SKIP されます）。

### 変換種別

| 種別 | 条件 | 変換先 |
|------|------|--------|
| `mul`  | 演算子ポインタ 2 本 + 出力 + 法 が揃う | `mont::MontOps<Digit,N>::mul(a,b,c,mod,mprime,nwords)` |
| `redc` | データポインタ 1 本 + 法（2n 語入力の縮約） | `mont::MontOps<Digit,N>::redc(x,mod,mprime,nwords)` |

`--mode=mul` / `--mode=redc` で強制できます（既定は `auto`）。

---

## ビルド

### 依存関係
- LLVM/Clang 14 開発パッケージ（mpx_mul_converter / ntt_converter と同一環境）
- CMake 3.20+ / C++17

```bash
cd montgomery_converter
mkdir -p build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make montgomery_auto_rewriter
# オプション: ソフトウェア検証テストもビルド
make test_mont_cios
```

成果物: `build/montgomery_auto_rewriter`

---

## 使い方

`--` より前がツールオプション、以降が Clang のコンパイル引数です。
変換先ヘッダは `include/` にあるため **`-I./include` を付けてください**。

### 検出のみ（--dry-run）

```bash
./build/montgomery_auto_rewriter --dry-run --trace \
    examples/test_mont_cios.cpp -- -std=c++17 -Iinclude
```

出力例:
```
[mont-auto] Function 'mont_mul': forDepth=2, redcMul=1, redcCall=0, mul=4, modUse=1, condSub=1, kind=MontMul(CIOS) => CONVERT
[mont-auto] Function 'schoolbook_mul': forDepth=2, redcMul=0, ... kind=Unknown => SKIP
```

### 変換実施

```bash
./build/montgomery_auto_rewriter --max-nwords=8 \
    --output=examples/test_mont_cios_converted.cpp \
    examples/test_mont_cios.cpp -- -std=c++17 -Iinclude
```

### 定数名 / 関数名を追加

```bash
./build/montgomery_auto_rewriter --dry-run --trace \
    --inv-name=Nprime --mod-name=modulus --redc-func=__redc \
    your_mont.cpp -- -std=c++17 -Iinclude
```

### 主要オプション

| オプション | 既定 | 説明 |
|-----------|------|------|
| `--max-nwords=N` | `8` | 生成コードの `MAX_NWORDS`（`nwords ≤ N`） |
| `--output=FILE` | 入力上書き | 出力先 |
| `--dry-run` | off | 検出のみ |
| `--trace` | off | 検出ログ詳細 |
| `--mode=auto\|mul\|redc` | `auto` | 変換種別の強制 |
| `--min-redc-mul=N` | `1` | 還元乗算の最小回数（誤検出抑止） |
| `--inv-name=NAME` | — | モンゴメリ定数の引数名を追加（繰返し可） |
| `--mod-name=NAME` | — | 法の引数名を追加（繰返し可） |
| `--redc-func=NAME` | — | リダクション関数名を追加（繰返し可） |
| `--lib-header=PATH` | `mont_ops.hpp` | 挿入する include パス |
| `--insert-includes` | on | `#include` を自動挿入 |
| `--no-hls-directives` | off | HLS プラグマを生成しない |

---

## 生成コード例

### 変換前（手書き CIOS）

```cpp
void mont_mul(const digit_t *a, const digit_t *b, digit_t *c,
              const digit_t *mod, digit_t mprime, unsigned nwords)
{
    digit_t t[NW + 2];
    for (unsigned k = 0; k < nwords + 2; k++) t[k] = 0;
    for (unsigned i = 0; i < nwords; i++) {
        /* 部分積走査 t += a*b[i] */
        digit_t m = (digit_t)((wide_t)t[0] * mprime);   // 還元乗算
        /* リダクション走査 t = (t + m*mod)/W */
    }
    /* 定数時間 条件付き減算 */
}
```

### 変換後

```cpp
void mont_mul(const digit_t *a, const digit_t *b, digit_t *c,
              const digit_t *mod, digit_t mprime, unsigned nwords)
{
  #pragma HLS INLINE off
  // Auto-converted by montgomery_auto_rewriter
  // Original: MontMul(CIOS)
  constexpr unsigned MAX_NWORDS = 8;
  using Digit = std::remove_cv_t<std::remove_pointer_t<decltype(c)>>;
  if (static_cast<unsigned>(nwords) > MAX_NWORDS) return;
  mont::MontOps<Digit, MAX_NWORDS>::mul(
      a, b, c, mod, mprime, nwords);
}
```

---

## 変換先ヘッダ `include/mont_ops.hpp`

`mont::MontOps<T, MAX_NWORDS>` が以下を提供します。

| API | 内容 |
|-----|------|
| `::mul(a, b, c, mod, mprime, nwords)` | CIOS モンゴメリ乗算 `c = a·b·R⁻¹ mod N` |
| `::redc(x, mod, mprime, nwords)` | 2n 語入力 `x` を `x·R⁻¹ mod N` に縮約 |
| `::to_mont(a, r2, am, mod, mprime, nwords)` | 通常表現 → モンゴメリ表現（`R2 = R² mod N`） |
| `::from_mont(am, a, mod, mprime, nwords)` | モンゴメリ表現 → 通常表現 |
| `mont::cond_sub<T,N>(...)` | 定数時間（ブランチレス）条件付き減算 |

HLS 最適化:
- 作業配列を `ARRAY_PARTITION complete` で完全分割 → 多ポートアクセスで `II=1`
- 部分積/リダクションの内側ループを `PIPELINE II=1`
- 可変ループに `LOOP_TRIPCOUNT`（`MAX_NWORDS` 上限）
- 最終補正は**マスク選択**で分岐レス（データ依存分岐なし＝定数時間）

語型は `uint16/uint32/uint64`（および対応する倍幅 `uint32/uint64/__uint128`）に対応。

---

## 動作確認

```bash
cd montgomery_converter
chmod +x scripts/*.sh

# 検出 → 変換 → 変換前後の数値一致を一括確認
bash scripts/run_rewrite_test.sh
```

`run_rewrite_test.sh` は手書き CIOS と `MontOps::mul`、さらに `redc` を
参照実装（`a·b·R⁻¹ mod N`）と突き合わせ、変換前後ともに `ALL PASS` を確認します。

### HLS 合成比較（要 Vitis HLS）

```bash
source /path/to/Vitis/2024.2/settings64.sh
bash hls_comparison/run_comparison.sh
```

---

## mpx_mul_converter / ntt_converter との比較

| 項目 | mpx_mul_converter | ntt_converter | **montgomery_converter** |
|------|------------------|---------------|--------------------------|
| 検出対象 | 多倍長乗算（Schoolbook/Comba/Karatsuba） | NTT バタフライ（CT/GS） | **モンゴメリ乗算/還元（CIOS/REDC）** |
| キー特徴量 | 二重ループ + `a[i]*b[j]` + `c[i+j]` | シフトループ + バタフライ対 + add/sub | **二重ループ + 逆元定数との乗算 + 法参照** |
| 変換先 | `mpx::PackedOps<>::mul` | `ntt::NTTOps<>::forward/inverse_ntt` | **`mont::MontOps<>::mul / ::redc`** |
| HLS 最適化 | `ap_uint` パック積 | PIPELINE II=1 バタフライ | **ARRAY_PARTITION + II=1 + 定数時間補正** |
| 誤検出抑止 | インデックス形/型制約 | シフトループ + add/sub 要件 | **逆元定数乗算の要求（学校式と区別）** |

---

## 制限事項

- `--output` 未指定かつ `--dry-run` なしの場合、**入力ファイルを上書き**します。
- `nwords > MAX_NWORDS` のとき生成コードは早期 `return` します（呼び出し側で保証）。
- 検出は引数名のヒューリスティックに依存します。命名が独特な場合は
  `--inv-name` / `--mod-name` / `--redc-func` で補ってください。
- 入力は奇数法・リトルエンディアン語配列（`a[0]` が最下位語）を前提とします。
