# MPX PackedOps Tests

This folder contains unit tests for the packed multi-precision ops (`mpx_packed.hpp`).  
It uses `boost::multiprecision::cpp_int` as a ground-truth big integer to validate add/sub/mul/sqr for various digit sizes, endianness (LSW-first & MSW-first), and sizes (nwords from 1..MAX_NWORDS).

## Structure
```
include/mpx_packed.hpp         # The header under test
tests/test_mpx_packed.cpp      # Edge cases + randomized property tests
CMakeLists.txt                 # Simple build
```

## Requirements
- A compiler with C++17 support
- `ap_int.h` (Xilinx Vitis/Vivado HLS headers). Provide its include path.
- Boost headers for `multiprecision` (optional on some systems but typically available)

## Build
```bash
# Set your HLS include path (example)
export HLS_INC=/home2/meltpoint/Xilinx/Vivado/2024.2/include/

cmake -S . -B build -DCMAKE_BUILD_TYPE=Release -DHLS_INCLUDE_DIR="$HLS_INC"
cmake --build build -j
```

## Run
```bash
./build/test_mpx_packed
# Expected:
# [OK] All tests passed
```

## Notes
- The tests instantiate:
  - `Digit = uint16_t` with `MAX_NWORDS = 8` (both LSW-first / MSW-first)
  - `Digit = uint32_t` with `MAX_NWORDS = 8` (both)
  - `Digit = uint64_t` with `MAX_NWORDS = 4` (both)
- Each configuration runs edge cases + 100 random trials per nwords (1..MAX_NWORDS).
- If you want heavier tests, edit `test_mpx_packed.cpp` loops and increase counts.
