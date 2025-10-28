// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xtest_mul_orig.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XTest_mul_orig_CfgInitialize(XTest_mul_orig *InstancePtr, XTest_mul_orig_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XTest_mul_orig_Start(XTest_mul_orig *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_mul_orig_ReadReg(InstancePtr->Control_BaseAddress, XTEST_MUL_ORIG_CONTROL_ADDR_AP_CTRL) & 0x80;
    XTest_mul_orig_WriteReg(InstancePtr->Control_BaseAddress, XTEST_MUL_ORIG_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XTest_mul_orig_IsDone(XTest_mul_orig *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_mul_orig_ReadReg(InstancePtr->Control_BaseAddress, XTEST_MUL_ORIG_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XTest_mul_orig_IsIdle(XTest_mul_orig *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_mul_orig_ReadReg(InstancePtr->Control_BaseAddress, XTEST_MUL_ORIG_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XTest_mul_orig_IsReady(XTest_mul_orig *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_mul_orig_ReadReg(InstancePtr->Control_BaseAddress, XTEST_MUL_ORIG_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XTest_mul_orig_EnableAutoRestart(XTest_mul_orig *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_mul_orig_WriteReg(InstancePtr->Control_BaseAddress, XTEST_MUL_ORIG_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XTest_mul_orig_DisableAutoRestart(XTest_mul_orig *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_mul_orig_WriteReg(InstancePtr->Control_BaseAddress, XTEST_MUL_ORIG_CONTROL_ADDR_AP_CTRL, 0);
}

void XTest_mul_orig_InterruptGlobalEnable(XTest_mul_orig *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_mul_orig_WriteReg(InstancePtr->Control_BaseAddress, XTEST_MUL_ORIG_CONTROL_ADDR_GIE, 1);
}

void XTest_mul_orig_InterruptGlobalDisable(XTest_mul_orig *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_mul_orig_WriteReg(InstancePtr->Control_BaseAddress, XTEST_MUL_ORIG_CONTROL_ADDR_GIE, 0);
}

void XTest_mul_orig_InterruptEnable(XTest_mul_orig *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTest_mul_orig_ReadReg(InstancePtr->Control_BaseAddress, XTEST_MUL_ORIG_CONTROL_ADDR_IER);
    XTest_mul_orig_WriteReg(InstancePtr->Control_BaseAddress, XTEST_MUL_ORIG_CONTROL_ADDR_IER, Register | Mask);
}

void XTest_mul_orig_InterruptDisable(XTest_mul_orig *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTest_mul_orig_ReadReg(InstancePtr->Control_BaseAddress, XTEST_MUL_ORIG_CONTROL_ADDR_IER);
    XTest_mul_orig_WriteReg(InstancePtr->Control_BaseAddress, XTEST_MUL_ORIG_CONTROL_ADDR_IER, Register & (~Mask));
}

void XTest_mul_orig_InterruptClear(XTest_mul_orig *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_mul_orig_WriteReg(InstancePtr->Control_BaseAddress, XTEST_MUL_ORIG_CONTROL_ADDR_ISR, Mask);
}

u32 XTest_mul_orig_InterruptGetEnabled(XTest_mul_orig *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTest_mul_orig_ReadReg(InstancePtr->Control_BaseAddress, XTEST_MUL_ORIG_CONTROL_ADDR_IER);
}

u32 XTest_mul_orig_InterruptGetStatus(XTest_mul_orig *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTest_mul_orig_ReadReg(InstancePtr->Control_BaseAddress, XTEST_MUL_ORIG_CONTROL_ADDR_ISR);
}

