// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XSIKEP503_KEM_ENC_HW_H
#define XSIKEP503_KEM_ENC_HW_H

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
#include "xsikep503_kem_enc_hw_hw.h"

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
    u32 Control_BaseAddress;
} XSikep503_kem_enc_hw_Config;
#endif

typedef struct {
    u32 Control_BaseAddress;
    u32 IsReady;
} XSikep503_kem_enc_hw;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSikep503_kem_enc_hw_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSikep503_kem_enc_hw_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSikep503_kem_enc_hw_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSikep503_kem_enc_hw_ReadReg(BaseAddress, RegOffset) \
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
int XSikep503_kem_enc_hw_Initialize(XSikep503_kem_enc_hw *InstancePtr, UINTPTR BaseAddress);
XSikep503_kem_enc_hw_Config* XSikep503_kem_enc_hw_LookupConfig(UINTPTR BaseAddress);
#else
int XSikep503_kem_enc_hw_Initialize(XSikep503_kem_enc_hw *InstancePtr, u16 DeviceId);
XSikep503_kem_enc_hw_Config* XSikep503_kem_enc_hw_LookupConfig(u16 DeviceId);
#endif
int XSikep503_kem_enc_hw_CfgInitialize(XSikep503_kem_enc_hw *InstancePtr, XSikep503_kem_enc_hw_Config *ConfigPtr);
#else
int XSikep503_kem_enc_hw_Initialize(XSikep503_kem_enc_hw *InstancePtr, const char* InstanceName);
int XSikep503_kem_enc_hw_Release(XSikep503_kem_enc_hw *InstancePtr);
#endif

void XSikep503_kem_enc_hw_Start(XSikep503_kem_enc_hw *InstancePtr);
u32 XSikep503_kem_enc_hw_IsDone(XSikep503_kem_enc_hw *InstancePtr);
u32 XSikep503_kem_enc_hw_IsIdle(XSikep503_kem_enc_hw *InstancePtr);
u32 XSikep503_kem_enc_hw_IsReady(XSikep503_kem_enc_hw *InstancePtr);
void XSikep503_kem_enc_hw_EnableAutoRestart(XSikep503_kem_enc_hw *InstancePtr);
void XSikep503_kem_enc_hw_DisableAutoRestart(XSikep503_kem_enc_hw *InstancePtr);

void XSikep503_kem_enc_hw_Set_ct(XSikep503_kem_enc_hw *InstancePtr, u32 Data);
u32 XSikep503_kem_enc_hw_Get_ct(XSikep503_kem_enc_hw *InstancePtr);
void XSikep503_kem_enc_hw_Set_pk(XSikep503_kem_enc_hw *InstancePtr, u32 Data);
u32 XSikep503_kem_enc_hw_Get_pk(XSikep503_kem_enc_hw *InstancePtr);
void XSikep503_kem_enc_hw_Set_ss(XSikep503_kem_enc_hw *InstancePtr, u32 Data);
u32 XSikep503_kem_enc_hw_Get_ss(XSikep503_kem_enc_hw *InstancePtr);

void XSikep503_kem_enc_hw_InterruptGlobalEnable(XSikep503_kem_enc_hw *InstancePtr);
void XSikep503_kem_enc_hw_InterruptGlobalDisable(XSikep503_kem_enc_hw *InstancePtr);
void XSikep503_kem_enc_hw_InterruptEnable(XSikep503_kem_enc_hw *InstancePtr, u32 Mask);
void XSikep503_kem_enc_hw_InterruptDisable(XSikep503_kem_enc_hw *InstancePtr, u32 Mask);
void XSikep503_kem_enc_hw_InterruptClear(XSikep503_kem_enc_hw *InstancePtr, u32 Mask);
u32 XSikep503_kem_enc_hw_InterruptGetEnabled(XSikep503_kem_enc_hw *InstancePtr);
u32 XSikep503_kem_enc_hw_InterruptGetStatus(XSikep503_kem_enc_hw *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
