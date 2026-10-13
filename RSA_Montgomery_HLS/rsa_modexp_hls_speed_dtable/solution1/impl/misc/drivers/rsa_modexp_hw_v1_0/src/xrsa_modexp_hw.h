// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XRSA_MODEXP_HW_H
#define XRSA_MODEXP_HW_H

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
#include "xrsa_modexp_hw_hw.h"

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
} XRsa_modexp_hw_Config;
#endif

typedef struct {
    u64 Control_r_BaseAddress;
    u64 Control_BaseAddress;
    u32 IsReady;
} XRsa_modexp_hw;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XRsa_modexp_hw_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XRsa_modexp_hw_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XRsa_modexp_hw_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XRsa_modexp_hw_ReadReg(BaseAddress, RegOffset) \
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
int XRsa_modexp_hw_Initialize(XRsa_modexp_hw *InstancePtr, UINTPTR BaseAddress);
XRsa_modexp_hw_Config* XRsa_modexp_hw_LookupConfig(UINTPTR BaseAddress);
#else
int XRsa_modexp_hw_Initialize(XRsa_modexp_hw *InstancePtr, u16 DeviceId);
XRsa_modexp_hw_Config* XRsa_modexp_hw_LookupConfig(u16 DeviceId);
#endif
int XRsa_modexp_hw_CfgInitialize(XRsa_modexp_hw *InstancePtr, XRsa_modexp_hw_Config *ConfigPtr);
#else
int XRsa_modexp_hw_Initialize(XRsa_modexp_hw *InstancePtr, const char* InstanceName);
int XRsa_modexp_hw_Release(XRsa_modexp_hw *InstancePtr);
#endif

void XRsa_modexp_hw_Start(XRsa_modexp_hw *InstancePtr);
u32 XRsa_modexp_hw_IsDone(XRsa_modexp_hw *InstancePtr);
u32 XRsa_modexp_hw_IsIdle(XRsa_modexp_hw *InstancePtr);
u32 XRsa_modexp_hw_IsReady(XRsa_modexp_hw *InstancePtr);
void XRsa_modexp_hw_EnableAutoRestart(XRsa_modexp_hw *InstancePtr);
void XRsa_modexp_hw_DisableAutoRestart(XRsa_modexp_hw *InstancePtr);

void XRsa_modexp_hw_Set_c(XRsa_modexp_hw *InstancePtr, u64 Data);
u64 XRsa_modexp_hw_Get_c(XRsa_modexp_hw *InstancePtr);
void XRsa_modexp_hw_Set_d(XRsa_modexp_hw *InstancePtr, u64 Data);
u64 XRsa_modexp_hw_Get_d(XRsa_modexp_hw *InstancePtr);
void XRsa_modexp_hw_Set_m(XRsa_modexp_hw *InstancePtr, u64 Data);
u64 XRsa_modexp_hw_Get_m(XRsa_modexp_hw *InstancePtr);
void XRsa_modexp_hw_Set_r2m(XRsa_modexp_hw *InstancePtr, u64 Data);
u64 XRsa_modexp_hw_Get_r2m(XRsa_modexp_hw *InstancePtr);
void XRsa_modexp_hw_Set_p(XRsa_modexp_hw *InstancePtr, u64 Data);
u64 XRsa_modexp_hw_Get_p(XRsa_modexp_hw *InstancePtr);
void XRsa_modexp_hw_Set_mprime(XRsa_modexp_hw *InstancePtr, u32 Data);
u32 XRsa_modexp_hw_Get_mprime(XRsa_modexp_hw *InstancePtr);

void XRsa_modexp_hw_InterruptGlobalEnable(XRsa_modexp_hw *InstancePtr);
void XRsa_modexp_hw_InterruptGlobalDisable(XRsa_modexp_hw *InstancePtr);
void XRsa_modexp_hw_InterruptEnable(XRsa_modexp_hw *InstancePtr, u32 Mask);
void XRsa_modexp_hw_InterruptDisable(XRsa_modexp_hw *InstancePtr, u32 Mask);
void XRsa_modexp_hw_InterruptClear(XRsa_modexp_hw *InstancePtr, u32 Mask);
u32 XRsa_modexp_hw_InterruptGetEnabled(XRsa_modexp_hw *InstancePtr);
u32 XRsa_modexp_hw_InterruptGetStatus(XRsa_modexp_hw *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
