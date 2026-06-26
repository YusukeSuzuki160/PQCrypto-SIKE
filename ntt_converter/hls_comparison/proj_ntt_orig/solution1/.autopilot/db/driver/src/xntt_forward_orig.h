// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XNTT_FORWARD_ORIG_H
#define XNTT_FORWARD_ORIG_H

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
#include "xntt_forward_orig_hw.h"

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
} XNtt_forward_orig_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XNtt_forward_orig;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XNtt_forward_orig_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XNtt_forward_orig_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XNtt_forward_orig_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XNtt_forward_orig_ReadReg(BaseAddress, RegOffset) \
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
int XNtt_forward_orig_Initialize(XNtt_forward_orig *InstancePtr, UINTPTR BaseAddress);
XNtt_forward_orig_Config* XNtt_forward_orig_LookupConfig(UINTPTR BaseAddress);
#else
int XNtt_forward_orig_Initialize(XNtt_forward_orig *InstancePtr, u16 DeviceId);
XNtt_forward_orig_Config* XNtt_forward_orig_LookupConfig(u16 DeviceId);
#endif
int XNtt_forward_orig_CfgInitialize(XNtt_forward_orig *InstancePtr, XNtt_forward_orig_Config *ConfigPtr);
#else
int XNtt_forward_orig_Initialize(XNtt_forward_orig *InstancePtr, const char* InstanceName);
int XNtt_forward_orig_Release(XNtt_forward_orig *InstancePtr);
#endif

void XNtt_forward_orig_Start(XNtt_forward_orig *InstancePtr);
u32 XNtt_forward_orig_IsDone(XNtt_forward_orig *InstancePtr);
u32 XNtt_forward_orig_IsIdle(XNtt_forward_orig *InstancePtr);
u32 XNtt_forward_orig_IsReady(XNtt_forward_orig *InstancePtr);
void XNtt_forward_orig_EnableAutoRestart(XNtt_forward_orig *InstancePtr);
void XNtt_forward_orig_DisableAutoRestart(XNtt_forward_orig *InstancePtr);

void XNtt_forward_orig_Set_mod_r(XNtt_forward_orig *InstancePtr, u32 Data);
u32 XNtt_forward_orig_Get_mod_r(XNtt_forward_orig *InstancePtr);

void XNtt_forward_orig_InterruptGlobalEnable(XNtt_forward_orig *InstancePtr);
void XNtt_forward_orig_InterruptGlobalDisable(XNtt_forward_orig *InstancePtr);
void XNtt_forward_orig_InterruptEnable(XNtt_forward_orig *InstancePtr, u32 Mask);
void XNtt_forward_orig_InterruptDisable(XNtt_forward_orig *InstancePtr, u32 Mask);
void XNtt_forward_orig_InterruptClear(XNtt_forward_orig *InstancePtr, u32 Mask);
u32 XNtt_forward_orig_InterruptGetEnabled(XNtt_forward_orig *InstancePtr);
u32 XNtt_forward_orig_InterruptGetStatus(XNtt_forward_orig *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
