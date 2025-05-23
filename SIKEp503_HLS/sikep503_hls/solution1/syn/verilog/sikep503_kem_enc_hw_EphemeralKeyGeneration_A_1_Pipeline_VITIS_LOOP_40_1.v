// ==============================================================
// Generated by Vitis HLS v2024.2.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module sikep503_kem_enc_hw_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_40_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_gmem0_0_AWVALID,
        m_axi_gmem0_0_AWREADY,
        m_axi_gmem0_0_AWADDR,
        m_axi_gmem0_0_AWID,
        m_axi_gmem0_0_AWLEN,
        m_axi_gmem0_0_AWSIZE,
        m_axi_gmem0_0_AWBURST,
        m_axi_gmem0_0_AWLOCK,
        m_axi_gmem0_0_AWCACHE,
        m_axi_gmem0_0_AWPROT,
        m_axi_gmem0_0_AWQOS,
        m_axi_gmem0_0_AWREGION,
        m_axi_gmem0_0_AWUSER,
        m_axi_gmem0_0_WVALID,
        m_axi_gmem0_0_WREADY,
        m_axi_gmem0_0_WDATA,
        m_axi_gmem0_0_WSTRB,
        m_axi_gmem0_0_WLAST,
        m_axi_gmem0_0_WID,
        m_axi_gmem0_0_WUSER,
        m_axi_gmem0_0_ARVALID,
        m_axi_gmem0_0_ARREADY,
        m_axi_gmem0_0_ARADDR,
        m_axi_gmem0_0_ARID,
        m_axi_gmem0_0_ARLEN,
        m_axi_gmem0_0_ARSIZE,
        m_axi_gmem0_0_ARBURST,
        m_axi_gmem0_0_ARLOCK,
        m_axi_gmem0_0_ARCACHE,
        m_axi_gmem0_0_ARPROT,
        m_axi_gmem0_0_ARQOS,
        m_axi_gmem0_0_ARREGION,
        m_axi_gmem0_0_ARUSER,
        m_axi_gmem0_0_RVALID,
        m_axi_gmem0_0_RREADY,
        m_axi_gmem0_0_RDATA,
        m_axi_gmem0_0_RLAST,
        m_axi_gmem0_0_RID,
        m_axi_gmem0_0_RFIFONUM,
        m_axi_gmem0_0_RUSER,
        m_axi_gmem0_0_RRESP,
        m_axi_gmem0_0_BVALID,
        m_axi_gmem0_0_BREADY,
        m_axi_gmem0_0_BRESP,
        m_axi_gmem0_0_BID,
        m_axi_gmem0_0_BUSER,
        PublicKeyA,
        t_i_address0,
        t_i_ce0,
        t_i_q0,
        t_i_address1,
        t_i_ce1,
        t_i_q1
);

parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_gmem0_0_AWVALID;
input   m_axi_gmem0_0_AWREADY;
output  [31:0] m_axi_gmem0_0_AWADDR;
output  [0:0] m_axi_gmem0_0_AWID;
output  [31:0] m_axi_gmem0_0_AWLEN;
output  [2:0] m_axi_gmem0_0_AWSIZE;
output  [1:0] m_axi_gmem0_0_AWBURST;
output  [1:0] m_axi_gmem0_0_AWLOCK;
output  [3:0] m_axi_gmem0_0_AWCACHE;
output  [2:0] m_axi_gmem0_0_AWPROT;
output  [3:0] m_axi_gmem0_0_AWQOS;
output  [3:0] m_axi_gmem0_0_AWREGION;
output  [0:0] m_axi_gmem0_0_AWUSER;
output   m_axi_gmem0_0_WVALID;
input   m_axi_gmem0_0_WREADY;
output  [7:0] m_axi_gmem0_0_WDATA;
output  [0:0] m_axi_gmem0_0_WSTRB;
output   m_axi_gmem0_0_WLAST;
output  [0:0] m_axi_gmem0_0_WID;
output  [0:0] m_axi_gmem0_0_WUSER;
output   m_axi_gmem0_0_ARVALID;
input   m_axi_gmem0_0_ARREADY;
output  [31:0] m_axi_gmem0_0_ARADDR;
output  [0:0] m_axi_gmem0_0_ARID;
output  [31:0] m_axi_gmem0_0_ARLEN;
output  [2:0] m_axi_gmem0_0_ARSIZE;
output  [1:0] m_axi_gmem0_0_ARBURST;
output  [1:0] m_axi_gmem0_0_ARLOCK;
output  [3:0] m_axi_gmem0_0_ARCACHE;
output  [2:0] m_axi_gmem0_0_ARPROT;
output  [3:0] m_axi_gmem0_0_ARQOS;
output  [3:0] m_axi_gmem0_0_ARREGION;
output  [0:0] m_axi_gmem0_0_ARUSER;
input   m_axi_gmem0_0_RVALID;
output   m_axi_gmem0_0_RREADY;
input  [7:0] m_axi_gmem0_0_RDATA;
input   m_axi_gmem0_0_RLAST;
input  [0:0] m_axi_gmem0_0_RID;
input  [10:0] m_axi_gmem0_0_RFIFONUM;
input  [0:0] m_axi_gmem0_0_RUSER;
input  [1:0] m_axi_gmem0_0_RRESP;
input   m_axi_gmem0_0_BVALID;
output   m_axi_gmem0_0_BREADY;
input  [1:0] m_axi_gmem0_0_BRESP;
input  [0:0] m_axi_gmem0_0_BID;
input  [0:0] m_axi_gmem0_0_BUSER;
input  [31:0] PublicKeyA;
output  [3:0] t_i_address0;
output   t_i_ce0;
input  [63:0] t_i_q0;
output  [3:0] t_i_address1;
output   t_i_ce1;
input  [63:0] t_i_q1;

reg ap_idle;
reg m_axi_gmem0_0_AWVALID;
reg[31:0] m_axi_gmem0_0_AWADDR;
reg m_axi_gmem0_0_WVALID;
reg[7:0] m_axi_gmem0_0_WDATA;
reg m_axi_gmem0_0_BREADY;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
reg    ap_block_pp0_stage1_subdone_grp2_done_reg;
reg    ap_block_pp0_stage1_subdone_grp2;
reg    ap_block_pp0_stage1_subdone;
reg    ap_block_pp0_stage1_subdone_grp3_done_reg;
reg    ap_block_pp0_stage1_subdone_grp3;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [0:0] icmp_ln40_reg_266;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    gmem0_blk_n_AW;
wire    ap_block_pp0_stage0_grp1;
reg    ap_block_pp0_stage0_subdone_grp1_done_reg;
reg    ap_block_pp0_stage0_subdone_grp1;
reg    ap_block_pp0_stage0_subdone;
reg    gmem0_blk_n_W;
wire    ap_block_pp0_stage1_grp2;
reg    gmem0_blk_n_B;
wire    ap_block_pp0_stage1_grp3;
wire    ap_block_pp0_stage0_grp4;
reg    ap_block_pp0_stage0_subdone_grp4_done_reg;
reg    ap_block_pp0_stage0_subdone_grp4;
reg    ap_block_pp0_stage0_11001_grp4;
reg   [5:0] i_294_reg_258;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln40_fu_137_p2;
reg   [63:0] t_i_load_reg_280;
wire    ap_block_pp0_stage1_11001_grp0;
reg    ap_block_pp0_stage1_subdone_grp0_done_reg;
wire    ap_block_pp0_stage1_subdone_grp0;
reg   [31:0] gmem0_addr_2_reg_285;
reg    ap_block_pp0_stage1_11001_grp2;
reg   [63:0] t_i_load_2_reg_291;
wire   [63:0] zext_ln42_3_fu_203_p1;
reg   [63:0] zext_ln42_3_reg_296;
wire    ap_block_pp0_stage0_11001_grp0;
reg    ap_block_pp0_stage0_subdone_grp0_done_reg;
wire    ap_block_pp0_stage0_subdone_grp0;
wire   [7:0] trunc_ln42_fu_212_p1;
reg   [7:0] trunc_ln42_reg_301;
reg   [31:0] gmem0_addr_3_reg_306;
wire   [7:0] trunc_ln43_fu_241_p1;
reg   [7:0] trunc_ln43_reg_312;
wire   [31:0] zext_ln42_fu_153_p1;
wire    ap_block_pp0_stage0;
wire   [31:0] zext_ln43_fu_166_p1;
wire   [31:0] add_ln42_fu_179_p2;
wire   [31:0] add_ln43_1_fu_226_p2;
reg    ap_block_pp0_stage0_11001_grp1;
wire    ap_block_pp0_stage1_01001_grp2;
reg    ap_block_pp0_stage1_11001_grp3;
wire    ap_block_pp0_stage0_01001_grp4;
reg   [5:0] i_fu_62;
wire   [5:0] add_ln40_fu_171_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_i_294;
reg    t_i_ce1_local;
reg    t_i_ce0_local;
wire   [2:0] lshr_ln42_fu_143_p4;
wire   [3:0] zext_ln_fu_158_p3;
wire    ap_block_pp0_stage1_grp0;
wire   [31:0] zext_ln36_fu_176_p1;
wire    ap_block_pp0_stage0_grp0;
wire   [5:0] shl_ln42_fu_198_p2;
wire   [63:0] lshr_ln42_2_fu_207_p2;
wire   [6:0] zext_ln40_fu_195_p1;
wire   [6:0] add_ln43_fu_216_p2;
wire   [31:0] zext_ln43_2_fu_222_p1;
wire   [63:0] lshr_ln43_fu_237_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_block_pp0_stage1_11001;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to4;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_482;
reg    ap_condition_486;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_block_pp0_stage1_subdone_grp2_done_reg = 1'b0;
#0 ap_block_pp0_stage1_subdone_grp3_done_reg = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 ap_block_pp0_stage0_subdone_grp1_done_reg = 1'b0;
#0 ap_block_pp0_stage0_subdone_grp4_done_reg = 1'b0;
#0 ap_block_pp0_stage1_subdone_grp0_done_reg = 1'b0;
#0 ap_block_pp0_stage0_subdone_grp0_done_reg = 1'b0;
#0 i_fu_62 = 6'd0;
#0 ap_done_reg = 1'b0;
end

sikep503_kem_enc_hw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready_sig),
    .ap_done(ap_done_sig),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_block_pp0_stage0_subdone_grp0_done_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
                ap_block_pp0_stage0_subdone_grp0_done_reg <= 1'b0;
            end else if ((1'b0 == ap_block_pp0_stage0_subdone_grp0)) begin
                ap_block_pp0_stage0_subdone_grp0_done_reg <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_block_pp0_stage0_subdone_grp1_done_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
                ap_block_pp0_stage0_subdone_grp1_done_reg <= 1'b0;
            end else if ((1'b0 == ap_block_pp0_stage0_subdone_grp1)) begin
                ap_block_pp0_stage0_subdone_grp1_done_reg <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_block_pp0_stage0_subdone_grp4_done_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
                ap_block_pp0_stage0_subdone_grp4_done_reg <= 1'b0;
            end else if ((1'b0 == ap_block_pp0_stage0_subdone_grp4)) begin
                ap_block_pp0_stage0_subdone_grp4_done_reg <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_block_pp0_stage1_subdone_grp0_done_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage1)) begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_block_pp0_stage1_subdone_grp0_done_reg <= 1'b0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone_grp0)) begin
                ap_block_pp0_stage1_subdone_grp0_done_reg <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_block_pp0_stage1_subdone_grp2_done_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage1)) begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_block_pp0_stage1_subdone_grp2_done_reg <= 1'b0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone_grp2)) begin
                ap_block_pp0_stage1_subdone_grp2_done_reg <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_block_pp0_stage1_subdone_grp3_done_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage1)) begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_block_pp0_stage1_subdone_grp3_done_reg <= 1'b0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone_grp3)) begin
                ap_block_pp0_stage1_subdone_grp3_done_reg <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_62 <= 6'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage1_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln40_reg_266 == 1'd0) & (ap_enable_reg_pp0_iter0_reg == 1'b1))) begin
        i_fu_62 <= add_ln40_fu_171_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone_grp2_done_reg) & (1'b0 == ap_block_pp0_stage1_11001_grp2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        gmem0_addr_2_reg_285 <= add_ln42_fu_179_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001_grp4) & (1'b0 == ap_block_pp0_stage0_subdone_grp4_done_reg) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        gmem0_addr_3_reg_306 <= add_ln43_1_fu_226_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_294_reg_258 <= ap_sig_allocacmp_i_294;
        icmp_ln40_reg_266 <= icmp_ln40_fu_137_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage1_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0_reg == 1'b1))) begin
        t_i_load_2_reg_291 <= t_i_q0;
        t_i_load_reg_280 <= t_i_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln42_reg_301 <= trunc_ln42_fu_212_p1;
        zext_ln42_3_reg_296[5 : 0] <= zext_ln42_3_fu_203_p1[5 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone_grp0_done_reg) & (1'b0 == ap_block_pp0_stage1_11001_grp0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        trunc_ln43_reg_312 <= trunc_ln43_fu_241_p1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln40_reg_266 == 1'd1) & (ap_enable_reg_pp0_iter0_reg == 1'b1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0_reg == 1'b1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_294 = 6'd0;
    end else begin
        ap_sig_allocacmp_i_294 = i_fu_62;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_grp3) & (1'b0 == ap_block_pp0_stage1_subdone_grp3_done_reg) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (1'b0 == ap_block_pp0_stage0_grp1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        gmem0_blk_n_AW = m_axi_gmem0_0_AWREADY;
    end else begin
        gmem0_blk_n_AW = 1'b1;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_grp3) & (1'b0 == ap_block_pp0_stage1_subdone_grp3_done_reg) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (1'b0 == ap_block_pp0_stage0_grp1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        gmem0_blk_n_B = m_axi_gmem0_0_BVALID;
    end else begin
        gmem0_blk_n_B = 1'b1;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_subdone_grp4_done_reg) & (1'b0 == ap_block_pp0_stage0_grp4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_subdone_grp2_done_reg) & (1'b0 == ap_block_pp0_stage1_grp2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        gmem0_blk_n_W = m_axi_gmem0_0_WREADY;
    end else begin
        gmem0_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_486)) begin
            m_axi_gmem0_0_AWADDR = gmem0_addr_3_reg_306;
        end else if ((1'b1 == ap_condition_482)) begin
            m_axi_gmem0_0_AWADDR = gmem0_addr_2_reg_285;
        end else begin
            m_axi_gmem0_0_AWADDR = 'bx;
        end
    end else begin
        m_axi_gmem0_0_AWADDR = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001_grp3) & (1'b0 == ap_block_pp0_stage1_subdone_grp3_done_reg) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001_grp1) & (1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        m_axi_gmem0_0_AWVALID = 1'b1;
    end else begin
        m_axi_gmem0_0_AWVALID = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001_grp3) & (1'b0 == ap_block_pp0_stage1_subdone_grp3_done_reg) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001_grp1) & (1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        m_axi_gmem0_0_BREADY = 1'b1;
    end else begin
        m_axi_gmem0_0_BREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001_grp4) & (1'b0 == ap_block_pp0_stage0_subdone_grp4_done_reg) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_axi_gmem0_0_WDATA = trunc_ln43_reg_312;
    end else if (((1'b0 == ap_block_pp0_stage1_subdone_grp2_done_reg) & (1'b0 == ap_block_pp0_stage1_01001_grp2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m_axi_gmem0_0_WDATA = trunc_ln42_reg_301;
    end else begin
        m_axi_gmem0_0_WDATA = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001_grp4) & (1'b0 == ap_block_pp0_stage0_subdone_grp4_done_reg) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_subdone_grp2_done_reg) & (1'b0 == ap_block_pp0_stage1_11001_grp2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        m_axi_gmem0_0_WVALID = 1'b1;
    end else begin
        m_axi_gmem0_0_WVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        t_i_ce0_local = 1'b1;
    end else begin
        t_i_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        t_i_ce1_local = 1'b1;
    end else begin
        t_i_ce1_local = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln40_fu_171_p2 = (i_294_reg_258 + 6'd1);

assign add_ln42_fu_179_p2 = (zext_ln36_fu_176_p1 + PublicKeyA);

assign add_ln43_1_fu_226_p2 = (zext_ln43_2_fu_222_p1 + PublicKeyA);

assign add_ln43_fu_216_p2 = (zext_ln40_fu_195_p1 + 7'd63);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001_grp4 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((1'b0 == ap_block_pp0_stage0_subdone_grp4_done_reg) & (m_axi_gmem0_0_WREADY == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (m_axi_gmem0_0_BVALID == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (m_axi_gmem0_0_AWREADY == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

assign ap_block_pp0_stage0_11001_grp0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001_grp1 = (((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (m_axi_gmem0_0_BVALID == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (m_axi_gmem0_0_AWREADY == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_grp4 = ((1'b0 == ap_block_pp0_stage0_subdone_grp4_done_reg) & (m_axi_gmem0_0_WREADY == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1));
end

assign ap_block_pp0_stage0_grp0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_grp1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_grp4 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((1'b0 == ap_block_pp0_stage0_subdone_grp4_done_reg) & (m_axi_gmem0_0_WREADY == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (m_axi_gmem0_0_BVALID == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (m_axi_gmem0_0_AWREADY == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

assign ap_block_pp0_stage0_subdone_grp0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_subdone_grp1 = (((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (m_axi_gmem0_0_BVALID == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (m_axi_gmem0_0_AWREADY == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone_grp4 = ((1'b0 == ap_block_pp0_stage0_subdone_grp4_done_reg) & (m_axi_gmem0_0_WREADY == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1));
end

assign ap_block_pp0_stage1_01001_grp2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_11001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & (((1'b0 == ap_block_pp0_stage1_subdone_grp3_done_reg) & (m_axi_gmem0_0_AWREADY == 1'b0)) | ((1'b0 == ap_block_pp0_stage1_subdone_grp2_done_reg) & (m_axi_gmem0_0_WREADY == 1'b0)))) | ((1'b0 == ap_block_pp0_stage1_subdone_grp3_done_reg) & (m_axi_gmem0_0_BVALID == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1)));
end

assign ap_block_pp0_stage1_11001_grp0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_11001_grp2 = ((1'b0 == ap_block_pp0_stage1_subdone_grp2_done_reg) & (m_axi_gmem0_0_WREADY == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage1_11001_grp3 = (((1'b0 == ap_block_pp0_stage1_subdone_grp3_done_reg) & (m_axi_gmem0_0_BVALID == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((1'b0 == ap_block_pp0_stage1_subdone_grp3_done_reg) & (m_axi_gmem0_0_AWREADY == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

assign ap_block_pp0_stage1_grp0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_grp2 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_grp3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_subdone = (((ap_enable_reg_pp0_iter1 == 1'b1) & (((1'b0 == ap_block_pp0_stage1_subdone_grp3_done_reg) & (m_axi_gmem0_0_AWREADY == 1'b0)) | ((1'b0 == ap_block_pp0_stage1_subdone_grp2_done_reg) & (m_axi_gmem0_0_WREADY == 1'b0)))) | ((1'b0 == ap_block_pp0_stage1_subdone_grp3_done_reg) & (m_axi_gmem0_0_BVALID == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1)));
end

assign ap_block_pp0_stage1_subdone_grp0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_subdone_grp2 = ((1'b0 == ap_block_pp0_stage1_subdone_grp2_done_reg) & (m_axi_gmem0_0_WREADY == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage1_subdone_grp3 = (((1'b0 == ap_block_pp0_stage1_subdone_grp3_done_reg) & (m_axi_gmem0_0_BVALID == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((1'b0 == ap_block_pp0_stage1_subdone_grp3_done_reg) & (m_axi_gmem0_0_AWREADY == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_condition_482 = ((1'b0 == ap_block_pp0_stage0_11001_grp1) & (1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_486 = ((1'b0 == ap_block_pp0_stage1_11001_grp3) & (1'b0 == ap_block_pp0_stage1_subdone_grp3_done_reg) & (1'b1 == ap_CS_fsm_pp0_stage1));
end

assign ap_done = ap_done_sig;

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;

assign ap_ready = ap_ready_sig;

assign icmp_ln40_fu_137_p2 = ((ap_sig_allocacmp_i_294 == 6'd63) ? 1'b1 : 1'b0);

assign lshr_ln42_2_fu_207_p2 = t_i_load_reg_280 >> zext_ln42_3_fu_203_p1;

assign lshr_ln42_fu_143_p4 = {{ap_sig_allocacmp_i_294[5:3]}};

assign lshr_ln43_fu_237_p2 = t_i_load_2_reg_291 >> zext_ln42_3_reg_296;

assign m_axi_gmem0_0_ARADDR = 32'd0;

assign m_axi_gmem0_0_ARBURST = 2'd0;

assign m_axi_gmem0_0_ARCACHE = 4'd0;

assign m_axi_gmem0_0_ARID = 1'd0;

assign m_axi_gmem0_0_ARLEN = 32'd0;

assign m_axi_gmem0_0_ARLOCK = 2'd0;

assign m_axi_gmem0_0_ARPROT = 3'd0;

assign m_axi_gmem0_0_ARQOS = 4'd0;

assign m_axi_gmem0_0_ARREGION = 4'd0;

assign m_axi_gmem0_0_ARSIZE = 3'd0;

assign m_axi_gmem0_0_ARUSER = 1'd0;

assign m_axi_gmem0_0_ARVALID = 1'b0;

assign m_axi_gmem0_0_AWBURST = 2'd0;

assign m_axi_gmem0_0_AWCACHE = 4'd0;

assign m_axi_gmem0_0_AWID = 1'd0;

assign m_axi_gmem0_0_AWLEN = 32'd1;

assign m_axi_gmem0_0_AWLOCK = 2'd0;

assign m_axi_gmem0_0_AWPROT = 3'd0;

assign m_axi_gmem0_0_AWQOS = 4'd0;

assign m_axi_gmem0_0_AWREGION = 4'd0;

assign m_axi_gmem0_0_AWSIZE = 3'd0;

assign m_axi_gmem0_0_AWUSER = 1'd0;

assign m_axi_gmem0_0_RREADY = 1'b0;

assign m_axi_gmem0_0_WID = 1'd0;

assign m_axi_gmem0_0_WLAST = 1'b0;

assign m_axi_gmem0_0_WSTRB = 1'd1;

assign m_axi_gmem0_0_WUSER = 1'd0;

assign shl_ln42_fu_198_p2 = i_294_reg_258 << 6'd3;

assign t_i_address0 = zext_ln43_fu_166_p1;

assign t_i_address1 = zext_ln42_fu_153_p1;

assign t_i_ce0 = t_i_ce0_local;

assign t_i_ce1 = t_i_ce1_local;

assign trunc_ln42_fu_212_p1 = lshr_ln42_2_fu_207_p2[7:0];

assign trunc_ln43_fu_241_p1 = lshr_ln43_fu_237_p2[7:0];

assign zext_ln36_fu_176_p1 = i_294_reg_258;

assign zext_ln40_fu_195_p1 = i_294_reg_258;

assign zext_ln42_3_fu_203_p1 = shl_ln42_fu_198_p2;

assign zext_ln42_fu_153_p1 = lshr_ln42_fu_143_p4;

assign zext_ln43_2_fu_222_p1 = add_ln43_fu_216_p2;

assign zext_ln43_fu_166_p1 = zext_ln_fu_158_p3;

assign zext_ln_fu_158_p3 = {{1'd1}, {lshr_ln42_fu_143_p4}};

always @ (posedge ap_clk) begin
    zext_ln42_3_reg_296[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end

endmodule //sikep503_kem_enc_hw_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_40_1
