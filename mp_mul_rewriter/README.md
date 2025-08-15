# 1) ビルド
# LLVM 18ではコマンドラインオプションの競合が発生するため、LLVM 14を使用
cmake -S . -B build -DCMAKE_BUILD_TYPE=Release \
  -DLLVM_DIR="$(llvm-config-14 --cmakedir)" \
  -DClang_DIR="/usr/lib/llvm-14/lib/cmake/clang" \
  -DCMAKE_CXX_COMPILER=clang++-14

cmake --build build -j

# 2) 置換（in-place）
#   HLS のヘッダ探索が必要なら -- の後ろに -I を追加（例: -I$XILINX_HLS/include）
build/mpx_rewriter_v2 \
  --func-name=mp_mul --op=mul --lsw-first=1 --max-nwords=8 \
  --lib-header=mpx_packed.hpp \
  my/file.cpp -- -std=c++17

# 注意: LLVM 18を使用すると "LLVM ERROR: inconsistency in registered CommandLine options" エラーが発生します
# これは、LLVM 18でコマンドラインオプションの処理が変更されたことが原因です