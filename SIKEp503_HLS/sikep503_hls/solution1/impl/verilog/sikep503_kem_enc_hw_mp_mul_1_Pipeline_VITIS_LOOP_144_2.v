// ==============================================================
// Generated by Vitis HLS v2024.2.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module sikep503_kem_enc_hw_mp_mul_1_Pipeline_VITIS_LOOP_144_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        v_017,
        zext_ln143,
        indvars_iv31,
        a_address0,
        a_ce0,
        a_q0,
        i,
        R_X_address0,
        R_X_ce0,
        R_X_q0,
        v_114_out,
        v_114_out_ap_vld,
        u_92_out_i,
        u_92_out_o,
        u_92_out_o_ap_vld,
        t_out_i,
        t_out_o,
        t_out_o_ap_vld,
        grp_fu_422_p_din0,
        grp_fu_422_p_din1,
        grp_fu_422_p_dout0,
        grp_fu_422_p_ce,
        grp_fu_426_p_din0,
        grp_fu_426_p_din1,
        grp_fu_426_p_dout0,
        grp_fu_426_p_ce,
        grp_fu_430_p_din0,
        grp_fu_430_p_din1,
        grp_fu_430_p_dout0,
        grp_fu_430_p_ce,
        grp_fu_434_p_din0,
        grp_fu_434_p_din1,
        grp_fu_434_p_dout0,
        grp_fu_434_p_ce
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] v_017;
input  [3:0] zext_ln143;
input  [3:0] indvars_iv31;
output  [2:0] a_address0;
output   a_ce0;
input  [63:0] a_q0;
input  [2:0] i;
output  [3:0] R_X_address0;
output   R_X_ce0;
input  [63:0] R_X_q0;
output  [63:0] v_114_out;
output   v_114_out_ap_vld;
input  [63:0] u_92_out_i;
output  [63:0] u_92_out_o;
output   u_92_out_o_ap_vld;
input  [3:0] t_out_i;
output  [3:0] t_out_o;
output   t_out_o_ap_vld;
output  [31:0] grp_fu_422_p_din0;
output  [31:0] grp_fu_422_p_din1;
input  [63:0] grp_fu_422_p_dout0;
output   grp_fu_422_p_ce;
output  [31:0] grp_fu_426_p_din0;
output  [31:0] grp_fu_426_p_din1;
input  [63:0] grp_fu_426_p_dout0;
output   grp_fu_426_p_ce;
output  [31:0] grp_fu_430_p_din0;
output  [31:0] grp_fu_430_p_din1;
input  [63:0] grp_fu_430_p_dout0;
output   grp_fu_430_p_ce;
output  [31:0] grp_fu_434_p_din0;
output  [31:0] grp_fu_434_p_din1;
input  [63:0] grp_fu_434_p_dout0;
output   grp_fu_434_p_ce;

reg ap_idle;
reg v_114_out_ap_vld;
reg[63:0] u_92_out_o;
reg u_92_out_o_ap_vld;
reg[3:0] t_out_o;
reg t_out_o_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln144_fu_196_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] i_cast_fu_163_p1;
reg   [3:0] i_cast_reg_691;
reg   [3:0] j_31_reg_696;
reg   [0:0] icmp_ln144_reg_702;
reg   [0:0] icmp_ln144_reg_702_pp0_iter1_reg;
reg   [0:0] icmp_ln144_reg_702_pp0_iter2_reg;
reg   [0:0] icmp_ln144_reg_702_pp0_iter3_reg;
reg   [0:0] icmp_ln144_reg_702_pp0_iter4_reg;
reg   [0:0] icmp_ln144_reg_702_pp0_iter5_reg;
reg   [0:0] icmp_ln144_reg_702_pp0_iter6_reg;
reg   [0:0] icmp_ln144_reg_702_pp0_iter7_reg;
wire   [31:0] al_fu_260_p1;
reg   [31:0] al_reg_716;
wire   [31:0] bl_fu_264_p1;
reg   [31:0] bl_reg_721;
reg   [31:0] ah_reg_726;
reg   [31:0] bh_reg_731;
wire   [63:0] zext_ln105_fu_288_p1;
wire   [63:0] zext_ln110_fu_293_p1;
wire   [63:0] zext_ln105_119_fu_298_p1;
wire   [63:0] zext_ln112_fu_303_p1;
wire   [31:0] trunc_ln106_fu_308_p1;
reg   [31:0] trunc_ln106_reg_760;
reg   [31:0] trunc_ln106_reg_760_pp0_iter5_reg;
reg   [31:0] trunc_ln106_reg_760_pp0_iter6_reg;
wire   [31:0] trunc_ln106_177_fu_312_p1;
reg   [31:0] trunc_ln106_177_reg_765;
wire   [31:0] trunc_ln106_178_fu_316_p1;
reg   [31:0] trunc_ln106_178_reg_770;
wire   [31:0] trunc_ln106_179_fu_320_p1;
reg   [31:0] trunc_ln106_179_reg_775;
reg   [31:0] trunc_ln106_179_reg_775_pp0_iter5_reg;
reg   [31:0] tmp_310_reg_781;
reg   [31:0] tmp_312_reg_786;
reg   [31:0] tmp_312_reg_786_pp0_iter5_reg;
reg   [31:0] tmp_313_reg_792;
reg   [31:0] tmp_313_reg_792_pp0_iter5_reg;
reg   [31:0] tmp_314_reg_797;
reg   [31:0] tmp_314_reg_797_pp0_iter5_reg;
reg   [31:0] tmp_314_reg_797_pp0_iter6_reg;
reg   [1:0] tmp_311_reg_802;
wire   [31:0] trunc_ln125_fu_399_p1;
reg   [31:0] trunc_ln125_reg_807;
reg   [31:0] trunc_ln125_reg_807_pp0_iter6_reg;
wire   [31:0] add_ln105_fu_443_p2;
reg   [31:0] add_ln105_reg_813;
reg   [1:0] tmp_315_reg_818;
wire   [63:0] add_ln133_fu_493_p2;
reg   [63:0] add_ln133_reg_823;
reg   [63:0] add_ln133_reg_823_pp0_iter8_reg;
wire   [63:0] tempReg_fu_564_p2;
reg   [63:0] tempReg_reg_828;
reg   [63:0] tempReg_reg_828_pp0_iter8_reg;
reg   [63:0] u_92_out_load_reg_837;
wire   [63:0] v_fu_579_p2;
reg   [63:0] v_reg_842;
wire   [31:0] zext_ln145_19_fu_216_p1;
wire    ap_block_pp0_stage0;
wire   [31:0] zext_ln145_20_fu_255_p1;
wire   [63:0] zext_ln143_cast_fu_167_p1;
wire    ap_loop_init;
wire   [3:0] u_fu_660_p2;
reg   [63:0] v_114_fu_82;
wire   [63:0] v_159_fu_505_p2;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg   [3:0] j_fu_86;
wire   [3:0] add_ln144_fu_202_p2;
reg   [3:0] ap_sig_allocacmp_j_31;
wire    ap_block_pp0_stage0_01001;
reg    a_ce0_local;
reg    R_X_ce0_local;
wire   [2:0] trunc_ln145_fu_213_p1;
wire   [3:0] sub_ln145_fu_221_p2;
wire   [6:0] zext_ln145_fu_225_p1;
wire   [0:0] bit_sel1_fu_229_p3;
wire   [0:0] xor_ln145_fu_237_p2;
wire   [2:0] trunc_ln145_21_fu_243_p1;
wire   [3:0] xor_ln_fu_247_p3;
wire   [32:0] zext_ln123_fu_367_p1;
wire   [32:0] zext_ln123_109_fu_370_p1;
wire   [32:0] add_ln123_fu_373_p2;
wire   [33:0] zext_ln123_110_fu_379_p1;
wire   [33:0] zext_ln106_fu_364_p1;
wire   [33:0] temp_fu_383_p2;
wire   [32:0] zext_ln130_fu_412_p1;
wire   [32:0] zext_ln106_143_fu_406_p1;
wire   [32:0] add_ln130_fu_419_p2;
wire   [32:0] zext_ln106_144_fu_409_p1;
wire   [32:0] zext_ln106_142_fu_403_p1;
wire   [32:0] add_ln130_137_fu_429_p2;
wire   [31:0] trunc_ln130_fu_435_p1;
wire   [31:0] add_ln130_136_fu_415_p2;
wire   [33:0] zext_ln130_110_fu_439_p1;
wire   [33:0] zext_ln130_109_fu_425_p1;
wire   [33:0] temp_58_fu_449_p2;
wire   [33:0] and_ln133_s_fu_482_p3;
wire   [63:0] zext_ln133_fu_489_p1;
wire   [63:0] and_ln_fu_475_p3;
wire   [63:0] or_ln_fu_499_p3;
wire   [63:0] shl_ln_fu_468_p3;
wire   [63:0] xor_ln105_fu_511_p2;
wire   [63:0] xor_ln105_56_fu_517_p2;
wire   [63:0] or_ln105_fu_523_p2;
wire   [63:0] xor_ln105_57_fu_529_p2;
wire   [0:0] carry_fu_535_p3;
wire   [31:0] tmp_s_fu_547_p4;
wire   [63:0] or_ln26_fu_557_p3;
wire   [63:0] zext_ln105_120_fu_543_p1;
wire   [63:0] xor_ln147_fu_594_p2;
wire   [63:0] xor_ln147_34_fu_598_p2;
wire   [0:0] bit_sel_fu_608_p3;
wire   [0:0] xor_ln147_35_fu_615_p2;
wire   [62:0] trunc_ln147_fu_621_p1;
wire   [63:0] xor_ln147_s_fu_624_p3;
wire   [63:0] or_ln147_fu_602_p2;
wire   [63:0] xor_ln147_36_fu_637_p2;
wire   [63:0] and_ln147_fu_632_p2;
wire   [63:0] or_ln147_16_fu_642_p2;
wire   [0:0] tmp_fu_648_p3;
wire   [3:0] zext_ln148_fu_656_p1;
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
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 v_114_fu_82 = 64'd0;
#0 j_fu_86 = 4'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln144_fu_196_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_86 <= add_ln144_fu_202_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_86 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v_114_fu_82 <= v_017;
        end else if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
            v_114_fu_82 <= v_159_fu_505_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln105_reg_813 <= add_ln105_fu_443_p2;
        add_ln133_reg_823[63 : 32] <= add_ln133_fu_493_p2[63 : 32];
        add_ln133_reg_823_pp0_iter8_reg[63 : 32] <= add_ln133_reg_823[63 : 32];
        ah_reg_726 <= {{a_q0[63:32]}};
        al_reg_716 <= al_fu_260_p1;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        bh_reg_731 <= {{R_X_q0[63:32]}};
        bl_reg_721 <= bl_fu_264_p1;
        icmp_ln144_reg_702_pp0_iter2_reg <= icmp_ln144_reg_702_pp0_iter1_reg;
        icmp_ln144_reg_702_pp0_iter3_reg <= icmp_ln144_reg_702_pp0_iter2_reg;
        icmp_ln144_reg_702_pp0_iter4_reg <= icmp_ln144_reg_702_pp0_iter3_reg;
        icmp_ln144_reg_702_pp0_iter5_reg <= icmp_ln144_reg_702_pp0_iter4_reg;
        icmp_ln144_reg_702_pp0_iter6_reg <= icmp_ln144_reg_702_pp0_iter5_reg;
        icmp_ln144_reg_702_pp0_iter7_reg <= icmp_ln144_reg_702_pp0_iter6_reg;
        tempReg_reg_828 <= tempReg_fu_564_p2;
        tempReg_reg_828_pp0_iter8_reg <= tempReg_reg_828;
        tmp_310_reg_781 <= {{grp_fu_422_p_dout0[63:32]}};
        tmp_311_reg_802 <= {{temp_fu_383_p2[33:32]}};
        tmp_312_reg_786 <= {{grp_fu_430_p_dout0[63:32]}};
        tmp_312_reg_786_pp0_iter5_reg <= tmp_312_reg_786;
        tmp_313_reg_792 <= {{grp_fu_426_p_dout0[63:32]}};
        tmp_313_reg_792_pp0_iter5_reg <= tmp_313_reg_792;
        tmp_314_reg_797 <= {{grp_fu_434_p_dout0[63:32]}};
        tmp_314_reg_797_pp0_iter5_reg <= tmp_314_reg_797;
        tmp_314_reg_797_pp0_iter6_reg <= tmp_314_reg_797_pp0_iter5_reg;
        tmp_315_reg_818 <= {{temp_58_fu_449_p2[33:32]}};
        trunc_ln106_177_reg_765 <= trunc_ln106_177_fu_312_p1;
        trunc_ln106_178_reg_770 <= trunc_ln106_178_fu_316_p1;
        trunc_ln106_179_reg_775 <= trunc_ln106_179_fu_320_p1;
        trunc_ln106_179_reg_775_pp0_iter5_reg <= trunc_ln106_179_reg_775;
        trunc_ln106_reg_760 <= trunc_ln106_fu_308_p1;
        trunc_ln106_reg_760_pp0_iter5_reg <= trunc_ln106_reg_760;
        trunc_ln106_reg_760_pp0_iter6_reg <= trunc_ln106_reg_760_pp0_iter5_reg;
        trunc_ln125_reg_807 <= trunc_ln125_fu_399_p1;
        trunc_ln125_reg_807_pp0_iter6_reg <= trunc_ln125_reg_807;
        u_92_out_load_reg_837 <= u_92_out_i;
        v_reg_842 <= v_fu_579_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        i_cast_reg_691[2 : 0] <= i_cast_fu_163_p1[2 : 0];
        icmp_ln144_reg_702 <= icmp_ln144_fu_196_p2;
        icmp_ln144_reg_702_pp0_iter1_reg <= icmp_ln144_reg_702;
        j_31_reg_696 <= ap_sig_allocacmp_j_31;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        R_X_ce0_local = 1'b1;
    end else begin
        R_X_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_ce0_local = 1'b1;
    end else begin
        a_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln144_fu_196_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_31 = 4'd0;
    end else begin
        ap_sig_allocacmp_j_31 = j_fu_86;
    end
end

always @ (*) begin
    if ((1'b0 == ap_block_pp0_stage0)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            t_out_o = 4'd0;
        end else if ((ap_enable_reg_pp0_iter9 == 1'b1)) begin
            t_out_o = u_fu_660_p2;
        end else begin
            t_out_o = t_out_i;
        end
    end else begin
        t_out_o = t_out_i;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        t_out_o_ap_vld = 1'b1;
    end else begin
        t_out_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ap_block_pp0_stage0)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            u_92_out_o = zext_ln143_cast_fu_167_p1;
        end else if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
            u_92_out_o = v_fu_579_p2;
        end else begin
            u_92_out_o = u_92_out_i;
        end
    end else begin
        u_92_out_o = u_92_out_i;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1)))) begin
        u_92_out_o_ap_vld = 1'b1;
    end else begin
        u_92_out_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln144_reg_702_pp0_iter7_reg == 1'd1))) begin
        v_114_out_ap_vld = 1'b1;
    end else begin
        v_114_out_ap_vld = 1'b0;
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

assign R_X_address0 = zext_ln145_20_fu_255_p1;

assign R_X_ce0 = R_X_ce0_local;

assign a_address0 = zext_ln145_19_fu_216_p1;

assign a_ce0 = a_ce0_local;

assign add_ln105_fu_443_p2 = (trunc_ln130_fu_435_p1 + add_ln130_136_fu_415_p2);

assign add_ln123_fu_373_p2 = (zext_ln123_fu_367_p1 + zext_ln123_109_fu_370_p1);

assign add_ln130_136_fu_415_p2 = (trunc_ln106_179_reg_775_pp0_iter5_reg + tmp_312_reg_786_pp0_iter5_reg);

assign add_ln130_137_fu_429_p2 = (zext_ln106_144_fu_409_p1 + zext_ln106_142_fu_403_p1);

assign add_ln130_fu_419_p2 = (zext_ln130_fu_412_p1 + zext_ln106_143_fu_406_p1);

assign add_ln133_fu_493_p2 = (zext_ln133_fu_489_p1 + and_ln_fu_475_p3);

assign add_ln144_fu_202_p2 = (ap_sig_allocacmp_j_31 + 4'd1);

assign al_fu_260_p1 = a_q0[31:0];

assign and_ln133_s_fu_482_p3 = {{tmp_315_reg_818}, {32'd0}};

assign and_ln147_fu_632_p2 = (xor_ln147_s_fu_624_p3 & add_ln133_reg_823_pp0_iter8_reg);

assign and_ln_fu_475_p3 = {{tmp_314_reg_797_pp0_iter6_reg}, {32'd0}};

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

assign bit_sel1_fu_229_p3 = zext_ln145_fu_225_p1[7'd3];

assign bit_sel_fu_608_p3 = tempReg_reg_828_pp0_iter8_reg[64'd63];

assign bl_fu_264_p1 = R_X_q0[31:0];

assign carry_fu_535_p3 = xor_ln105_57_fu_529_p2[32'd63];

assign grp_fu_422_p_ce = 1'b1;

assign grp_fu_422_p_din0 = zext_ln105_119_fu_298_p1;

assign grp_fu_422_p_din1 = zext_ln105_fu_288_p1;

assign grp_fu_426_p_ce = 1'b1;

assign grp_fu_426_p_din0 = zext_ln112_fu_303_p1;

assign grp_fu_426_p_din1 = zext_ln105_fu_288_p1;

assign grp_fu_430_p_ce = 1'b1;

assign grp_fu_430_p_din0 = zext_ln105_119_fu_298_p1;

assign grp_fu_430_p_din1 = zext_ln110_fu_293_p1;

assign grp_fu_434_p_ce = 1'b1;

assign grp_fu_434_p_din0 = zext_ln112_fu_303_p1;

assign grp_fu_434_p_din1 = zext_ln110_fu_293_p1;

assign i_cast_fu_163_p1 = i;

assign icmp_ln144_fu_196_p2 = ((ap_sig_allocacmp_j_31 == indvars_iv31) ? 1'b1 : 1'b0);

assign or_ln105_fu_523_p2 = (xor_ln105_fu_511_p2 | xor_ln105_56_fu_517_p2);

assign or_ln147_16_fu_642_p2 = (xor_ln147_36_fu_637_p2 | and_ln147_fu_632_p2);

assign or_ln147_fu_602_p2 = (xor_ln147_fu_594_p2 | xor_ln147_34_fu_598_p2);

assign or_ln26_fu_557_p3 = {{tmp_s_fu_547_p4}, {add_ln105_reg_813}};

assign or_ln_fu_499_p3 = {{trunc_ln125_reg_807_pp0_iter6_reg}, {trunc_ln106_reg_760_pp0_iter6_reg}};

assign shl_ln_fu_468_p3 = {{trunc_ln125_reg_807_pp0_iter6_reg}, {32'd0}};

assign sub_ln145_fu_221_p2 = (i_cast_reg_691 - j_31_reg_696);

assign tempReg_fu_564_p2 = (or_ln26_fu_557_p3 + zext_ln105_120_fu_543_p1);

assign temp_58_fu_449_p2 = (zext_ln130_110_fu_439_p1 + zext_ln130_109_fu_425_p1);

assign temp_fu_383_p2 = (zext_ln123_110_fu_379_p1 + zext_ln106_fu_364_p1);

assign tmp_fu_648_p3 = or_ln147_16_fu_642_p2[32'd63];

assign tmp_s_fu_547_p4 = {{add_ln133_fu_493_p2[63:32]}};

assign trunc_ln106_177_fu_312_p1 = grp_fu_426_p_dout0[31:0];

assign trunc_ln106_178_fu_316_p1 = grp_fu_430_p_dout0[31:0];

assign trunc_ln106_179_fu_320_p1 = grp_fu_434_p_dout0[31:0];

assign trunc_ln106_fu_308_p1 = grp_fu_422_p_dout0[31:0];

assign trunc_ln125_fu_399_p1 = temp_fu_383_p2[31:0];

assign trunc_ln130_fu_435_p1 = add_ln130_137_fu_429_p2[31:0];

assign trunc_ln145_21_fu_243_p1 = sub_ln145_fu_221_p2[2:0];

assign trunc_ln145_fu_213_p1 = j_31_reg_696[2:0];

assign trunc_ln147_fu_621_p1 = tempReg_reg_828_pp0_iter8_reg[62:0];

assign u_fu_660_p2 = (zext_ln148_fu_656_p1 + t_out_i);

assign v_114_out = v_114_fu_82;

assign v_159_fu_505_p2 = (or_ln_fu_499_p3 + v_114_fu_82);

assign v_fu_579_p2 = (tempReg_reg_828 + u_92_out_i);

assign xor_ln105_56_fu_517_p2 = (v_114_fu_82 ^ shl_ln_fu_468_p3);

assign xor_ln105_57_fu_529_p2 = (v_159_fu_505_p2 ^ or_ln105_fu_523_p2);

assign xor_ln105_fu_511_p2 = (v_159_fu_505_p2 ^ shl_ln_fu_468_p3);

assign xor_ln145_fu_237_p2 = (bit_sel1_fu_229_p3 ^ 1'd1);

assign xor_ln147_34_fu_598_p2 = (u_92_out_load_reg_837 ^ tempReg_reg_828_pp0_iter8_reg);

assign xor_ln147_35_fu_615_p2 = (bit_sel_fu_608_p3 ^ 1'd1);

assign xor_ln147_36_fu_637_p2 = (v_reg_842 ^ or_ln147_fu_602_p2);

assign xor_ln147_fu_594_p2 = (v_reg_842 ^ tempReg_reg_828_pp0_iter8_reg);

assign xor_ln147_s_fu_624_p3 = {{xor_ln147_35_fu_615_p2}, {trunc_ln147_fu_621_p1}};

assign xor_ln_fu_247_p3 = {{xor_ln145_fu_237_p2}, {trunc_ln145_21_fu_243_p1}};

assign zext_ln105_119_fu_298_p1 = bl_reg_721;

assign zext_ln105_120_fu_543_p1 = carry_fu_535_p3;

assign zext_ln105_fu_288_p1 = al_reg_716;

assign zext_ln106_142_fu_403_p1 = tmp_311_reg_802;

assign zext_ln106_143_fu_406_p1 = tmp_312_reg_786_pp0_iter5_reg;

assign zext_ln106_144_fu_409_p1 = tmp_313_reg_792_pp0_iter5_reg;

assign zext_ln106_fu_364_p1 = tmp_310_reg_781;

assign zext_ln110_fu_293_p1 = ah_reg_726;

assign zext_ln112_fu_303_p1 = bh_reg_731;

assign zext_ln123_109_fu_370_p1 = trunc_ln106_177_reg_765;

assign zext_ln123_110_fu_379_p1 = add_ln123_fu_373_p2;

assign zext_ln123_fu_367_p1 = trunc_ln106_178_reg_770;

assign zext_ln130_109_fu_425_p1 = add_ln130_fu_419_p2;

assign zext_ln130_110_fu_439_p1 = add_ln130_137_fu_429_p2;

assign zext_ln130_fu_412_p1 = trunc_ln106_179_reg_775_pp0_iter5_reg;

assign zext_ln133_fu_489_p1 = and_ln133_s_fu_482_p3;

assign zext_ln143_cast_fu_167_p1 = zext_ln143;

assign zext_ln145_19_fu_216_p1 = trunc_ln145_fu_213_p1;

assign zext_ln145_20_fu_255_p1 = xor_ln_fu_247_p3;

assign zext_ln145_fu_225_p1 = sub_ln145_fu_221_p2;

assign zext_ln148_fu_656_p1 = tmp_fu_648_p3;

always @ (posedge ap_clk) begin
    i_cast_reg_691[3] <= 1'b0;
    add_ln133_reg_823[31:0] <= 32'b00000000000000000000000000000000;
    add_ln133_reg_823_pp0_iter8_reg[31:0] <= 32'b00000000000000000000000000000000;
end

endmodule //sikep503_kem_enc_hw_mp_mul_1_Pipeline_VITIS_LOOP_144_2
