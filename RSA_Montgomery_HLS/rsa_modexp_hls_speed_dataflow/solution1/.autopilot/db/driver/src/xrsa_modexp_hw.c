// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xrsa_modexp_hw.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XRsa_modexp_hw_CfgInitialize(XRsa_modexp_hw *InstancePtr, XRsa_modexp_hw_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_r_BaseAddress = ConfigPtr->Control_r_BaseAddress;
    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XRsa_modexp_hw_Start(XRsa_modexp_hw *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRsa_modexp_hw_ReadReg(InstancePtr->Control_BaseAddress, XRSA_MODEXP_HW_CONTROL_ADDR_AP_CTRL) & 0x80;
    XRsa_modexp_hw_WriteReg(InstancePtr->Control_BaseAddress, XRSA_MODEXP_HW_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XRsa_modexp_hw_IsDone(XRsa_modexp_hw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRsa_modexp_hw_ReadReg(InstancePtr->Control_BaseAddress, XRSA_MODEXP_HW_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XRsa_modexp_hw_IsIdle(XRsa_modexp_hw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRsa_modexp_hw_ReadReg(InstancePtr->Control_BaseAddress, XRSA_MODEXP_HW_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XRsa_modexp_hw_IsReady(XRsa_modexp_hw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRsa_modexp_hw_ReadReg(InstancePtr->Control_BaseAddress, XRSA_MODEXP_HW_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XRsa_modexp_hw_EnableAutoRestart(XRsa_modexp_hw *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRsa_modexp_hw_WriteReg(InstancePtr->Control_BaseAddress, XRSA_MODEXP_HW_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XRsa_modexp_hw_DisableAutoRestart(XRsa_modexp_hw *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRsa_modexp_hw_WriteReg(InstancePtr->Control_BaseAddress, XRSA_MODEXP_HW_CONTROL_ADDR_AP_CTRL, 0);
}

void XRsa_modexp_hw_Set_c(XRsa_modexp_hw *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRsa_modexp_hw_WriteReg(InstancePtr->Control_r_BaseAddress, XRSA_MODEXP_HW_CONTROL_R_ADDR_C_DATA, (u32)(Data));
    XRsa_modexp_hw_WriteReg(InstancePtr->Control_r_BaseAddress, XRSA_MODEXP_HW_CONTROL_R_ADDR_C_DATA + 4, (u32)(Data >> 32));
}

u64 XRsa_modexp_hw_Get_c(XRsa_modexp_hw *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRsa_modexp_hw_ReadReg(InstancePtr->Control_r_BaseAddress, XRSA_MODEXP_HW_CONTROL_R_ADDR_C_DATA);
    Data += (u64)XRsa_modexp_hw_ReadReg(InstancePtr->Control_r_BaseAddress, XRSA_MODEXP_HW_CONTROL_R_ADDR_C_DATA + 4) << 32;
    return Data;
}

void XRsa_modexp_hw_Set_d(XRsa_modexp_hw *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRsa_modexp_hw_WriteReg(InstancePtr->Control_r_BaseAddress, XRSA_MODEXP_HW_CONTROL_R_ADDR_D_DATA, (u32)(Data));
    XRsa_modexp_hw_WriteReg(InstancePtr->Control_r_BaseAddress, XRSA_MODEXP_HW_CONTROL_R_ADDR_D_DATA + 4, (u32)(Data >> 32));
}

u64 XRsa_modexp_hw_Get_d(XRsa_modexp_hw *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRsa_modexp_hw_ReadReg(InstancePtr->Control_r_BaseAddress, XRSA_MODEXP_HW_CONTROL_R_ADDR_D_DATA);
    Data += (u64)XRsa_modexp_hw_ReadReg(InstancePtr->Control_r_BaseAddress, XRSA_MODEXP_HW_CONTROL_R_ADDR_D_DATA + 4) << 32;
    return Data;
}

void XRsa_modexp_hw_Set_m(XRsa_modexp_hw *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRsa_modexp_hw_WriteReg(InstancePtr->Control_r_BaseAddress, XRSA_MODEXP_HW_CONTROL_R_ADDR_M_DATA, (u32)(Data));
    XRsa_modexp_hw_WriteReg(InstancePtr->Control_r_BaseAddress, XRSA_MODEXP_HW_CONTROL_R_ADDR_M_DATA + 4, (u32)(Data >> 32));
}

u64 XRsa_modexp_hw_Get_m(XRsa_modexp_hw *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRsa_modexp_hw_ReadReg(InstancePtr->Control_r_BaseAddress, XRSA_MODEXP_HW_CONTROL_R_ADDR_M_DATA);
    Data += (u64)XRsa_modexp_hw_ReadReg(InstancePtr->Control_r_BaseAddress, XRSA_MODEXP_HW_CONTROL_R_ADDR_M_DATA + 4) << 32;
    return Data;
}

void XRsa_modexp_hw_Set_r2m(XRsa_modexp_hw *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRsa_modexp_hw_WriteReg(InstancePtr->Control_r_BaseAddress, XRSA_MODEXP_HW_CONTROL_R_ADDR_R2M_DATA, (u32)(Data));
    XRsa_modexp_hw_WriteReg(InstancePtr->Control_r_BaseAddress, XRSA_MODEXP_HW_CONTROL_R_ADDR_R2M_DATA + 4, (u32)(Data >> 32));
}

u64 XRsa_modexp_hw_Get_r2m(XRsa_modexp_hw *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRsa_modexp_hw_ReadReg(InstancePtr->Control_r_BaseAddress, XRSA_MODEXP_HW_CONTROL_R_ADDR_R2M_DATA);
    Data += (u64)XRsa_modexp_hw_ReadReg(InstancePtr->Control_r_BaseAddress, XRSA_MODEXP_HW_CONTROL_R_ADDR_R2M_DATA + 4) << 32;
    return Data;
}

void XRsa_modexp_hw_Set_p(XRsa_modexp_hw *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRsa_modexp_hw_WriteReg(InstancePtr->Control_r_BaseAddress, XRSA_MODEXP_HW_CONTROL_R_ADDR_P_DATA, (u32)(Data));
    XRsa_modexp_hw_WriteReg(InstancePtr->Control_r_BaseAddress, XRSA_MODEXP_HW_CONTROL_R_ADDR_P_DATA + 4, (u32)(Data >> 32));
}

u64 XRsa_modexp_hw_Get_p(XRsa_modexp_hw *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRsa_modexp_hw_ReadReg(InstancePtr->Control_r_BaseAddress, XRSA_MODEXP_HW_CONTROL_R_ADDR_P_DATA);
    Data += (u64)XRsa_modexp_hw_ReadReg(InstancePtr->Control_r_BaseAddress, XRSA_MODEXP_HW_CONTROL_R_ADDR_P_DATA + 4) << 32;
    return Data;
}

void XRsa_modexp_hw_Set_mprime(XRsa_modexp_hw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRsa_modexp_hw_WriteReg(InstancePtr->Control_BaseAddress, XRSA_MODEXP_HW_CONTROL_ADDR_MPRIME_DATA, Data);
}

u32 XRsa_modexp_hw_Get_mprime(XRsa_modexp_hw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRsa_modexp_hw_ReadReg(InstancePtr->Control_BaseAddress, XRSA_MODEXP_HW_CONTROL_ADDR_MPRIME_DATA);
    return Data;
}

void XRsa_modexp_hw_InterruptGlobalEnable(XRsa_modexp_hw *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRsa_modexp_hw_WriteReg(InstancePtr->Control_BaseAddress, XRSA_MODEXP_HW_CONTROL_ADDR_GIE, 1);
}

void XRsa_modexp_hw_InterruptGlobalDisable(XRsa_modexp_hw *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRsa_modexp_hw_WriteReg(InstancePtr->Control_BaseAddress, XRSA_MODEXP_HW_CONTROL_ADDR_GIE, 0);
}

void XRsa_modexp_hw_InterruptEnable(XRsa_modexp_hw *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XRsa_modexp_hw_ReadReg(InstancePtr->Control_BaseAddress, XRSA_MODEXP_HW_CONTROL_ADDR_IER);
    XRsa_modexp_hw_WriteReg(InstancePtr->Control_BaseAddress, XRSA_MODEXP_HW_CONTROL_ADDR_IER, Register | Mask);
}

void XRsa_modexp_hw_InterruptDisable(XRsa_modexp_hw *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XRsa_modexp_hw_ReadReg(InstancePtr->Control_BaseAddress, XRSA_MODEXP_HW_CONTROL_ADDR_IER);
    XRsa_modexp_hw_WriteReg(InstancePtr->Control_BaseAddress, XRSA_MODEXP_HW_CONTROL_ADDR_IER, Register & (~Mask));
}

void XRsa_modexp_hw_InterruptClear(XRsa_modexp_hw *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRsa_modexp_hw_WriteReg(InstancePtr->Control_BaseAddress, XRSA_MODEXP_HW_CONTROL_ADDR_ISR, Mask);
}

u32 XRsa_modexp_hw_InterruptGetEnabled(XRsa_modexp_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XRsa_modexp_hw_ReadReg(InstancePtr->Control_BaseAddress, XRSA_MODEXP_HW_CONTROL_ADDR_IER);
}

u32 XRsa_modexp_hw_InterruptGetStatus(XRsa_modexp_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XRsa_modexp_hw_ReadReg(InstancePtr->Control_BaseAddress, XRSA_MODEXP_HW_CONTROL_ADDR_ISR);
}

