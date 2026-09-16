/********************************************************************************************
 * SHA3-derived functions: SHAKE and cSHAKE
 *
 * Based on the public domain implementation in crypto_hash/keccakc512/simple/
 * from http://bench.cr.yp.to/supercop.html by Ronny Van Keer
 * and the public domain "TweetFips202" implementation from https://twitter.com/tweetfips202
 * by Gilles Van Assche, Daniel J. Bernstein, and Peter Schwabe
 *
 * See NIST Special Publication 800-185 for more information:
 * http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-185.pdf
 *
 *********************************************************************************************/

#include <stdint.h>
#include <assert.h>
#include "fips202.h"
#include <stdio.h>

#define NROUNDS 24
#define ROL(a, offset) ((a << offset) ^ (a >> (64 - offset)))

static uint64_t load64(const unsigned char *x)
{
  unsigned long long r = 0, i;

  for (i = 0; i < 8; ++i)
  {
    r |= (unsigned long long)x[i] << 8 * i;
  }
  return r;
}

static void store64(uint8_t *x, uint64_t u)
{
  unsigned int i;

  for (i = 0; i < 8; ++i)
  {
    x[i] = u;
    u >>= 8;
  }
}

static const uint64_t KeccakF_RoundConstants[NROUNDS] =
    {
        (uint64_t)0x0000000000000001ULL,
        (uint64_t)0x0000000000008082ULL,
        (uint64_t)0x800000000000808aULL,
        (uint64_t)0x8000000080008000ULL,
        (uint64_t)0x000000000000808bULL,
        (uint64_t)0x0000000080000001ULL,
        (uint64_t)0x8000000080008081ULL,
        (uint64_t)0x8000000000008009ULL,
        (uint64_t)0x000000000000008aULL,
        (uint64_t)0x0000000000000088ULL,
        (uint64_t)0x0000000080008009ULL,
        (uint64_t)0x000000008000000aULL,
        (uint64_t)0x000000008000808bULL,
        (uint64_t)0x800000000000008bULL,
        (uint64_t)0x8000000000008089ULL,
        (uint64_t)0x8000000000008003ULL,
        (uint64_t)0x8000000000008002ULL,
        (uint64_t)0x8000000000000080ULL,
        (uint64_t)0x000000000000800aULL,
        (uint64_t)0x800000008000000aULL,
        (uint64_t)0x8000000080008081ULL,
        (uint64_t)0x8000000000008080ULL,
        (uint64_t)0x0000000080000001ULL,
        (uint64_t)0x8000000080008008ULL};

void KeccakF1600_StatePermute(uint64_t *state)
{
  int round;

  uint64_t Aba, Abe, Abi, Abo, Abu;
  uint64_t Aga, Age, Agi, Ago, Agu;
  uint64_t Aka, Ake, Aki, Ako, Aku;
  uint64_t Ama, Ame, Ami, Amo, Amu;
  uint64_t Asa, Ase, Asi, Aso, Asu;
  uint64_t BCa, BCe, BCi, BCo, BCu;
  uint64_t Da, De, Di, Do, Du;
  uint64_t Eba, Ebe, Ebi, Ebo, Ebu;
  uint64_t Ega, Ege, Egi, Ego, Egu;
  uint64_t Eka, Eke, Eki, Eko, Eku;
  uint64_t Ema, Eme, Emi, Emo, Emu;
  uint64_t Esa, Ese, Esi, Eso, Esu;

  // copyFromState(A, state)
  Aba = state[0];
  Abe = state[1];
  Abi = state[2];
  Abo = state[3];
  Abu = state[4];
  Aga = state[5];
  Age = state[6];
  Agi = state[7];
  Ago = state[8];
  Agu = state[9];
  Aka = state[10];
  Ake = state[11];
  Aki = state[12];
  Ako = state[13];
  Aku = state[14];
  Ama = state[15];
  Ame = state[16];
  Ami = state[17];
  Amo = state[18];
  Amu = state[19];
  Asa = state[20];
  Ase = state[21];
  Asi = state[22];
  Aso = state[23];
  Asu = state[24];
  // printf("DEBUG: Starting KeccakF1600_StatePermute\n");
  // for (int i = 0; i < 25; i++)
  // {
  //   printf("%02lx ", state[i]);
  // }
  // printf("\n");

  for (round = 0; round < NROUNDS; round += 2)
  {
    //    prepareTheta
    BCa = Aba ^ Aga ^ Aka ^ Ama ^ Asa;
    BCe = Abe ^ Age ^ Ake ^ Ame ^ Ase;
    BCi = Abi ^ Agi ^ Aki ^ Ami ^ Asi;
    BCo = Abo ^ Ago ^ Ako ^ Amo ^ Aso;
    BCu = Abu ^ Agu ^ Aku ^ Amu ^ Asu;
    // printf("DEBUG: BCa: %02lx, BCe: %02lx, BCi: %02lx, BCo: %02lx, BCu: %02lx\n", BCa, BCe, BCi, BCo, BCu);

    // thetaRhoPiChiIotaPrepareTheta(round  , A, E)
    Da = BCu ^ ROL(BCe, 1);
    De = BCa ^ ROL(BCi, 1);
    Di = BCe ^ ROL(BCo, 1);
    Do = BCi ^ ROL(BCu, 1);
    Du = BCo ^ ROL(BCa, 1);
    // printf("DEBUG: Da: %02lx, De: %02lx, Di: %02lx, Do: %02lx, Du: %02lx\n", Da, De, Di, Do, Du);

    Aba ^= Da;
    BCa = Aba;
    Age ^= De;
    BCe = ROL(Age, 44);
    Aki ^= Di;
    BCi = ROL(Aki, 43);
    Amo ^= Do;
    BCo = ROL(Amo, 21);
    Asu ^= Du;
    BCu = ROL(Asu, 14);
    Eba = BCa ^ ((~BCe) & BCi);
    Eba ^= (uint64_t)KeccakF_RoundConstants[round];
    Ebe = BCe ^ ((~BCi) & BCo);
    Ebi = BCi ^ ((~BCo) & BCu);
    Ebo = BCo ^ ((~BCu) & BCa);
    Ebu = BCu ^ ((~BCa) & BCe);
    // printf("DEBUG: Eba: %02lx, Ebe: %02lx, Ebi: %02lx, Ebo: %02lx, Ebu: %02lx\n", Eba, Ebe, Ebi, Ebo, Ebu);
    // printf("DEBUG: Aba, Age, Aki, Amo, Asu: %02lx, %02lx, %02lx, %02lx, %02lx\n", Aba, Age, Aki, Amo, Asu);
    // printf("DEBUG: BCa, BCe, BCi, BCo, BCu: %02lx, %02lx, %02lx, %02lx, %02lx\n", BCa, BCe, BCi, BCo, BCu);

    Abo ^= Do;
    BCa = ROL(Abo, 28);
    Agu ^= Du;
    BCe = ROL(Agu, 20);
    Aka ^= Da;
    BCi = ROL(Aka, 3);
    Ame ^= De;
    BCo = ROL(Ame, 45);
    Asi ^= Di;
    BCu = ROL(Asi, 61);
    Ega = BCa ^ ((~BCe) & BCi);
    Ege = BCe ^ ((~BCi) & BCo);
    Egi = BCi ^ ((~BCo) & BCu);
    Ego = BCo ^ ((~BCu) & BCa);
    Egu = BCu ^ ((~BCa) & BCe);
    // printf("DEBUG: Ega: %02lx, Ege: %02lx, Egi: %02lx, Ego: %02lx, Egu: %02lx\n", Ega, Ege, Egi, Ego, Egu);
    // printf("DEBUG: Abo, Agu, Aka, Ame, Asi: %02lx, %02lx, %02lx, %02lx, %02lx\n", Abo, Agu, Aka, Ame, Asi);
    // printf("DEBUG: BCa, BCe, BCi, BCo, BCu: %02lx, %02lx, %02lx, %02lx, %02lx\n", BCa, BCe, BCi, BCo, BCu);

    Abe ^= De;
    BCa = ROL(Abe, 1);
    Agi ^= Di;
    BCe = ROL(Agi, 6);
    Ako ^= Do;
    BCi = ROL(Ako, 25);
    Amu ^= Du;
    BCo = ROL(Amu, 8);
    Asa ^= Da;
    BCu = ROL(Asa, 18);
    Eka = BCa ^ ((~BCe) & BCi);
    Eke = BCe ^ ((~BCi) & BCo);
    Eki = BCi ^ ((~BCo) & BCu);
    Eko = BCo ^ ((~BCu) & BCa);
    Eku = BCu ^ ((~BCa) & BCe);
    // printf("DEBUG: Eka: %02lx, Eke: %02lx, Eki: %02lx, Eko: %02lx, Eku: %02lx\n", Eka, Eke, Eki, Eko, Eku);
    // printf("DEBUG: Abe, Agi, Ako, Amu, Asa: %02lx, %02lx, %02lx, %02lx, %02lx\n", Abe, Agi, Ako, Amu, Asa);
    // printf("DEBUG: BCa, BCe, BCi, BCo, BCu: %02lx, %02lx, %02lx, %02lx, %02lx\n", BCa, BCe, BCi, BCo, BCu);

    Abu ^= Du;
    BCa = ROL(Abu, 27);
    Aga ^= Da;
    BCe = ROL(Aga, 36);
    Ake ^= De;
    BCi = ROL(Ake, 10);
    Ami ^= Di;
    BCo = ROL(Ami, 15);
    Aso ^= Do;
    BCu = ROL(Aso, 56);
    Ema = BCa ^ ((~BCe) & BCi);
    Eme = BCe ^ ((~BCi) & BCo);
    Emi = BCi ^ ((~BCo) & BCu);
    Emo = BCo ^ ((~BCu) & BCa);
    Emu = BCu ^ ((~BCa) & BCe);
    // printf("DEBUG: Ema: %02lx, Eme: %02lx, Emi: %02lx, Emo: %02lx, Emu: %02lx\n", Ema, Eme, Emi, Emo, Emu);
    // printf("DEBUG: Abu, Aga, Ake, Ami, Aso: %02lx, %02lx, %02lx, %02lx, %02lx\n", Abu, Aga, Ake, Ami, Aso);
    // printf("DEBUG: BCa, BCe, BCi, BCo, BCu: %02lx, %02lx, %02lx, %02lx, %02lx\n", BCa, BCe, BCi, BCo, BCu);

    Abi ^= Di;
    BCa = ROL(Abi, 62);
    Ago ^= Do;
    BCe = ROL(Ago, 55);
    Aku ^= Du;
    BCi = ROL(Aku, 39);
    Ama ^= Da;
    BCo = ROL(Ama, 41);
    Ase ^= De;
    BCu = ROL(Ase, 2);
    Esa = BCa ^ ((~BCe) & BCi);
    Ese = BCe ^ ((~BCi) & BCo);
    Esi = BCi ^ ((~BCo) & BCu);
    Eso = BCo ^ ((~BCu) & BCa);
    Esu = BCu ^ ((~BCa) & BCe);
    // printf("DEBUG: Esa: %02lx, Ese: %02lx, Esi: %02lx, Eso: %02lx, Esu: %02lx\n", Esa, Ese, Esi, Eso, Esu);
    // printf("DEBUG: Abi, Ago, Aku, Ama, Ase: %02lx, %02lx, %02lx, %02lx, %02lx\n", Abi, Ago, Aku, Ama, Ase);
    // printf("DEBUG: BCa, BCe, BCi, BCo, BCu: %02lx, %02lx, %02lx, %02lx, %02lx\n", BCa, BCe, BCi, BCo, BCu);

    //    prepareTheta
    BCa = Eba ^ Ega ^ Eka ^ Ema ^ Esa;
    BCe = Ebe ^ Ege ^ Eke ^ Eme ^ Ese;
    BCi = Ebi ^ Egi ^ Eki ^ Emi ^ Esi;
    BCo = Ebo ^ Ego ^ Eko ^ Emo ^ Eso;
    BCu = Ebu ^ Egu ^ Eku ^ Emu ^ Esu;
    // printf("DEBUG: BCa: %02lx, BCe: %02lx, BCi: %02lx, BCo: %02lx, BCu: %02lx\n", BCa, BCe, BCi, BCo, BCu);

    // thetaRhoPiChiIotaPrepareTheta(round+1, E, A)
    Da = BCu ^ ROL(BCe, 1);
    De = BCa ^ ROL(BCi, 1);
    Di = BCe ^ ROL(BCo, 1);
    Do = BCi ^ ROL(BCu, 1);
    Du = BCo ^ ROL(BCa, 1);
    // printf("DEBUG: Da: %02lx, De: %02lx, Di: %02lx, Do: %02lx, Du: %02lx\n", Da, De, Di, Do, Du);

    Eba ^= Da;
    BCa = Eba;
    Ege ^= De;
    BCe = ROL(Ege, 44);
    Eki ^= Di;
    BCi = ROL(Eki, 43);
    Emo ^= Do;
    BCo = ROL(Emo, 21);
    Esu ^= Du;
    BCu = ROL(Esu, 14);
    Aba = BCa ^ ((~BCe) & BCi);
    Aba ^= (uint64_t)KeccakF_RoundConstants[round + 1];
    Abe = BCe ^ ((~BCi) & BCo);
    Abi = BCi ^ ((~BCo) & BCu);
    Abo = BCo ^ ((~BCu) & BCa);
    Abu = BCu ^ ((~BCa) & BCe);
    // printf("DEBUG: Aba: %02lx, Abe: %02lx, Abi: %02lx, Abo: %02lx, Abu: %02lx\n", Aba, Abe, Abi, Abo, Abu);
    // printf("DEBUG: BCa, BCe, BCi, BCo, BCu: %02lx, %02lx, %02lx, %02lx, %02lx\n", BCa, BCe, BCi, BCo, BCu);
    // printf("DEBUG: Eba, Ege, Eki, Emo, Esu: %02lx, %02lx, %02lx, %02lx, %02lx\n", Eba, Ege, Eki, Emo, Esu);

    Ebo ^= Do;
    BCa = ROL(Ebo, 28);
    Egu ^= Du;
    BCe = ROL(Egu, 20);
    Eka ^= Da;
    BCi = ROL(Eka, 3);
    Eme ^= De;
    BCo = ROL(Eme, 45);
    Esi ^= Di;
    BCu = ROL(Esi, 61);
    Aga = BCa ^ ((~BCe) & BCi);
    Age = BCe ^ ((~BCi) & BCo);
    Agi = BCi ^ ((~BCo) & BCu);
    Ago = BCo ^ ((~BCu) & BCa);
    Agu = BCu ^ ((~BCa) & BCe);
    // printf("DEBUG: Aga: %02lx, Age: %02lx, Agi: %02lx, Ago: %02lx, Agu: %02lx\n", Aga, Age, Agi, Ago, Agu);
    // printf("DEBUG: BCa, BCe, BCi, BCo, BCu: %02lx, %02lx, %02lx, %02lx, %02lx\n", BCa, BCe, BCi, BCo, BCu);
    // printf("DEBUG: Ebo, Egu, Eka, Eme, Esi: %02lx, %02lx, %02lx, %02lx, %02lx\n", Ebo, Egu, Eka, Eme, Esi);

    Ebe ^= De;
    BCa = ROL(Ebe, 1);
    Egi ^= Di;
    BCe = ROL(Egi, 6);
    Eko ^= Do;
    BCi = ROL(Eko, 25);
    Emu ^= Du;
    BCo = ROL(Emu, 8);
    Esa ^= Da;
    BCu = ROL(Esa, 18);
    Aka = BCa ^ ((~BCe) & BCi);
    Ake = BCe ^ ((~BCi) & BCo);
    Aki = BCi ^ ((~BCo) & BCu);
    Ako = BCo ^ ((~BCu) & BCa);
    Aku = BCu ^ ((~BCa) & BCe);
    // printf("DEBUG: Aka: %02lx, Ake: %02lx, Aki: %02lx, Ako: %02lx, Aku: %02lx\n", Aka, Ake, Aki, Ako, Aku);
    // printf("DEBUG: BCa, BCe, BCi, BCo, BCu: %02lx, %02lx, %02lx, %02lx, %02lx\n", BCa, BCe, BCi, BCo, BCu);
    // printf("DEBUG: Ebe, Egi, Eko, Emu, Esa: %02lx, %02lx, %02lx, %02lx, %02lx\n", Ebe, Egi, Eko, Emu, Esa);

    Ebu ^= Du;
    BCa = ROL(Ebu, 27);
    Ega ^= Da;
    BCe = ROL(Ega, 36);
    Eke ^= De;
    BCi = ROL(Eke, 10);
    Emi ^= Di;
    BCo = ROL(Emi, 15);
    Eso ^= Do;
    BCu = ROL(Eso, 56);
    Ama = BCa ^ ((~BCe) & BCi);
    Ame = BCe ^ ((~BCi) & BCo);
    Ami = BCi ^ ((~BCo) & BCu);
    Amo = BCo ^ ((~BCu) & BCa);
    Amu = BCu ^ ((~BCa) & BCe);
    // printf("DEBUG: Ama: %02lx, Ame: %02lx, Ami: %02lx, Amo: %02lx, Amu: %02lx\n", Ama, Ame, Ami, Amo, Amu);
    // printf("DEBUG: BCa, BCe, BCi, BCo, BCu: %02lx, %02lx, %02lx, %02lx, %02lx\n", BCa, BCe, BCi, BCo, BCu);
    // printf("DEBUG: Ebu, Ega, Eke, Emi, Eso: %02lx, %02lx, %02lx, %02lx, %02lx\n", Ebu, Ega, Eke, Emi, Eso);

    Ebi ^= Di;
    BCa = ROL(Ebi, 62);
    Ego ^= Do;
    BCe = ROL(Ego, 55);
    Eku ^= Du;
    BCi = ROL(Eku, 39);
    Ema ^= Da;
    BCo = ROL(Ema, 41);
    Ese ^= De;
    BCu = ROL(Ese, 2);
    Asa = BCa ^ ((~BCe) & BCi);
    Ase = BCe ^ ((~BCi) & BCo);
    Asi = BCi ^ ((~BCo) & BCu);
    Aso = BCo ^ ((~BCu) & BCa);
    Asu = BCu ^ ((~BCa) & BCe);
    // printf("DEBUG: Asa: %02lx, Ase: %02lx, Asi: %02lx, Aso: %02lx, Asu: %02lx\n", Asa, Ase, Asi, Aso, Asu);
    // printf("DEBUG: BCa, BCe, BCi, BCo, BCu: %02lx, %02lx, %02lx, %02lx, %02lx\n", BCa, BCe, BCi, BCo, BCu);
    // printf("DEBUG: Ebi, Ego, Eku, Ema, Ese: %02lx, %02lx, %02lx, %02lx, %02lx\n", Ebi, Ego, Eku, Ema, Ese);
  }

  // copyToState(state, A)
  state[0] = Aba;
  state[1] = Abe;
  state[2] = Abi;
  state[3] = Abo;
  state[4] = Abu;
  state[5] = Aga;
  state[6] = Age;
  state[7] = Agi;
  state[8] = Ago;
  state[9] = Agu;
  state[10] = Aka;
  state[11] = Ake;
  state[12] = Aki;
  state[13] = Ako;
  state[14] = Aku;
  state[15] = Ama;
  state[16] = Ame;
  state[17] = Ami;
  state[18] = Amo;
  state[19] = Amu;
  state[20] = Asa;
  state[21] = Ase;
  state[22] = Asi;
  state[23] = Aso;
  state[24] = Asu;
  // printf("DEBUG: state: ");
  // for (int i = 0; i < 25; i++)
  //   printf("%02lx ", state[i]);
  // printf("\n");

#undef round
}

#include <string.h>
#define MIN(a, b) ((a) < (b) ? (a) : (b))

static void keccak_absorb(uint64_t *s, unsigned int r, const unsigned char *m, unsigned long long int mlen, unsigned char p)
{
  unsigned long long i;
  while (mlen >= r)
  {
//#pragma HLS loop_tripcount min = 100 max = 100
    for (i = 0; i < r / 8; ++i)
    {
//#pragma HLS loop_tripcount min = 100 max = 100
      s[i] ^= load64(m + 8 * i);
    }
    KeccakF1600_StatePermute(s);
    mlen -= r;
    m += r;
  }
  for (unsigned lane = 0; lane < r / 8; ++lane) {
//#pragma HLS loop_tripcount min=100 max=100   // (例) r = 800 bit


      /* ------------------------------------------------------------
      * 8 つのバイトを “その場で” 合成 → 64bit 値にして XOR
      * ---------------------------------------------------------- */
      uint64_t word = 0;

      BYTE: for (unsigned b = 0; b < 8; ++b) {
          unsigned idx  = lane * 8 + b;
          unsigned char v;

          /* 実装は **この順序が重要** */
          if (idx < mlen)            v = m[idx]; /* コピー */
          else if (idx == mlen)      v = p;      /* １バイト pad */
          else                       v = 0;      /* ゼロ埋め */

          if (idx == r - 1)          v |= 0x80;  /* 末尾 0x80 */

          word |= (uint64_t)v << (8 * b);
      }

      s[lane] ^= word;   /* ← 8 byteまとめて XOR */
  }
}

static void keccak_squeezeblocks(unsigned char *h, unsigned long long int nblocks, uint64_t *s, unsigned int r)
{
  unsigned int i;
  const unsigned int fixed_r = 136;

  while (nblocks > 0)
  {
//#pragma HLS loop_tripcount min = 1 max = 503 avg = 252
    KeccakF1600_StatePermute(s);
    for (i = 0; i < (fixed_r >> 3); i++)
    {
      store64(h + 8 * i, s[i]);
    }
    h += fixed_r;
    nblocks--;
  }
}

/********** SHAKE128 ***********/

void shake128_absorb(uint64_t *s, const unsigned char *input, unsigned int inputByteLen)
{
  keccak_absorb(s, SHAKE128_RATE, input, inputByteLen, 0x1F);
}

void shake128_squeezeblocks(unsigned char *output, unsigned long long nblocks, uint64_t *s)
{
  keccak_squeezeblocks(output, nblocks, s, SHAKE128_RATE);
}

void shake128(unsigned char *output, unsigned long long outlen, const unsigned char *input, unsigned long long inlen)
{
  uint64_t s[25] = {0};
  unsigned char t[SHAKE128_RATE];
  unsigned long long nblocks = outlen / SHAKE128_RATE;
  size_t i;

  /* Absorb input */
  keccak_absorb(s, SHAKE128_RATE, input, inlen, 0x1F);

  /* Squeeze output */
  keccak_squeezeblocks(output, nblocks, s, SHAKE128_RATE);

  output += nblocks * SHAKE128_RATE;
  outlen -= nblocks * SHAKE128_RATE;

  if (outlen)
  {
    keccak_squeezeblocks(t, 1, s, SHAKE128_RATE);
    for (i = 0; i < outlen; i++)
    {
//#pragma HLS loop_tripcount min = 1 max = 503 avg = 252
      output[i] = t[i];
    }
  }
}

/********** cSHAKE128 ***********/

void cshake128_simple_absorb(uint64_t s[25], uint16_t cstm, const unsigned char *in, unsigned long long inlen)
{
  unsigned char *sep = (unsigned char *)s;
  unsigned int i;

  for (i = 0; i < 25; i++)
    s[i] = 0;

  /* Absorb customization (domain-separation) string */
  sep[0] = 0x01;
  sep[1] = 0x88;
  sep[2] = 0x01;
  sep[3] = 0x00;
  sep[4] = 0x01;
  sep[5] = 16; // fixed bitlen of cstm
  sep[6] = cstm & 0xff;
  sep[7] = cstm >> 8;

  KeccakF1600_StatePermute(s);

  /* Absorb input */
  keccak_absorb(s, SHAKE128_RATE, in, inlen, 0x04);
}

void cshake128_simple_squeezeblocks(unsigned char *output, unsigned long long nblocks, uint64_t *s)
{
  keccak_squeezeblocks(output, nblocks, s, SHAKE128_RATE);
}

void cshake128_simple(unsigned char *output, unsigned long long outlen, uint16_t cstm, const unsigned char *in, unsigned long long inlen)
{
  uint64_t s[25];
  unsigned char t[SHAKE128_RATE];
  unsigned int i;
  // printf("DEBUG: Starting cshake128_simple\n");
  // fflush(stdout);
  cshake128_simple_absorb(s, cstm, in, inlen);
  // printf("s: ");
  // for (i = 0; i < 25; i++)
  //   printf("%02x ", s[i]);
  // printf("\n");
  // fflush(stdout);
  // printf("cstm: %d\n", cstm);
  // fflush(stdout);
  // printf("in: ");
  // for (i = 0; i < inlen; i++)
  //   printf("%02x ", in[i]);
  // printf("\n");
  // fflush(stdout);

  /* Squeeze output */
  keccak_squeezeblocks(output, outlen / SHAKE128_RATE, s, SHAKE128_RATE);
  output += (outlen / SHAKE128_RATE) * SHAKE128_RATE;
  // printf("output: ");
  // for (i = 0; i < outlen; i++)
  //   printf("%02x ", output[i]);
  // printf("\n");
  fflush(stdout);

  if (outlen % SHAKE128_RATE)
  {
    keccak_squeezeblocks(t, 1, s, SHAKE128_RATE);
    // printf("t: ");
    // for (i = 0; i < SHAKE128_RATE; i++)
    //   printf("%02x ", t[i]);
    // printf("\n");
    // fflush(stdout);
    for (i = 0; i < outlen % SHAKE128_RATE; i++)
    {
//#pragma HLS loop_tripcount min = 1 max = 503 avg = 252
      output[i] = t[i];
    }
  }
}

/********** SHAKE256 ***********/

void shake256_absorb(uint64_t *s, const unsigned char *input, unsigned int inputByteLen)
{
  keccak_absorb(s, SHAKE256_RATE, input, inputByteLen, 0x1F);
}

void shake256_squeezeblocks(unsigned char *output, unsigned long long nblocks, uint64_t *s)
{
  keccak_squeezeblocks(output, nblocks, s, SHAKE256_RATE);
}

void shake256(unsigned char *output, unsigned long long outlen, const unsigned char *input, unsigned long long inlen)
{
  uint64_t s[25];
  unsigned char t[SHAKE256_RATE];
  unsigned long long nblocks = outlen / SHAKE256_RATE;
  size_t i;

  for (i = 0; i < 25; ++i)
    s[i] = 0;

  /* Absorb input */
  keccak_absorb(s, SHAKE256_RATE, input, inlen, 0x1F);

  /* Squeeze output */
  keccak_squeezeblocks(output, nblocks, s, SHAKE256_RATE);

  output += nblocks * SHAKE256_RATE;
  outlen -= nblocks * SHAKE256_RATE;

  if (outlen)
  {
    keccak_squeezeblocks(t, 1, s, SHAKE256_RATE);
    for (i = 0; i < outlen; i++)
    {
//#pragma HLS loop_tripcount min = 1 max = 503 avg = 252
      output[i] = t[i];
    }
  }
}

/********** cSHAKE256 ***********/

void cshake256_simple_absorb(uint64_t s[25], uint16_t cstm, const unsigned char *in, unsigned long long inlen)
{
  unsigned char *sep = (unsigned char *)s;
  unsigned int i;

  for (i = 0; i < 25; i++)
  {
    s[i] = 0;
  }

  /* Absorb customization (domain-separation) string */
  sep[0] = 0x01;
  sep[1] = 0x88;
  sep[2] = 0x01;
  sep[3] = 0x00;
  sep[4] = 0x01;
  sep[5] = 16; // fixed bitlen of cstm
  sep[6] = cstm & 0xff;
  sep[7] = cstm >> 8;

  KeccakF1600_StatePermute(s);

  /* Absorb input */
  keccak_absorb(s, SHAKE256_RATE, in, inlen, 0x04);
}

void cshake256_simple_squeezeblocks(unsigned char *output, unsigned long long nblocks, uint64_t *s)
{
  keccak_squeezeblocks(output, nblocks, s, SHAKE256_RATE);
}

void cshake256_simple(unsigned char *output, unsigned long long outlen, uint16_t cstm, const unsigned char *in, unsigned long long inlen)
{
  uint64_t s[25];
  unsigned char t[SHAKE256_RATE];
  unsigned int i;

  cshake256_simple_absorb(s, cstm, in, inlen);
  // printf("s: ");
  // for (i = 0; i < 25; i++)
  //   printf("%02x ", s[i]);
  // printf("\n");
  // printf("cstm: %d\n", cstm);
  // printf("in: ");
  // for (i = 0; i < inlen; i++)
  //   printf("%02x ", in[i]);
  // printf("\n");

  /* Squeeze output */
  keccak_squeezeblocks(output, outlen / SHAKE256_RATE, s, SHAKE256_RATE);
  output += (outlen / SHAKE256_RATE) * SHAKE256_RATE;
  // printf("output: ");
  // for (i = 0; i < outlen; i++)
  //   printf("%02x ", output[i]);
  // printf("\n");

  if (outlen % SHAKE256_RATE)
  {
    keccak_squeezeblocks(t, 1, s, SHAKE256_RATE);
    // printf("t: ");
    // for (i = 0; i < SHAKE256_RATE; i++)
    //   printf("%02x ", t[i]);
    // printf("\n");
    for (i = 0; i < outlen % SHAKE256_RATE; i++)
    {
//#pragma HLS loop_tripcount min = 1 max = 503 avg = 252
      output[i] = t[i];
    }
  }
}