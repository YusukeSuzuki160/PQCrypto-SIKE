// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of ct
//        bit 31~0 - ct[31:0] (Read/Write)
// 0x14 : Data signal of ct
//        bit 31~0 - ct[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of pk
//        bit 31~0 - pk[31:0] (Read/Write)
// 0x20 : Data signal of pk
//        bit 31~0 - pk[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of ss
//        bit 31~0 - ss[31:0] (Read/Write)
// 0x2c : Data signal of ss
//        bit 31~0 - ss[63:32] (Read/Write)
// 0x30 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_CT_DATA 0x10
#define CONTROL_BITS_CT_DATA 64
#define CONTROL_ADDR_PK_DATA 0x1c
#define CONTROL_BITS_PK_DATA 64
#define CONTROL_ADDR_SS_DATA 0x28
#define CONTROL_BITS_SS_DATA 64
