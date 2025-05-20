#ifndef __RANDOM_H__
#define __RANDOM_H__

#include <stdint.h>

// Function to generate random bytes
// Input: x - pointer to output buffer
//        xlen - number of bytes to generate
void randombytes(unsigned char *x, unsigned long long xlen);

#endif
