// simple_hls_test.cpp
// 3つのバージョンを1つのファイルで比較できるテスト

#include <ap_int.h>
#include <cstdint>
#include <iostream>

#ifdef USE_ORIG
#include "test_orig.cpp"
#elif defined(USE_CONVERTED)
#include "test_converted.cpp"
#elif defined(USE_COMBA)
#include "test_comba.cpp"
#endif
