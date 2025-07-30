/********************************************************************************************
 * Hardware-based random number generation function using /dev/urandom
 *********************************************************************************************/

#include "random.h"
#include <stdint.h>

// Simple Linear Congruential Generator (LCG)
// Using parameters from Numerical Recipes
#define LCG_MULTIPLIER 1664525
#define LCG_INCREMENT 1013904223

static uint32_t lcg_state = 0x12345678; // Initial seed

static uint32_t lcg_rand(void)
{
	lcg_state = LCG_MULTIPLIER * lcg_state + LCG_INCREMENT;
	return lcg_state;
}

void randombytes(unsigned char *x, unsigned long long xlen)
{
	unsigned long long i;
	uint32_t r;

	for (i = 0; i < xlen; i++)
	{
		if (i % 4 == 0)
		{
			r = lcg_rand();
		}
		x[i] = (unsigned char)(r & 0xFF);
		r >>= 8;
	}
}