#include "api.h"        // マクロ定義 (CRYPTO_*_BYTES)
#include <ap_int.h>

void sikep503_kem_top(
    uint8_t pk[CRYPTO_PUBLICKEYBYTES],
    uint8_t sk[CRYPTO_SECRETKEYBYTES],
    uint8_t ct[CRYPTO_CIPHERTEXTBYTES],
    uint8_t ss[CRYPTO_BYTES],
    uint8_t mode   // 0=keypair,1=enc,2=dec
){
#pragma HLS INTERFACE m_axi port=pk offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=sk offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=ct offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=ss offset=slave bundle=gmem
#pragma HLS INTERFACE s_axilite port=mode   bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

    if (mode==0)            crypto_kem_keypair(pk, sk);
    else if (mode==1)       crypto_kem_enc(ct, ss, pk);
    else /* mode==2 */      crypto_kem_dec(ss, sk, ct);
}