// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
`timescale 1ns/1ps
module rsa_modexp_hw_control_r_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 7,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire [63:0]                   c,
    output wire [63:0]                   d,
    output wire [63:0]                   m,
    output wire [63:0]                   r2m,
    output wire [63:0]                   p
);
//------------------------Address Info-------------------
// Protocol Used: ap_ctrl_none
//
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of c
//        bit 31~0 - c[31:0] (Read/Write)
// 0x14 : Data signal of c
//        bit 31~0 - c[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of d
//        bit 31~0 - d[31:0] (Read/Write)
// 0x20 : Data signal of d
//        bit 31~0 - d[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of m
//        bit 31~0 - m[31:0] (Read/Write)
// 0x2c : Data signal of m
//        bit 31~0 - m[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of r2m
//        bit 31~0 - r2m[31:0] (Read/Write)
// 0x38 : Data signal of r2m
//        bit 31~0 - r2m[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of p
//        bit 31~0 - p[31:0] (Read/Write)
// 0x44 : Data signal of p
//        bit 31~0 - p[63:32] (Read/Write)
// 0x48 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_C_DATA_0   = 7'h10,
    ADDR_C_DATA_1   = 7'h14,
    ADDR_C_CTRL     = 7'h18,
    ADDR_D_DATA_0   = 7'h1c,
    ADDR_D_DATA_1   = 7'h20,
    ADDR_D_CTRL     = 7'h24,
    ADDR_M_DATA_0   = 7'h28,
    ADDR_M_DATA_1   = 7'h2c,
    ADDR_M_CTRL     = 7'h30,
    ADDR_R2M_DATA_0 = 7'h34,
    ADDR_R2M_DATA_1 = 7'h38,
    ADDR_R2M_CTRL   = 7'h3c,
    ADDR_P_DATA_0   = 7'h40,
    ADDR_P_DATA_1   = 7'h44,
    ADDR_P_CTRL     = 7'h48,
    WRIDLE          = 2'd0,
    WRDATA          = 2'd1,
    WRRESP          = 2'd2,
    WRRESET         = 2'd3,
    RDIDLE          = 2'd0,
    RDDATA          = 2'd1,
    RDRESET         = 2'd2,
    ADDR_BITS                = 7;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg  [63:0]                   int_c = 'b0;
    reg  [63:0]                   int_d = 'b0;
    reg  [63:0]                   int_m = 'b0;
    reg  [63:0]                   int_r2m = 'b0;
    reg  [63:0]                   int_p = 'b0;

//------------------------Instantiation------------------


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= {AWADDR[ADDR_BITS-1:2], {2{1'b0}}};
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_C_DATA_0: begin
                    rdata <= int_c[31:0];
                end
                ADDR_C_DATA_1: begin
                    rdata <= int_c[63:32];
                end
                ADDR_D_DATA_0: begin
                    rdata <= int_d[31:0];
                end
                ADDR_D_DATA_1: begin
                    rdata <= int_d[63:32];
                end
                ADDR_M_DATA_0: begin
                    rdata <= int_m[31:0];
                end
                ADDR_M_DATA_1: begin
                    rdata <= int_m[63:32];
                end
                ADDR_R2M_DATA_0: begin
                    rdata <= int_r2m[31:0];
                end
                ADDR_R2M_DATA_1: begin
                    rdata <= int_r2m[63:32];
                end
                ADDR_P_DATA_0: begin
                    rdata <= int_p[31:0];
                end
                ADDR_P_DATA_1: begin
                    rdata <= int_p[63:32];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign c   = int_c;
assign d   = int_d;
assign m   = int_m;
assign r2m = int_r2m;
assign p   = int_p;
// int_c[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_c[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_C_DATA_0)
            int_c[31:0] <= (WDATA[31:0] & wmask) | (int_c[31:0] & ~wmask);
    end
end

// int_c[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_c[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_C_DATA_1)
            int_c[63:32] <= (WDATA[31:0] & wmask) | (int_c[63:32] & ~wmask);
    end
end

// int_d[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_d[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_D_DATA_0)
            int_d[31:0] <= (WDATA[31:0] & wmask) | (int_d[31:0] & ~wmask);
    end
end

// int_d[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_d[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_D_DATA_1)
            int_d[63:32] <= (WDATA[31:0] & wmask) | (int_d[63:32] & ~wmask);
    end
end

// int_m[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_m[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_M_DATA_0)
            int_m[31:0] <= (WDATA[31:0] & wmask) | (int_m[31:0] & ~wmask);
    end
end

// int_m[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_m[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_M_DATA_1)
            int_m[63:32] <= (WDATA[31:0] & wmask) | (int_m[63:32] & ~wmask);
    end
end

// int_r2m[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_r2m[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_R2M_DATA_0)
            int_r2m[31:0] <= (WDATA[31:0] & wmask) | (int_r2m[31:0] & ~wmask);
    end
end

// int_r2m[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_r2m[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_R2M_DATA_1)
            int_r2m[63:32] <= (WDATA[31:0] & wmask) | (int_r2m[63:32] & ~wmask);
    end
end

// int_p[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_p[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_P_DATA_0)
            int_p[31:0] <= (WDATA[31:0] & wmask) | (int_p[31:0] & ~wmask);
    end
end

// int_p[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_p[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_P_DATA_1)
            int_p[63:32] <= (WDATA[31:0] & wmask) | (int_p[63:32] & ~wmask);
    end
end


//------------------------Memory logic-------------------

endmodule
