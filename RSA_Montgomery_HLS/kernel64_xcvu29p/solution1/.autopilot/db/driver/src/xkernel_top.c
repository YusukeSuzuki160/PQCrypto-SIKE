// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xkernel_top.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XKernel_top_CfgInitialize(XKernel_top *InstancePtr, XKernel_top_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_r_BaseAddress = ConfigPtr->Control_r_BaseAddress;
    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XKernel_top_Start(XKernel_top *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_top_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_TOP_CONTROL_ADDR_AP_CTRL) & 0x80;
    XKernel_top_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_TOP_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XKernel_top_IsDone(XKernel_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_top_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_TOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XKernel_top_IsIdle(XKernel_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_top_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_TOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XKernel_top_IsReady(XKernel_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_top_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_TOP_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XKernel_top_EnableAutoRestart(XKernel_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_top_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_TOP_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XKernel_top_DisableAutoRestart(XKernel_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_top_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_TOP_CONTROL_ADDR_AP_CTRL, 0);
}

void XKernel_top_Set_x(XKernel_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_top_WriteReg(InstancePtr->Control_r_BaseAddress, XKERNEL_TOP_CONTROL_R_ADDR_X_DATA, (u32)(Data));
    XKernel_top_WriteReg(InstancePtr->Control_r_BaseAddress, XKERNEL_TOP_CONTROL_R_ADDR_X_DATA + 4, (u32)(Data >> 32));
}

u64 XKernel_top_Get_x(XKernel_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_top_ReadReg(InstancePtr->Control_r_BaseAddress, XKERNEL_TOP_CONTROL_R_ADDR_X_DATA);
    Data += (u64)XKernel_top_ReadReg(InstancePtr->Control_r_BaseAddress, XKERNEL_TOP_CONTROL_R_ADDR_X_DATA + 4) << 32;
    return Data;
}

void XKernel_top_Set_y(XKernel_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_top_WriteReg(InstancePtr->Control_r_BaseAddress, XKERNEL_TOP_CONTROL_R_ADDR_Y_DATA, (u32)(Data));
    XKernel_top_WriteReg(InstancePtr->Control_r_BaseAddress, XKERNEL_TOP_CONTROL_R_ADDR_Y_DATA + 4, (u32)(Data >> 32));
}

u64 XKernel_top_Get_y(XKernel_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_top_ReadReg(InstancePtr->Control_r_BaseAddress, XKERNEL_TOP_CONTROL_R_ADDR_Y_DATA);
    Data += (u64)XKernel_top_ReadReg(InstancePtr->Control_r_BaseAddress, XKERNEL_TOP_CONTROL_R_ADDR_Y_DATA + 4) << 32;
    return Data;
}

void XKernel_top_Set_m(XKernel_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_top_WriteReg(InstancePtr->Control_r_BaseAddress, XKERNEL_TOP_CONTROL_R_ADDR_M_DATA, (u32)(Data));
    XKernel_top_WriteReg(InstancePtr->Control_r_BaseAddress, XKERNEL_TOP_CONTROL_R_ADDR_M_DATA + 4, (u32)(Data >> 32));
}

u64 XKernel_top_Get_m(XKernel_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_top_ReadReg(InstancePtr->Control_r_BaseAddress, XKERNEL_TOP_CONTROL_R_ADDR_M_DATA);
    Data += (u64)XKernel_top_ReadReg(InstancePtr->Control_r_BaseAddress, XKERNEL_TOP_CONTROL_R_ADDR_M_DATA + 4) << 32;
    return Data;
}

void XKernel_top_Set_out_r(XKernel_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_top_WriteReg(InstancePtr->Control_r_BaseAddress, XKERNEL_TOP_CONTROL_R_ADDR_OUT_R_DATA, (u32)(Data));
    XKernel_top_WriteReg(InstancePtr->Control_r_BaseAddress, XKERNEL_TOP_CONTROL_R_ADDR_OUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XKernel_top_Get_out_r(XKernel_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_top_ReadReg(InstancePtr->Control_r_BaseAddress, XKERNEL_TOP_CONTROL_R_ADDR_OUT_R_DATA);
    Data += (u64)XKernel_top_ReadReg(InstancePtr->Control_r_BaseAddress, XKERNEL_TOP_CONTROL_R_ADDR_OUT_R_DATA + 4) << 32;
    return Data;
}

void XKernel_top_Set_mprime(XKernel_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_top_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_TOP_CONTROL_ADDR_MPRIME_DATA, (u32)(Data));
    XKernel_top_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_TOP_CONTROL_ADDR_MPRIME_DATA + 4, (u32)(Data >> 32));
}

u64 XKernel_top_Get_mprime(XKernel_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKernel_top_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_TOP_CONTROL_ADDR_MPRIME_DATA);
    Data += (u64)XKernel_top_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_TOP_CONTROL_ADDR_MPRIME_DATA + 4) << 32;
    return Data;
}

void XKernel_top_InterruptGlobalEnable(XKernel_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_top_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_TOP_CONTROL_ADDR_GIE, 1);
}

void XKernel_top_InterruptGlobalDisable(XKernel_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_top_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_TOP_CONTROL_ADDR_GIE, 0);
}

void XKernel_top_InterruptEnable(XKernel_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKernel_top_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_TOP_CONTROL_ADDR_IER);
    XKernel_top_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_TOP_CONTROL_ADDR_IER, Register | Mask);
}

void XKernel_top_InterruptDisable(XKernel_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKernel_top_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_TOP_CONTROL_ADDR_IER);
    XKernel_top_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_TOP_CONTROL_ADDR_IER, Register & (~Mask));
}

void XKernel_top_InterruptClear(XKernel_top *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKernel_top_WriteReg(InstancePtr->Control_BaseAddress, XKERNEL_TOP_CONTROL_ADDR_ISR, Mask);
}

u32 XKernel_top_InterruptGetEnabled(XKernel_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKernel_top_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_TOP_CONTROL_ADDR_IER);
}

u32 XKernel_top_InterruptGetStatus(XKernel_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKernel_top_ReadReg(InstancePtr->Control_BaseAddress, XKERNEL_TOP_CONTROL_ADDR_ISR);
}

