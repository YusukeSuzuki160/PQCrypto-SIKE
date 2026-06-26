# mpx_mul_converter

多倍長乗算（学校式・Comba・Karatsuba）を検出し、Vitis HLS 向け `ap_uint` パック乗算へ自動置換する Clang ツール一式です。

本フォルダは **PQCrypto-SIKE リポジトリ直下** に置いた独立パッケージで、変換プログラム・変換先ヘッダ・ドキュメントをまとめています。

> 各アルゴリズム（学校式・Comba・Karatsuba）の**最適化内容・工夫点**は
> [`ALGORITHM_OPTIMIZATIONS.md`](ALGORITHM_OPTIMIZATIONS.md) にまとめています。

---

## 目次

1. [構成](#1-構成)
2. [ビルド](#2-ビルド)
3. [使い方](#3-使い方)
4. [検出アルゴリズム](#4-検出アルゴリズム)
5. [変換後のコード](#5-変換後のコード)
6. [変換先ヘッダ](#6-変換先ヘッダ)
7. [動作確認](#7-動作確認)
8. [制限事項](#8-制限事項)

---

## 1. 構成

```
mpx_mul_converter/
├── README.md
├── CMakeLists.txt
├── mpx_auto_rewriter.cpp     # Clang ベース変換ツール本体
├── include/                  # 変換後コードが include する HLS 向けヘッダ
│   ├── mpx_packed.hpp
│   ├── mpx_packed_16bit.hpp … mpx_packed_256bit.hpp
│   └── mpx_packed_karatsuba.hpp
├── examples/
│   ├── test_schoolbook_handwritten.cpp      # 学校式 検出・変換元（LSW-first）
│   ├── test_comba_handwritten.cpp           # Comba 検出・変換元（MSW-first・積和走査）
│   ├── test_karatsuba_handwritten.cpp       # Karatsuba 検出・変換サンプル
│   ├── test_karatsuba_handwritten_flat.cpp  # HLS ベースライン（手書き平坦版）
│   └── test_karatsuba_configurable.cpp      # BASE/MUL_BITS 設定可能テスト
├── scripts/
│   ├── run_rewrite_test.sh               # Karatsuba 変換＋数値一致
│   ├── run_schoolbook_comba_test.sh      # 学校式/Comba 変換＋数値一致
│   ├── run_configurable_test.sh          # PackedOps 数値一致
│   ├── run_karatsuba_base_sweep.sh       # HLS 分割数スイープ
│   └── parse_kara_reports.py             # csynth.rpt 解析
└── hls_comparison_results/
    ├── karatsuba_report.md             # HLS 性能比較レポート
    └── karatsuba_*_csynth.rpt          # 合成レポート
```

---

## 2. ビルド

### 依存関係

- LLVM/Clang 14 開発パッケージ（`libclang-cpp14` 等）
- CMake 3.20+
- C++17

Ubuntu の例:

```bash
sudo apt install clang-14 libclang-cpp14-dev llvm-14-dev cmake
```

### 手順

```bash
cd mpx_mul_converter
mkdir -p build && cd build
cmake ..
make mpx_auto_rewriter
```

成果物: `build/mpx_auto_rewriter`

---

## 3. 使い方

`--` より前がツールオプション、以降が Clang のコンパイル引数です。  
変換先ヘッダは `include/` にあるため、**必ず `-I/path/to/mpx_mul_converter/include` を付けてください。**

### 3.1 検出のみ

```bash
./build/mpx_auto_rewriter your_source.cpp \
  --dry-run --trace \
  --packed-ops-type=default \
  -- \
  -std=c++17 \
  -I/path/to/Vitis/2024.2/include \
  -I./include
```

### 3.2 学校式 → 全幅パック乗算

```bash
./build/mpx_auto_rewriter input.cpp \
  --max-nwords=8 \
  --packed-ops-type=default \
  --output=output.cpp \
  -- \
  -std=c++17 \
  -I/path/to/Vitis/2024.2/include \
  -I./include
```

### 3.3 学校式 → 固定ビット幅

```bash
./build/mpx_auto_rewriter input.cpp \
  --packed-ops-type=schoolbook-64 \
  --output=output.cpp \
  -- \
  -std=c++17 -I/path/to/Vitis/include -I./include
```

### 3.4 Karatsuba → 非再帰 PackedOps

```bash
./build/mpx_auto_rewriter input.cpp \
  --packed-ops-type=karatsuba \
  --kara-base-words=4 \
  --kara-mul-bits=256 \
  --max-nwords=8 \
  --output=output.cpp \
  -- \
  -std=c++17 -I/path/to/Vitis/include -I./include
```

### 主要オプション

| オプション | 既定 | 説明 |
|-----------|------|------|
| `--packed-ops-type=T` | `default` | `default`, `schoolbook-16`…`256`, `karatsuba` |
| `--max-nwords=N` | `8` | 生成コードの `MAX_NWORDS` |
| `--output=FILE` | 入力上書き | 出力先 |
| `--dry-run` | off | 検出のみ |
| `--kara-base-words=N` | 0 | `MPX_KARA_BASE_WORDS`（Karatsuba 分割打切り） |
| `--kara-mul-bits=N` | 0 | `MPX_MUL_BITS`（直接乗算器ビット幅） |
| `--karatsuba-min-half-calls=N` | `3` | Karatsuba 判定の半長呼び出し下限 |
| `--trace` | off | 検出ログ詳細 |

---

## 4. 検出アルゴリズム

対象は `(a, b, c, nwords)` 相当のシグネチャを持つ関数定義です。  
`--packed-ops-type` により検出器が切り替わります。

### 4.1 学校式 / Comba（`BodyScanner`）

`karatsuba` 以外のモードで使用。次を **すべて** 満たす関数を変換します。

| 条件 | 内容 |
|------|------|
| 二重ループ | `for` が 2 段以上ネスト |
| 乗算 | `a`/`b` 由来オペランド同士の `*` が閾値以上 |
| 出力 | 結果配列 `c` への書込みあり |
| 添字 | `c[i]`, `c[i+j]` 等の許可パターン（比率 `--min-index-ok-ratio`） |
| 演算子 | 内側ループに `%` `/` シフト・ビット演算なし（既定） |
| 呼び出し | 内側ループの関数呼び出しは `idx_in`/`idx_out` 等のみ許可 |
| 型 | `a,b,c` が符号なし整数 / `ap_uint` |

乗算カウントは AST 上で `a[i]*b[j]` や `*(a+k)*b[j]`、および `--mul-macro=MUL` 指定マクロを追跡します。  
`c[nwords-1-i]` 系添字があれば MSW-first、なければ LSW-first と推定します。

#### 変換元サンプル（`examples/`）

`../mp_mul_rewriter` を参考に、検出・変換の入力となる**手書き多倍長乗算**を同梱しています。
いずれも数値的に正しい実装で、変換前後どちらでも自己検証 `main()` が通ります。

| ファイル | 方式 | エンディアン | 検出ポイント |
|----------|------|--------------|--------------|
| `test_schoolbook_handwritten.cpp` | 学校式（オペランド走査） | LSW-first | `for i: for j:` で `a[i]*b[j]`（`MUL` マクロ）を `c[i+j]` へ累算 |
| `test_comba_handwritten.cpp` | Comba（積和走査） | MSW-first | 対角走査・`t,u,v` 連結アキュムレータ・`idx_in/idx_out`・`MUL/ADDC` |

部分積と桁上げ加算を `MUL`/`ADDC` マクロに収めることで、内側ループを純粋な乗算パターンとして
検出させます（`--mul-macro=MUL`、`ap_uint` 演算はマクロ内に隠れ `innerCalls=0`）。

変換例:

```bash
# 学校式 → default（全幅 pack×1 乗算）
./build/mpx_auto_rewriter examples/test_schoolbook_handwritten.cpp \
  --packed-ops-type=default --max-nwords=8 --mul-macro=MUL \
  --output=out.cpp -- -std=c++17 -DUSE_AP_INT -I<Vitis>/include -I./include

# Comba → default（MSW-first を強制）
./build/mpx_auto_rewriter examples/test_comba_handwritten.cpp \
  --packed-ops-type=default --max-nwords=8 --force-msw-first --mul-macro=MUL \
  --output=out.cpp -- -std=c++17 -DUSE_AP_INT -I<Vitis>/include -I./include
```

> **注意（固定ビット幅モード）:** `--packed-ops-type=schoolbook-N` では、上部挿入 include
> （既定 `mpx_packed.hpp`）と関数内 include（`mpx_packed_Nbit.hpp`）が食い違い二重定義になる。
> `--lib-header=mpx_packed_Nbit.hpp` を併せて指定し両者を一致させること
> （`#pragma once` で重複排除される）。`scripts/run_schoolbook_comba_test.sh` を参照。

### 4.2 Karatsuba（`KaratsubaShapeScanner`）

`--packed-ops-type=karatsuba` 時。ループ条件の代わりに **半長乗算呼び出しの形状**で判定します。

- 第 4 引数が `nwords/2`, `(nwords+1)/2`, `nwords>>1` の呼び出しをカウント
- 呼び出し先: 自己再帰、または `--karatsuba-callee`（既定 `mp_mul`）
- 回数が `--karatsuba-min-half-calls`（既定 3）以上 → **CONVERT**

典型的な 3 回半長 `mp_mul` パターン:

```cpp
void mp_mul(const digit_t *a, const digit_t *b, digit_t *c, unsigned nwords) {
  // ...
  mp_mul(..., nwords / 2);  // z0
  mp_mul(..., nwords / 2);  // z2
  mp_mul(..., nwords / 2);  // z1
}
```

### 処理フロー

```
入力 .cpp → Clang AST
    ├─ schoolbook/comba → BodyScanner
    └─ karatsuba        → KaratsubaShapeScanner
         ↓ CONVERT
関数本体 → mpx::PackedOps::mul(...)
ファイル先頭 → #include "include/*.hpp"
```

---

## 5. 変換後のコード

### 生成される関数本体

```cpp
{
  constexpr unsigned MAX_NWORDS = 8;
  using DigitA = std::remove_cv_t<std::remove_pointer_t<decltype(a)>>;
  // ... static_assert ...
  if (nwords > MAX_NWORDS) return;
  mpx::PackedOps<Digit, MAX_NWORDS, true>::mul(a, b, c, nwords);
}
```

第 3 テンプレート引数 `true`/`false` は LSW-first / MSW-first です。

### ファイル先頭への挿入（Karatsuba 例）

```cpp
#ifndef MPX_KARA_BASE_WORDS
#define MPX_KARA_BASE_WORDS 4
#endif
#ifndef MPX_MUL_BITS
#define MPX_MUL_BITS 256
#endif
#include <climits>
#include <type_traits>
#include "mpx_packed_karatsuba.hpp"
```

### default モード（`mpx_packed.hpp`）

```
a,b → pack → ap_uint<W×N> ─×─→ ap_uint<2×W×N> → unpack → c
```

### Karatsuba モード（`mpx_packed_karatsuba.hpp`）

再帰 `mp_mul` を **コンパイル時展開の非再帰 Karatsuba** に置換します。

- `nwords > MPX_KARA_BASE_WORDS`: 半分に分割 → 3 部分積 → combine
- それ以下: `MPX_MUL_BITS` 幅の `mul_direct`
- `mul_sized<MaxN>` テンプレートで実行時再帰なし（HLS 214-139 回避）

| マクロ | 意味 | 既定 |
|--------|------|------|
| `MPX_KARA_BASE_WORDS` | 直接乗算に切替える語数 | 4 |
| `MPX_MUL_BITS` | 直接乗算器ビット幅 | `W × BASE_WORDS` |

---

## 6. 変換先ヘッダ

すべて `include/` にあります。

| ヘッダ | 用途 |
|--------|------|
| `mpx_packed.hpp` | 全語 pack × 1 乗算 |
| `mpx_packed_16bit.hpp` … `256bit.hpp` | 固定ビット幅学校式 |
| `mpx_packed_karatsuba.hpp` | 非再帰 Karatsuba |

変換後の `.cpp` をコンパイル・HLS 合成する際も `-I./include` が必要です。

---

## 7. 動作確認

Vitis HLS の `ap_int.h` が必要です。すべて `mpx_mul_converter` 直下で実行します。

```bash
cd mpx_mul_converter
mkdir -p build && cd build && cmake .. && make mpx_auto_rewriter && cd ..

chmod +x scripts/*.sh

# 変換パイプライン＋数値一致（再帰 mp_mul スタブ）
bash scripts/run_rewrite_test.sh

# 学校式 / Comba 変換元の変換＋数値一致
bash scripts/run_schoolbook_comba_test.sh

# PackedOps 直接の数値一致（参照学校式）
bash scripts/run_configurable_test.sh

# HLS 分割数スイープ（要 Vitis HLS）
source /path/to/Vitis/2024.2/settings64.sh
bash scripts/run_karatsuba_base_sweep.sh
```

HLS 性能比較レポート: [`hls_comparison_results/karatsuba_report.md`](hls_comparison_results/karatsuba_report.md)

---

## 8. 制限事項

- 再帰 `mp_mul` は Vitis HLS では合成不可（HLS 214-139）。Karatsuba モードは非再帰実装へ置換する
- `--output` 未指定かつ `--dry-run` なしの場合、**入力ファイルを上書き**する
- `nwords > MAX_NWORDS` のとき生成コードは早期 `return` する（呼び出し側で保証すること）
- Clang 引数（`-I`, `-D`）は解析対象ソースに合わせる必要がある
