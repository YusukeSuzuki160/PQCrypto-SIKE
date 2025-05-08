#include "P503_internal.h"
#include "api.h"          // CRYPTO_* 定数
#include <ap_int.h>

extern "C" {
void sike_p503_kernel(
    const ap_uint<8>  ct_in[CRYPTO_CIPHERTEXTBYTES],
    ap_uint<8>        pk_sk_io[CRYPTO_SECRETKEYBYTES > CRYPTO_PUBLICKEYBYTES ?
                               CRYPTO_SECRETKEYBYTES : CRYPTO_PUBLICKEYBYTES],
    ap_uint<8>        ss_out[CRYPTO_BYTES],
    bool              mode /*0:keypair 1:encaps 2:decaps*/)
{
#pragma HLS INTERFACE m_axi port=ct_in    offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=pk_sk_io offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=ss_out   offset=slave bundle=gmem
#pragma HLS INTERFACE s_axilite port=ct_in   bundle=control
#pragma HLS INTERFACE s_axilite port=pk_sk_io bundle=control
#pragma HLS INTERFACE s_axilite port=ss_out  bundle=control
#pragma HLS INTERFACE s_axilite port=mode    bundle=control
#pragma HLS INTERFACE s_axilite port=return  bundle=control
#pragma HLS DATAFLOW

    // ローカルバッファ
    byte_t ct [CRYPTO_CIPHERTEXTBYTES];
    byte_t pk [CRYPTO_PUBLICKEYBYTES];
    byte_t sk [CRYPTO_SECRETKEYBYTES];
    byte_t ss [CRYPTO_BYTES];

    // 入出力コピー
    buf_copy<CRYPTO_CIPHERTEXTBYTES>(ct, ct_in);
    if (mode == 0) {      // keypair
        crypto_kem_keypair(pk, sk);
        buf_copy<CRYPTO_PUBLICKEYBYTES>(pk_sk_io, pk);
    } else if (mode == 1) { // encaps
        buf_copy<CRYPTO_PUBLICKEYBYTES>(pk, pk_sk_io);
        crypto_kem_enc(ct, pk, ss);
        buf_copy<CRYPTO_CIPHERTEXTBYTES>(reinterpret_cast<byte_t*>(const_cast<ap_uint<8>*>(ct_in)), ct);
        buf_copy<CRYPTO_BYTES>(ss_out, ss);
    } else {               // decaps
        buf_copy<CRYPTO_SECRETKEYBYTES>(sk, pk_sk_io);
        crypto_kem_dec(ct, sk, ss);
        buf_copy<CRYPTO_BYTES>(ss_out, ss);
    }
}
}
