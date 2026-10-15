// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XKERNEL_TOP_H
#define XKERNEL_TOP_H

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
#include "xkernel_top_hw.h"

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
    u64 Control_r_BaseAddress;
    u64 Control_BaseAddress;
} XKernel_top_Config;
#endif

typedef struct {
    u64 Control_r_BaseAddress;
    u64 Control_BaseAddress;
    u32 IsReady;
} XKernel_top;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XKernel_top_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XKernel_top_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XKernel_top_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XKernel_top_ReadReg(BaseAddress, RegOffset) \
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
int XKernel_top_Initialize(XKernel_top *InstancePtr, UINTPTR BaseAddress);
XKernel_top_Config* XKernel_top_LookupConfig(UINTPTR BaseAddress);
#else
int XKernel_top_Initialize(XKernel_top *InstancePtr, u16 DeviceId);
XKernel_top_Config* XKernel_top_LookupConfig(u16 DeviceId);
#endif
int XKernel_top_CfgInitialize(XKernel_top *InstancePtr, XKernel_top_Config *ConfigPtr);
#else
int XKernel_top_Initialize(XKernel_top *InstancePtr, const char* InstanceName);
int XKernel_top_Release(XKernel_top *InstancePtr);
#endif

void XKernel_top_Start(XKernel_top *InstancePtr);
u32 XKernel_top_IsDone(XKernel_top *InstancePtr);
u32 XKernel_top_IsIdle(XKernel_top *InstancePtr);
u32 XKernel_top_IsReady(XKernel_top *InstancePtr);
void XKernel_top_EnableAutoRestart(XKernel_top *InstancePtr);
void XKernel_top_DisableAutoRestart(XKernel_top *InstancePtr);

void XKernel_top_Set_x(XKernel_top *InstancePtr, u64 Data);
u64 XKernel_top_Get_x(XKernel_top *InstancePtr);
void XKernel_top_Set_y(XKernel_top *InstancePtr, u64 Data);
u64 XKernel_top_Get_y(XKernel_top *InstancePtr);
void XKernel_top_Set_m(XKernel_top *InstancePtr, u64 Data);
u64 XKernel_top_Get_m(XKernel_top *InstancePtr);
void XKernel_top_Set_out_r(XKernel_top *InstancePtr, u64 Data);
u64 XKernel_top_Get_out_r(XKernel_top *InstancePtr);
void XKernel_top_Set_mprime(XKernel_top *InstancePtr, u64 Data);
u64 XKernel_top_Get_mprime(XKernel_top *InstancePtr);

void XKernel_top_InterruptGlobalEnable(XKernel_top *InstancePtr);
void XKernel_top_InterruptGlobalDisable(XKernel_top *InstancePtr);
void XKernel_top_InterruptEnable(XKernel_top *InstancePtr, u32 Mask);
void XKernel_top_InterruptDisable(XKernel_top *InstancePtr, u32 Mask);
void XKernel_top_InterruptClear(XKernel_top *InstancePtr, u32 Mask);
u32 XKernel_top_InterruptGetEnabled(XKernel_top *InstancePtr);
u32 XKernel_top_InterruptGetStatus(XKernel_top *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
