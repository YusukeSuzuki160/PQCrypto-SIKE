# MPX乗算ライブラリ

このライブラリは、Comba法とKaratsuba法の2つの乗算アルゴリズムを提供します。両方のアルゴリズムは同じインターフェースを持ち、インクルードするヘッダーファイルを変更することで選択できます。

## ファイル構成

- `mpx_camba_mul.hpp`: Comba法による乗算実装
- `mpx_karatsuba_mul.hpp`: Karatsuba法による乗算実装  
- `test_mpx_mul.cpp`: テスト例

## 使用方法

### 基本的な使用方法

```cpp
// Comba法を使用する場合
#include "mpx_camba_mul.hpp"

// 型定義
using Digit = ap_uint<64>;  // または任意の整数型
constexpr unsigned MAX_NWORDS = 16;

// 入力配列
Digit a[MAX_NWORDS] = {...};
Digit b[MAX_NWORDS] = {...};
Digit c[2 * MAX_NWORDS];  // 結果格納用

unsigned nwords = 4;  // 実際に使用する語数

// Comba法での乗算
mpx::PackedOps<Digit, MAX_NWORDS, true>::mul(a, b, c, nwords);
```

```cpp
// Karatsuba法を使用する場合
#include "mpx_karatsuba_mul.hpp"

// 型定義
using Digit = ap_uint<64>;  // または任意の整数型
constexpr unsigned MAX_NWORDS = 16;

// 入力配列
Digit a[MAX_NWORDS] = {...};
Digit b[MAX_NWORDS] = {...};
Digit c[2 * MAX_NWORDS];  // 結果格納用

unsigned nwords = 4;  // 実際に使用する語数

// Karatsuba法での乗算（同じインターフェース）
mpx::PackedOps<Digit, MAX_NWORDS, true>::mul(a, b, c, nwords);
```

### アルゴリズムの選択

アルゴリズムの選択は、インクルードするヘッダーファイルを変更することで行います：

- **Comba法**: `#include "mpx_camba_mul.hpp"` をインクルード
  - 小さい乗算に適している
  - メモリ使用量が少ない
  - 固定のチャンクサイズで計算
  - 使用方法: `mpx::PackedOps<Digit, MAX_NWORDS, true>::mul(a, b, c, nwords)`

- **Karatsuba法**: `#include "mpx_karatsuba_mul.hpp"` をインクルード
  - 大きい乗算に適している
  - 再帰的に分割して計算
  - 計算量がO(n^log2(3)) ≈ O(n^1.585)
  - 使用方法: `mpx::PackedOps<Digit, MAX_NWORDS, true>::mul(a, b, c, nwords)` （同じインターフェース）

### 設定パラメータ

`mpx_camba_mul.hpp`と`mpx_karatsuba_mul.hpp`で以下の定数を変更できます：

```cpp
static constexpr unsigned MPX_CHUNK_BITS = 128;  // 内部計算のチャンク幅
```

Karatsuba法では追加で：

```cpp
static constexpr unsigned KARATSUBA_THRESHOLD = 4;  // 基本乗算に切り替える閾値
```

## 特徴

### Comba法
- 対角線ごとの和を計算
- パイプライン化に対応
- HLS最適化済み

### Karatsuba法
- 再帰的な分割統治アルゴリズム
- 大きな数値の乗算に効率的
- 基本乗算への自動フォールバック

## テスト

```bash
g++ -I. test_mpx_mul.cpp -o test_mpx_mul
./test_mpx_mul
```

## 注意事項

1. **型安全性**: `ap_uint<N>`型と組み込み整数型の両方に対応
2. **メモリ管理**: 静的配列を使用（スタックオーバーフローに注意）
3. **HLS対応**: Vitis HLSでの合成に対応
4. **パイプライン**: 適切なHLSディレクティブを設定済み

## パフォーマンス

- **Comba法**: 小さい乗算（< 8語程度）で高速
- **Karatsuba法**: 大きい乗算（> 8語程度）で高速
- 実際の性能は使用するハードウェアとデータサイズに依存
