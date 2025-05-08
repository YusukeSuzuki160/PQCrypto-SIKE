#include <ap_int.h>
/********************************************************************************************
* Hardware-based random number generation function using /dev/urandom
*********************************************************************************************/ 

#include "random.h"
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
static int lock = -1;


static ap_uint<64> g_state = 0x123456789ABCDEFULL;

static inline ap_uint<64> prng64(void)
{
#pragma HLS INLINE
    ap_uint<64> x = g_state;
    x ^= x << 13;
    x ^= x >>  7;
    x ^= x << 17;
    g_state = x;
    return x;
}

extern "C" void randombytes(uint8_t *out, size_t len)
{
#pragma HLS INLINE off
RandLoop:
    for (size_t i = 0; i < len; i++) {
        if ((i & 7) == 0)
            g_state = prng64();
        out[i] = g_state.range(7, 0);
        g_state >>= 8;
    }
}

