cmake -S . -B build -DCMAKE_BUILD_TYPE=Release \
  -DLLVM_REQ=14 \
  -DLLVM_DIR="$(llvm-config-14 --cmakedir)" \
  -DClang_DIR="/usr/lib/llvm-14/lib/cmake/clang" \
  -DCMAKE_CXX_COMPILER=clang++-14
cmake --build build -j

検出
build/mpx_auto_rewriter --dry-run path/to/your_source.cpp -- -std=c++17

実行
build/mpx_auto_rewriter --max-nwords=8 --lib-header=mpx_packed.hpp \
  path/to/your_source.cpp -- -std=c++17


test

mkdir -p build && cd build
cmake ..
make mp_test_program
./mp_test_program --nwords 4 --trials 100