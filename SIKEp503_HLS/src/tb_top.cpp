#include <iostream>
#include <cstring>
#include "api.h"
#include "config.h"
#include "P503_internal.h"

// Function prototype for the hardware function
extern "C" {
    void sikep503_kem_enc_hw(
        unsigned char *ct,
        const unsigned char *pk,
        unsigned char *ss);
}

int main() {
    // Allocate memory for test vectors
    unsigned char *ct = new unsigned char[CRYPTO_CIPHERTEXTBYTES];
    unsigned char *pk = new unsigned char[CRYPTO_PUBLICKEYBYTES];
    unsigned char *ss = new unsigned char[CRYPTO_BYTES];
    
    // Initialize test vectors with some values
    // In a real test, you would load actual test vectors here
    memset(ct, 0, CRYPTO_CIPHERTEXTBYTES);
    memset(pk, 0, CRYPTO_PUBLICKEYBYTES);
    memset(ss, 0, CRYPTO_BYTES);
    
    // Set some non-zero values in pk for testing
    for(int i = 0; i < CRYPTO_PUBLICKEYBYTES; i++) {
        pk[i] = (unsigned char)(i & 0xFF);
    }
    
    // Call the hardware function
    sikep503_kem_enc_hw(ct, pk, ss);
    
    // Print results
    std::cout << "Ciphertext (first 16 bytes): ";
    for(int i = 0; i < 16; i++) {
        printf("%02x ", ct[i]);
    }
    std::cout << std::endl;
    
    std::cout << "Shared Secret (first 16 bytes): ";
    for(int i = 0; i < 16; i++) {
        printf("%02x ", ss[i]);
    }
    std::cout << std::endl;
    
    // Clean up
    delete[] ct;
    delete[] pk;
    delete[] ss;
    
    return 0;
} 