// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XMP_MUL_PACKED_H
#define XMP_MUL_PACKED_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xmp_mul_packed_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XMp_mul_packed_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XMp_mul_packed;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMp_mul_packed_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMp_mul_packed_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMp_mul_packed_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMp_mul_packed_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XMp_mul_packed_Initialize(XMp_mul_packed *InstancePtr, UINTPTR BaseAddress);
XMp_mul_packed_Config* XMp_mul_packed_LookupConfig(UINTPTR BaseAddress);
#else
int XMp_mul_packed_Initialize(XMp_mul_packed *InstancePtr, u16 DeviceId);
XMp_mul_packed_Config* XMp_mul_packed_LookupConfig(u16 DeviceId);
#endif
int XMp_mul_packed_CfgInitialize(XMp_mul_packed *InstancePtr, XMp_mul_packed_Config *ConfigPtr);
#else
int XMp_mul_packed_Initialize(XMp_mul_packed *InstancePtr, const char* InstanceName);
int XMp_mul_packed_Release(XMp_mul_packed *InstancePtr);
#endif

void XMp_mul_packed_Start(XMp_mul_packed *InstancePtr);
u32 XMp_mul_packed_IsDone(XMp_mul_packed *InstancePtr);
u32 XMp_mul_packed_IsIdle(XMp_mul_packed *InstancePtr);
u32 XMp_mul_packed_IsReady(XMp_mul_packed *InstancePtr);
void XMp_mul_packed_EnableAutoRestart(XMp_mul_packed *InstancePtr);
void XMp_mul_packed_DisableAutoRestart(XMp_mul_packed *InstancePtr);

void XMp_mul_packed_Set_a(XMp_mul_packed *InstancePtr, u64 Data);
u64 XMp_mul_packed_Get_a(XMp_mul_packed *InstancePtr);
void XMp_mul_packed_Set_b(XMp_mul_packed *InstancePtr, u64 Data);
u64 XMp_mul_packed_Get_b(XMp_mul_packed *InstancePtr);
void XMp_mul_packed_Set_c(XMp_mul_packed *InstancePtr, u64 Data);
u64 XMp_mul_packed_Get_c(XMp_mul_packed *InstancePtr);
void XMp_mul_packed_Set_nwords(XMp_mul_packed *InstancePtr, u32 Data);
u32 XMp_mul_packed_Get_nwords(XMp_mul_packed *InstancePtr);

void XMp_mul_packed_InterruptGlobalEnable(XMp_mul_packed *InstancePtr);
void XMp_mul_packed_InterruptGlobalDisable(XMp_mul_packed *InstancePtr);
void XMp_mul_packed_InterruptEnable(XMp_mul_packed *InstancePtr, u32 Mask);
void XMp_mul_packed_InterruptDisable(XMp_mul_packed *InstancePtr, u32 Mask);
void XMp_mul_packed_InterruptClear(XMp_mul_packed *InstancePtr, u32 Mask);
u32 XMp_mul_packed_InterruptGetEnabled(XMp_mul_packed *InstancePtr);
u32 XMp_mul_packed_InterruptGetStatus(XMp_mul_packed *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
