// ==============================================================
// Generated by Vitis HLS v2024.2.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module sikep503_kem_enc_hw_fpsub503_144_Pipeline_VITIS_LOOP_47_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        c_offset,
        c_address0,
        c_ce0,
        c_we0,
        c_d0,
        a_offset,
        a_offset2,
        a_address0,
        a_ce0,
        a_q0,
        b_offset,
        b_offset4,
        b_address0,
        b_ce0,
        b_q0,
        borrow_out,
        borrow_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] c_offset;
output  [3:0] c_address0;
output   c_ce0;
output   c_we0;
output  [63:0] c_d0;
input  [2:0] a_offset;
input  [0:0] a_offset2;
output  [6:0] a_address0;
output   a_ce0;
input  [63:0] a_q0;
input  [2:0] b_offset;
input  [0:0] b_offset4;
output  [6:0] b_address0;
output   b_ce0;
input  [63:0] b_q0;
output  [0:0] borrow_out;
output   borrow_out_ap_vld;

reg ap_idle;
reg borrow_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln47_fu_163_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] borrow_reg_142;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln47_reg_316;
reg   [0:0] icmp_ln47_reg_316_pp0_iter1_reg;
wire   [2:0] trunc_ln48_fu_175_p1;
reg   [2:0] trunc_ln48_reg_320;
reg   [2:0] trunc_ln48_reg_320_pp0_iter1_reg;
reg   [63:0] a_load_reg_335;
reg   [63:0] b_load_reg_341;
wire   [63:0] tempReg_fu_214_p2;
reg   [63:0] tempReg_reg_347;
wire   [0:0] borrowReg_fu_288_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [31:0] zext_ln48_15_fu_189_p1;
wire   [31:0] zext_ln48_16_fu_204_p1;
wire   [31:0] zext_ln48_14_fu_226_p1;
reg   [3:0] i_fu_62;
wire   [3:0] add_ln47_fu_169_p2;
reg   [3:0] ap_sig_allocacmp_i_105;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage0_01001;
reg    a_ce0_local;
reg    b_ce0_local;
reg    c_we0_local;
wire   [63:0] sub_ln48_fu_298_p2;
reg    c_ce0_local;
wire   [6:0] tmp_s_fu_179_p4;
wire   [6:0] tmp_511_fu_194_p4;
wire   [3:0] tmp_fu_220_p3;
wire   [63:0] xor_ln105_82_fu_235_p2;
wire   [63:0] xor_ln105_fu_231_p2;
wire   [63:0] or_ln105_fu_239_p2;
wire   [63:0] xor_ln105_83_fu_245_p2;
wire   [63:0] sub_ln95_fu_258_p2;
wire   [63:0] or_ln95_fu_263_p2;
wire   [0:0] tmp_179_fu_268_p3;
wire   [0:0] xor_ln48_fu_276_p2;
wire   [0:0] and_ln48_fu_282_p2;
wire   [0:0] tmp_178_fu_250_p3;
wire   [63:0] zext_ln48_fu_294_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 i_fu_62 = 4'd0;
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
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln47_reg_316_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        borrow_reg_142 <= borrowReg_fu_288_p2;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        borrow_reg_142 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln47_fu_163_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_62 <= add_ln47_fu_169_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_62 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_load_reg_335 <= a_q0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        b_load_reg_341 <= b_q0;
        icmp_ln47_reg_316 <= icmp_ln47_fu_163_p2;
        icmp_ln47_reg_316_pp0_iter1_reg <= icmp_ln47_reg_316;
        tempReg_reg_347 <= tempReg_fu_214_p2;
        trunc_ln48_reg_320 <= trunc_ln48_fu_175_p1;
        trunc_ln48_reg_320_pp0_iter1_reg <= trunc_ln48_reg_320;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_ce0_local = 1'b1;
    end else begin
        a_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln47_fu_163_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln47_reg_316 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_105 = 4'd0;
    end else begin
        ap_sig_allocacmp_i_105 = i_fu_62;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_ce0_local = 1'b1;
    end else begin
        b_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln47_reg_316 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        borrow_out_ap_vld = 1'b1;
    end else begin
        borrow_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        c_ce0_local = 1'b1;
    end else begin
        c_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln47_reg_316_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        c_we0_local = 1'b1;
    end else begin
        c_we0_local = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_address0 = zext_ln48_15_fu_189_p1;

assign a_ce0 = a_ce0_local;

assign add_ln47_fu_169_p2 = (ap_sig_allocacmp_i_105 + 4'd1);

assign and_ln48_fu_282_p2 = (xor_ln48_fu_276_p2 & borrow_reg_142);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_done = ap_done_sig;

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign ap_ready = ap_ready_sig;

assign b_address0 = zext_ln48_16_fu_204_p1;

assign b_ce0 = b_ce0_local;

assign borrowReg_fu_288_p2 = (tmp_178_fu_250_p3 | and_ln48_fu_282_p2);

assign borrow_out = borrow_reg_142;

assign c_address0 = zext_ln48_14_fu_226_p1;

assign c_ce0 = c_ce0_local;

assign c_d0 = sub_ln48_fu_298_p2;

assign c_we0 = c_we0_local;

assign icmp_ln47_fu_163_p2 = ((ap_sig_allocacmp_i_105 == 4'd8) ? 1'b1 : 1'b0);

assign or_ln105_fu_239_p2 = (xor_ln105_fu_231_p2 | xor_ln105_82_fu_235_p2);

assign or_ln95_fu_263_p2 = (tempReg_reg_347 | sub_ln95_fu_258_p2);

assign sub_ln48_fu_298_p2 = (tempReg_reg_347 - zext_ln48_fu_294_p1);

assign sub_ln95_fu_258_p2 = (64'd0 - tempReg_reg_347);

assign tempReg_fu_214_p2 = (a_q0 - b_q0);

assign tmp_178_fu_250_p3 = xor_ln105_83_fu_245_p2[32'd63];

assign tmp_179_fu_268_p3 = or_ln95_fu_263_p2[32'd63];

assign tmp_511_fu_194_p4 = {{{b_offset}, {b_offset4}}, {trunc_ln48_fu_175_p1}};

assign tmp_fu_220_p3 = {{c_offset}, {trunc_ln48_reg_320_pp0_iter1_reg}};

assign tmp_s_fu_179_p4 = {{{a_offset}, {a_offset2}}, {trunc_ln48_fu_175_p1}};

assign trunc_ln48_fu_175_p1 = ap_sig_allocacmp_i_105[2:0];

assign xor_ln105_82_fu_235_p2 = (tempReg_reg_347 ^ b_load_reg_341);

assign xor_ln105_83_fu_245_p2 = (or_ln105_fu_239_p2 ^ a_load_reg_335);

assign xor_ln105_fu_231_p2 = (b_load_reg_341 ^ a_load_reg_335);

assign xor_ln48_fu_276_p2 = (tmp_179_fu_268_p3 ^ 1'd1);

assign zext_ln48_14_fu_226_p1 = tmp_fu_220_p3;

assign zext_ln48_15_fu_189_p1 = tmp_s_fu_179_p4;

assign zext_ln48_16_fu_204_p1 = tmp_511_fu_194_p4;

assign zext_ln48_fu_294_p1 = borrow_reg_142;

endmodule //sikep503_kem_enc_hw_fpsub503_144_Pipeline_VITIS_LOOP_47_1
