// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xntt_forward_converted.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XNtt_forward_converted_CfgInitialize(XNtt_forward_converted *InstancePtr, XNtt_forward_converted_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XNtt_forward_converted_Start(XNtt_forward_converted *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNtt_forward_converted_ReadReg(InstancePtr->Control_BaseAddress, XNTT_FORWARD_CONVERTED_CONTROL_ADDR_AP_CTRL) & 0x80;
    XNtt_forward_converted_WriteReg(InstancePtr->Control_BaseAddress, XNTT_FORWARD_CONVERTED_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XNtt_forward_converted_IsDone(XNtt_forward_converted *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNtt_forward_converted_ReadReg(InstancePtr->Control_BaseAddress, XNTT_FORWARD_CONVERTED_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XNtt_forward_converted_IsIdle(XNtt_forward_converted *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNtt_forward_converted_ReadReg(InstancePtr->Control_BaseAddress, XNTT_FORWARD_CONVERTED_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XNtt_forward_converted_IsReady(XNtt_forward_converted *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNtt_forward_converted_ReadReg(InstancePtr->Control_BaseAddress, XNTT_FORWARD_CONVERTED_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XNtt_forward_converted_EnableAutoRestart(XNtt_forward_converted *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNtt_forward_converted_WriteReg(InstancePtr->Control_BaseAddress, XNTT_FORWARD_CONVERTED_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XNtt_forward_converted_DisableAutoRestart(XNtt_forward_converted *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNtt_forward_converted_WriteReg(InstancePtr->Control_BaseAddress, XNTT_FORWARD_CONVERTED_CONTROL_ADDR_AP_CTRL, 0);
}

void XNtt_forward_converted_Set_mod_r(XNtt_forward_converted *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNtt_forward_converted_WriteReg(InstancePtr->Control_BaseAddress, XNTT_FORWARD_CONVERTED_CONTROL_ADDR_MOD_R_DATA, Data);
}

u32 XNtt_forward_converted_Get_mod_r(XNtt_forward_converted *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNtt_forward_converted_ReadReg(InstancePtr->Control_BaseAddress, XNTT_FORWARD_CONVERTED_CONTROL_ADDR_MOD_R_DATA);
    return Data;
}

void XNtt_forward_converted_InterruptGlobalEnable(XNtt_forward_converted *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNtt_forward_converted_WriteReg(InstancePtr->Control_BaseAddress, XNTT_FORWARD_CONVERTED_CONTROL_ADDR_GIE, 1);
}

void XNtt_forward_converted_InterruptGlobalDisable(XNtt_forward_converted *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNtt_forward_converted_WriteReg(InstancePtr->Control_BaseAddress, XNTT_FORWARD_CONVERTED_CONTROL_ADDR_GIE, 0);
}

void XNtt_forward_converted_InterruptEnable(XNtt_forward_converted *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XNtt_forward_converted_ReadReg(InstancePtr->Control_BaseAddress, XNTT_FORWARD_CONVERTED_CONTROL_ADDR_IER);
    XNtt_forward_converted_WriteReg(InstancePtr->Control_BaseAddress, XNTT_FORWARD_CONVERTED_CONTROL_ADDR_IER, Register | Mask);
}

void XNtt_forward_converted_InterruptDisable(XNtt_forward_converted *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XNtt_forward_converted_ReadReg(InstancePtr->Control_BaseAddress, XNTT_FORWARD_CONVERTED_CONTROL_ADDR_IER);
    XNtt_forward_converted_WriteReg(InstancePtr->Control_BaseAddress, XNTT_FORWARD_CONVERTED_CONTROL_ADDR_IER, Register & (~Mask));
}

void XNtt_forward_converted_InterruptClear(XNtt_forward_converted *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNtt_forward_converted_WriteReg(InstancePtr->Control_BaseAddress, XNTT_FORWARD_CONVERTED_CONTROL_ADDR_ISR, Mask);
}

u32 XNtt_forward_converted_InterruptGetEnabled(XNtt_forward_converted *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNtt_forward_converted_ReadReg(InstancePtr->Control_BaseAddress, XNTT_FORWARD_CONVERTED_CONTROL_ADDR_IER);
}

u32 XNtt_forward_converted_InterruptGetStatus(XNtt_forward_converted *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNtt_forward_converted_ReadReg(InstancePtr->Control_BaseAddress, XNTT_FORWARD_CONVERTED_CONTROL_ADDR_ISR);
}

