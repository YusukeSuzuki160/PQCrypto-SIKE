// ==============================================================
// Generated by Vitis HLS v2024.2.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module sikep503_kem_enc_hw_fp2_decode_1_Pipeline_VITIS_LOOP_51_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        PKB_address0,
        PKB_ce0,
        PKB_we0,
        PKB_d0
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] PKB_address0;
output   PKB_ce0;
output  [7:0] PKB_we0;
output  [63:0] PKB_d0;

reg ap_idle;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln51_fu_62_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] zext_ln52_2_fu_99_p1;
reg   [7:0] i_fu_38;
wire   [7:0] add_ln51_fu_68_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_i_274;
reg    PKB_ce0_local;
reg   [7:0] PKB_we0_local;
wire   [7:0] shl_ln52_fu_82_p2;
wire   [2:0] trunc_ln52_fu_74_p1;
wire   [7:0] zext_ln52_fu_78_p1;
wire   [3:0] lshr_ln_fu_89_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 i_fu_38 = 8'd0;
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
        ap_CS_fsm <= ap_ST_fsm_state1;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((icmp_ln51_fu_62_p2 == 1'd0)) begin
            i_fu_38 <= add_ln51_fu_68_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_38 <= 8'd0;
        end
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        PKB_ce0_local = 1'b1;
    end else begin
        PKB_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln51_fu_62_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        PKB_we0_local = shl_ln52_fu_82_p2;
    end else begin
        PKB_we0_local = 8'd0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_block_state1_pp0_stage0_iter0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln51_fu_62_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_i_274 = 8'd0;
    end else begin
        ap_sig_allocacmp_i_274 = i_fu_38;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign PKB_address0 = zext_ln52_2_fu_99_p1;

assign PKB_ce0 = PKB_ce0_local;

assign PKB_d0 = 64'd0;

assign PKB_we0 = PKB_we0_local;

assign add_ln51_fu_68_p2 = (ap_sig_allocacmp_i_274 + 8'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

assign ap_done = ap_done_sig;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign ap_ready = ap_ready_sig;

assign icmp_ln51_fu_62_p2 = ((ap_sig_allocacmp_i_274 == 8'd128) ? 1'b1 : 1'b0);

assign lshr_ln_fu_89_p4 = {{ap_sig_allocacmp_i_274[6:3]}};

assign shl_ln52_fu_82_p2 = 8'd1 << zext_ln52_fu_78_p1;

assign trunc_ln52_fu_74_p1 = ap_sig_allocacmp_i_274[2:0];

assign zext_ln52_2_fu_99_p1 = lshr_ln_fu_89_p4;

assign zext_ln52_fu_78_p1 = trunc_ln52_fu_74_p1;

endmodule //sikep503_kem_enc_hw_fp2_decode_1_Pipeline_VITIS_LOOP_51_1
