// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XTEST_MUL_PACKED_SIMPLE_H
#define XTEST_MUL_PACKED_SIMPLE_H

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
#include "xtest_mul_packed_simple_hw.h"

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
} XTest_mul_packed_simple_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XTest_mul_packed_simple;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XTest_mul_packed_simple_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XTest_mul_packed_simple_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XTest_mul_packed_simple_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XTest_mul_packed_simple_ReadReg(BaseAddress, RegOffset) \
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
int XTest_mul_packed_simple_Initialize(XTest_mul_packed_simple *InstancePtr, UINTPTR BaseAddress);
XTest_mul_packed_simple_Config* XTest_mul_packed_simple_LookupConfig(UINTPTR BaseAddress);
#else
int XTest_mul_packed_simple_Initialize(XTest_mul_packed_simple *InstancePtr, u16 DeviceId);
XTest_mul_packed_simple_Config* XTest_mul_packed_simple_LookupConfig(u16 DeviceId);
#endif
int XTest_mul_packed_simple_CfgInitialize(XTest_mul_packed_simple *InstancePtr, XTest_mul_packed_simple_Config *ConfigPtr);
#else
int XTest_mul_packed_simple_Initialize(XTest_mul_packed_simple *InstancePtr, const char* InstanceName);
int XTest_mul_packed_simple_Release(XTest_mul_packed_simple *InstancePtr);
#endif

void XTest_mul_packed_simple_Start(XTest_mul_packed_simple *InstancePtr);
u32 XTest_mul_packed_simple_IsDone(XTest_mul_packed_simple *InstancePtr);
u32 XTest_mul_packed_simple_IsIdle(XTest_mul_packed_simple *InstancePtr);
u32 XTest_mul_packed_simple_IsReady(XTest_mul_packed_simple *InstancePtr);
void XTest_mul_packed_simple_EnableAutoRestart(XTest_mul_packed_simple *InstancePtr);
void XTest_mul_packed_simple_DisableAutoRestart(XTest_mul_packed_simple *InstancePtr);


void XTest_mul_packed_simple_InterruptGlobalEnable(XTest_mul_packed_simple *InstancePtr);
void XTest_mul_packed_simple_InterruptGlobalDisable(XTest_mul_packed_simple *InstancePtr);
void XTest_mul_packed_simple_InterruptEnable(XTest_mul_packed_simple *InstancePtr, u32 Mask);
void XTest_mul_packed_simple_InterruptDisable(XTest_mul_packed_simple *InstancePtr, u32 Mask);
void XTest_mul_packed_simple_InterruptClear(XTest_mul_packed_simple *InstancePtr, u32 Mask);
u32 XTest_mul_packed_simple_InterruptGetEnabled(XTest_mul_packed_simple *InstancePtr);
u32 XTest_mul_packed_simple_InterruptGetStatus(XTest_mul_packed_simple *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
