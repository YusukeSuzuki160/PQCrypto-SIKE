/********************************************************************************************
* Hardware-based random number generation function using /dev/urandom
*********************************************************************************************/ 

// #include "random.h"
// #include <stdlib.h>
// #include <unistd.h>
// #include <fcntl.h>
// static int lock = -1;


// static __inline void delay(unsigned int count)
// {
// 	while (count--) {}
// }


// int randombytes(unsigned char* random_array, unsigned long long nbytes)
// { // Generation of "nbytes" of random values
//     int r, n = (int)nbytes, count = 0;
    
//     if (lock == -1) {
// 	    do {
// 		    lock = open("/dev/urandom", O_RDONLY);
// 		    if (lock == -1) {
// 			    delay(0xFFFFF);
// 		    }
// 	    } while (lock == -1);
//     }

// 	while (n > 0) {
// 		do {
// 			r = read(lock, random_array+count, n);
// 			if (r == -1) {
// 				delay(0xFFFF);
// 			}
// 		} while (r == -1);
// 		count += r;
// 		n -= r;
// 	}

// 	return 0;
// }

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