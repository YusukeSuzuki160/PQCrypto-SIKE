// ==============================================================
// Generated by Vitis HLS v2024.2.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module sikep503_kem_enc_hw_fpadd503_5_Pipeline_VITIS_LOOP_23_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        c_address0,
        c_ce0,
        c_we0,
        c_d0,
        R_X_address0,
        R_X_ce0,
        R_X_q0,
        R_Z_address0,
        R_Z_ce0,
        R_Z_q0
);

parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] c_address0;
output   c_ce0;
output   c_we0;
output  [63:0] c_d0;
output  [3:0] R_X_address0;
output   R_X_ce0;
input  [63:0] R_X_q0;
output  [3:0] R_Z_address0;
output   R_Z_ce0;
input  [63:0] R_Z_q0;

reg ap_idle;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [0:0] icmp_ln23_reg_219;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] carry_reg_87;
wire   [0:0] icmp_ln23_fu_106_p2;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] zext_ln24_fu_122_p1;
reg   [31:0] zext_ln24_reg_223;
reg   [63:0] R_X_load_reg_238;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tempReg_fu_137_p2;
reg   [63:0] tempReg_reg_243;
reg   [63:0] R_Z_load_reg_252;
wire    ap_block_pp0_stage0_subdone;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [3:0] i_fu_44;
wire   [3:0] add_ln23_fu_112_p2;
reg   [3:0] ap_sig_allocacmp_i_216;
reg    R_X_ce0_local;
reg    R_Z_ce0_local;
reg    c_we0_local;
wire   [63:0] add_ln24_fu_143_p2;
reg    c_ce0_local;
wire   [2:0] trunc_ln24_fu_118_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln24_15_fu_133_p1;
wire   [63:0] xor_ln24_fu_148_p2;
wire   [63:0] xor_ln24_19_fu_153_p2;
wire   [0:0] bit_sel_fu_163_p3;
wire   [0:0] xor_ln24_20_fu_170_p2;
wire   [62:0] trunc_ln24_6_fu_176_p1;
wire   [63:0] xor_ln24_s_fu_179_p3;
wire   [63:0] or_ln24_fu_157_p2;
wire   [63:0] xor_ln24_21_fu_192_p2;
wire   [63:0] and_ln24_fu_187_p2;
wire   [63:0] or_ln24_7_fu_198_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_262;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_44 = 4'd0;
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
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter0_stage1) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_262)) begin
            carry_reg_87 <= or_ln24_7_fu_198_p2[32'd63];
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            carry_reg_87 <= 1'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln23_fu_106_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_44 <= add_ln23_fu_112_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_44 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        R_X_load_reg_238 <= R_X_q0;
        R_Z_load_reg_252 <= R_Z_q0;
        tempReg_reg_243 <= tempReg_fu_137_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln23_reg_219 <= icmp_ln23_fu_106_p2;
        zext_ln24_reg_223[2 : 0] <= zext_ln24_fu_122_p1[2 : 0];
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        R_X_ce0_local = 1'b1;
    end else begin
        R_X_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        R_Z_ce0_local = 1'b1;
    end else begin
        R_Z_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln23_reg_219 == 1'd1) & (ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_216 = 4'd0;
    end else begin
        ap_sig_allocacmp_i_216 = i_fu_44;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c_ce0_local = 1'b1;
    end else begin
        c_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln23_reg_219 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c_we0_local = 1'b1;
    end else begin
        c_we0_local = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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

assign R_X_address0 = zext_ln24_fu_122_p1;

assign R_X_ce0 = R_X_ce0_local;

assign R_Z_address0 = zext_ln24_fu_122_p1;

assign R_Z_ce0 = R_Z_ce0_local;

assign add_ln23_fu_112_p2 = (ap_sig_allocacmp_i_216 + 4'd1);

assign add_ln24_fu_143_p2 = (R_Z_load_reg_252 + tempReg_reg_243);

assign and_ln24_fu_187_p2 = (xor_ln24_s_fu_179_p3 & R_X_load_reg_238);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_262 = ((icmp_ln23_reg_219 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_done = ap_done_sig;

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;

assign ap_ready = ap_ready_sig;

assign bit_sel_fu_163_p3 = tempReg_reg_243[64'd63];

assign c_address0 = zext_ln24_reg_223;

assign c_ce0 = c_ce0_local;

assign c_d0 = add_ln24_fu_143_p2;

assign c_we0 = c_we0_local;

assign icmp_ln23_fu_106_p2 = ((ap_sig_allocacmp_i_216 == 4'd8) ? 1'b1 : 1'b0);

assign or_ln24_7_fu_198_p2 = (xor_ln24_21_fu_192_p2 | and_ln24_fu_187_p2);

assign or_ln24_fu_157_p2 = (xor_ln24_fu_148_p2 | xor_ln24_19_fu_153_p2);

assign tempReg_fu_137_p2 = (R_X_q0 + zext_ln24_15_fu_133_p1);

assign trunc_ln24_6_fu_176_p1 = tempReg_reg_243[62:0];

assign trunc_ln24_fu_118_p1 = ap_sig_allocacmp_i_216[2:0];

assign xor_ln24_19_fu_153_p2 = (tempReg_reg_243 ^ R_Z_load_reg_252);

assign xor_ln24_20_fu_170_p2 = (bit_sel_fu_163_p3 ^ 1'd1);

assign xor_ln24_21_fu_192_p2 = (or_ln24_fu_157_p2 ^ add_ln24_fu_143_p2);

assign xor_ln24_fu_148_p2 = (tempReg_reg_243 ^ add_ln24_fu_143_p2);

assign xor_ln24_s_fu_179_p3 = {{xor_ln24_20_fu_170_p2}, {trunc_ln24_6_fu_176_p1}};

assign zext_ln24_15_fu_133_p1 = carry_reg_87;

assign zext_ln24_fu_122_p1 = trunc_ln24_fu_118_p1;

always @ (posedge ap_clk) begin
    zext_ln24_reg_223[31:3] <= 29'b00000000000000000000000000000;
end

endmodule //sikep503_kem_enc_hw_fpadd503_5_Pipeline_VITIS_LOOP_23_1
