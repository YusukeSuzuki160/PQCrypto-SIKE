// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xmp_mul_orig.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMp_mul_orig_CfgInitialize(XMp_mul_orig *InstancePtr, XMp_mul_orig_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMp_mul_orig_Start(XMp_mul_orig *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMp_mul_orig_ReadReg(InstancePtr->Control_BaseAddress, XMP_MUL_ORIG_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMp_mul_orig_WriteReg(InstancePtr->Control_BaseAddress, XMP_MUL_ORIG_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMp_mul_orig_IsDone(XMp_mul_orig *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMp_mul_orig_ReadReg(InstancePtr->Control_BaseAddress, XMP_MUL_ORIG_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMp_mul_orig_IsIdle(XMp_mul_orig *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMp_mul_orig_ReadReg(InstancePtr->Control_BaseAddress, XMP_MUL_ORIG_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMp_mul_orig_IsReady(XMp_mul_orig *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMp_mul_orig_ReadReg(InstancePtr->Control_BaseAddress, XMP_MUL_ORIG_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMp_mul_orig_EnableAutoRestart(XMp_mul_orig *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMp_mul_orig_WriteReg(InstancePtr->Control_BaseAddress, XMP_MUL_ORIG_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XMp_mul_orig_DisableAutoRestart(XMp_mul_orig *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMp_mul_orig_WriteReg(InstancePtr->Control_BaseAddress, XMP_MUL_ORIG_CONTROL_ADDR_AP_CTRL, 0);
}

void XMp_mul_orig_Set_a(XMp_mul_orig *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMp_mul_orig_WriteReg(InstancePtr->Control_BaseAddress, XMP_MUL_ORIG_CONTROL_ADDR_A_DATA, (u32)(Data));
    XMp_mul_orig_WriteReg(InstancePtr->Control_BaseAddress, XMP_MUL_ORIG_CONTROL_ADDR_A_DATA + 4, (u32)(Data >> 32));
}

u64 XMp_mul_orig_Get_a(XMp_mul_orig *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMp_mul_orig_ReadReg(InstancePtr->Control_BaseAddress, XMP_MUL_ORIG_CONTROL_ADDR_A_DATA);
    Data += (u64)XMp_mul_orig_ReadReg(InstancePtr->Control_BaseAddress, XMP_MUL_ORIG_CONTROL_ADDR_A_DATA + 4) << 32;
    return Data;
}

void XMp_mul_orig_Set_b(XMp_mul_orig *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMp_mul_orig_WriteReg(InstancePtr->Control_BaseAddress, XMP_MUL_ORIG_CONTROL_ADDR_B_DATA, (u32)(Data));
    XMp_mul_orig_WriteReg(InstancePtr->Control_BaseAddress, XMP_MUL_ORIG_CONTROL_ADDR_B_DATA + 4, (u32)(Data >> 32));
}

u64 XMp_mul_orig_Get_b(XMp_mul_orig *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMp_mul_orig_ReadReg(InstancePtr->Control_BaseAddress, XMP_MUL_ORIG_CONTROL_ADDR_B_DATA);
    Data += (u64)XMp_mul_orig_ReadReg(InstancePtr->Control_BaseAddress, XMP_MUL_ORIG_CONTROL_ADDR_B_DATA + 4) << 32;
    return Data;
}

void XMp_mul_orig_Set_c(XMp_mul_orig *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMp_mul_orig_WriteReg(InstancePtr->Control_BaseAddress, XMP_MUL_ORIG_CONTROL_ADDR_C_DATA, (u32)(Data));
    XMp_mul_orig_WriteReg(InstancePtr->Control_BaseAddress, XMP_MUL_ORIG_CONTROL_ADDR_C_DATA + 4, (u32)(Data >> 32));
}

u64 XMp_mul_orig_Get_c(XMp_mul_orig *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMp_mul_orig_ReadReg(InstancePtr->Control_BaseAddress, XMP_MUL_ORIG_CONTROL_ADDR_C_DATA);
    Data += (u64)XMp_mul_orig_ReadReg(InstancePtr->Control_BaseAddress, XMP_MUL_ORIG_CONTROL_ADDR_C_DATA + 4) << 32;
    return Data;
}

void XMp_mul_orig_Set_nwords(XMp_mul_orig *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMp_mul_orig_WriteReg(InstancePtr->Control_BaseAddress, XMP_MUL_ORIG_CONTROL_ADDR_NWORDS_DATA, Data);
}

u32 XMp_mul_orig_Get_nwords(XMp_mul_orig *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMp_mul_orig_ReadReg(InstancePtr->Control_BaseAddress, XMP_MUL_ORIG_CONTROL_ADDR_NWORDS_DATA);
    return Data;
}

void XMp_mul_orig_InterruptGlobalEnable(XMp_mul_orig *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMp_mul_orig_WriteReg(InstancePtr->Control_BaseAddress, XMP_MUL_ORIG_CONTROL_ADDR_GIE, 1);
}

void XMp_mul_orig_InterruptGlobalDisable(XMp_mul_orig *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMp_mul_orig_WriteReg(InstancePtr->Control_BaseAddress, XMP_MUL_ORIG_CONTROL_ADDR_GIE, 0);
}

void XMp_mul_orig_InterruptEnable(XMp_mul_orig *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMp_mul_orig_ReadReg(InstancePtr->Control_BaseAddress, XMP_MUL_ORIG_CONTROL_ADDR_IER);
    XMp_mul_orig_WriteReg(InstancePtr->Control_BaseAddress, XMP_MUL_ORIG_CONTROL_ADDR_IER, Register | Mask);
}

void XMp_mul_orig_InterruptDisable(XMp_mul_orig *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMp_mul_orig_ReadReg(InstancePtr->Control_BaseAddress, XMP_MUL_ORIG_CONTROL_ADDR_IER);
    XMp_mul_orig_WriteReg(InstancePtr->Control_BaseAddress, XMP_MUL_ORIG_CONTROL_ADDR_IER, Register & (~Mask));
}

void XMp_mul_orig_InterruptClear(XMp_mul_orig *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMp_mul_orig_WriteReg(InstancePtr->Control_BaseAddress, XMP_MUL_ORIG_CONTROL_ADDR_ISR, Mask);
}

u32 XMp_mul_orig_InterruptGetEnabled(XMp_mul_orig *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMp_mul_orig_ReadReg(InstancePtr->Control_BaseAddress, XMP_MUL_ORIG_CONTROL_ADDR_IER);
}

u32 XMp_mul_orig_InterruptGetStatus(XMp_mul_orig *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMp_mul_orig_ReadReg(InstancePtr->Control_BaseAddress, XMP_MUL_ORIG_CONTROL_ADDR_ISR);
}

