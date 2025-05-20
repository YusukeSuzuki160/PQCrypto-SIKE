// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xsikep503_kem_enc_hw.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSikep503_kem_enc_hw_CfgInitialize(XSikep503_kem_enc_hw *InstancePtr, XSikep503_kem_enc_hw_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSikep503_kem_enc_hw_Start(XSikep503_kem_enc_hw *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSikep503_kem_enc_hw_ReadReg(InstancePtr->Control_BaseAddress, XSIKEP503_KEM_ENC_HW_CONTROL_ADDR_AP_CTRL) & 0x80;
    XSikep503_kem_enc_hw_WriteReg(InstancePtr->Control_BaseAddress, XSIKEP503_KEM_ENC_HW_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XSikep503_kem_enc_hw_IsDone(XSikep503_kem_enc_hw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSikep503_kem_enc_hw_ReadReg(InstancePtr->Control_BaseAddress, XSIKEP503_KEM_ENC_HW_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XSikep503_kem_enc_hw_IsIdle(XSikep503_kem_enc_hw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSikep503_kem_enc_hw_ReadReg(InstancePtr->Control_BaseAddress, XSIKEP503_KEM_ENC_HW_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XSikep503_kem_enc_hw_IsReady(XSikep503_kem_enc_hw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSikep503_kem_enc_hw_ReadReg(InstancePtr->Control_BaseAddress, XSIKEP503_KEM_ENC_HW_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XSikep503_kem_enc_hw_EnableAutoRestart(XSikep503_kem_enc_hw *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSikep503_kem_enc_hw_WriteReg(InstancePtr->Control_BaseAddress, XSIKEP503_KEM_ENC_HW_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XSikep503_kem_enc_hw_DisableAutoRestart(XSikep503_kem_enc_hw *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSikep503_kem_enc_hw_WriteReg(InstancePtr->Control_BaseAddress, XSIKEP503_KEM_ENC_HW_CONTROL_ADDR_AP_CTRL, 0);
}

void XSikep503_kem_enc_hw_Set_ct(XSikep503_kem_enc_hw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSikep503_kem_enc_hw_WriteReg(InstancePtr->Control_BaseAddress, XSIKEP503_KEM_ENC_HW_CONTROL_ADDR_CT_DATA, Data);
}

u32 XSikep503_kem_enc_hw_Get_ct(XSikep503_kem_enc_hw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSikep503_kem_enc_hw_ReadReg(InstancePtr->Control_BaseAddress, XSIKEP503_KEM_ENC_HW_CONTROL_ADDR_CT_DATA);
    return Data;
}

void XSikep503_kem_enc_hw_Set_pk(XSikep503_kem_enc_hw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSikep503_kem_enc_hw_WriteReg(InstancePtr->Control_BaseAddress, XSIKEP503_KEM_ENC_HW_CONTROL_ADDR_PK_DATA, Data);
}

u32 XSikep503_kem_enc_hw_Get_pk(XSikep503_kem_enc_hw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSikep503_kem_enc_hw_ReadReg(InstancePtr->Control_BaseAddress, XSIKEP503_KEM_ENC_HW_CONTROL_ADDR_PK_DATA);
    return Data;
}

void XSikep503_kem_enc_hw_Set_ss(XSikep503_kem_enc_hw *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSikep503_kem_enc_hw_WriteReg(InstancePtr->Control_BaseAddress, XSIKEP503_KEM_ENC_HW_CONTROL_ADDR_SS_DATA, Data);
}

u32 XSikep503_kem_enc_hw_Get_ss(XSikep503_kem_enc_hw *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSikep503_kem_enc_hw_ReadReg(InstancePtr->Control_BaseAddress, XSIKEP503_KEM_ENC_HW_CONTROL_ADDR_SS_DATA);
    return Data;
}

void XSikep503_kem_enc_hw_InterruptGlobalEnable(XSikep503_kem_enc_hw *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSikep503_kem_enc_hw_WriteReg(InstancePtr->Control_BaseAddress, XSIKEP503_KEM_ENC_HW_CONTROL_ADDR_GIE, 1);
}

void XSikep503_kem_enc_hw_InterruptGlobalDisable(XSikep503_kem_enc_hw *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSikep503_kem_enc_hw_WriteReg(InstancePtr->Control_BaseAddress, XSIKEP503_KEM_ENC_HW_CONTROL_ADDR_GIE, 0);
}

void XSikep503_kem_enc_hw_InterruptEnable(XSikep503_kem_enc_hw *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSikep503_kem_enc_hw_ReadReg(InstancePtr->Control_BaseAddress, XSIKEP503_KEM_ENC_HW_CONTROL_ADDR_IER);
    XSikep503_kem_enc_hw_WriteReg(InstancePtr->Control_BaseAddress, XSIKEP503_KEM_ENC_HW_CONTROL_ADDR_IER, Register | Mask);
}

void XSikep503_kem_enc_hw_InterruptDisable(XSikep503_kem_enc_hw *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSikep503_kem_enc_hw_ReadReg(InstancePtr->Control_BaseAddress, XSIKEP503_KEM_ENC_HW_CONTROL_ADDR_IER);
    XSikep503_kem_enc_hw_WriteReg(InstancePtr->Control_BaseAddress, XSIKEP503_KEM_ENC_HW_CONTROL_ADDR_IER, Register & (~Mask));
}

void XSikep503_kem_enc_hw_InterruptClear(XSikep503_kem_enc_hw *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSikep503_kem_enc_hw_WriteReg(InstancePtr->Control_BaseAddress, XSIKEP503_KEM_ENC_HW_CONTROL_ADDR_ISR, Mask);
}

u32 XSikep503_kem_enc_hw_InterruptGetEnabled(XSikep503_kem_enc_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSikep503_kem_enc_hw_ReadReg(InstancePtr->Control_BaseAddress, XSIKEP503_KEM_ENC_HW_CONTROL_ADDR_IER);
}

u32 XSikep503_kem_enc_hw_InterruptGetStatus(XSikep503_kem_enc_hw *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSikep503_kem_enc_hw_ReadReg(InstancePtr->Control_BaseAddress, XSIKEP503_KEM_ENC_HW_CONTROL_ADDR_ISR);
}

