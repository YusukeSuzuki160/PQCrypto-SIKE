// ==============================================================
// Generated by Vitis HLS v2024.2.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module sikep503_kem_enc_hw_mp_mul_10_Pipeline_VITIS_LOOP_144_2 (
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
        coeff_address0,
        coeff_ce0,
        coeff_q0,
        v_114_out,
        v_114_out_ap_vld,
        u_89_out_i,
        u_89_out_o,
        u_89_out_o_ap_vld,
        t_out_i,
        t_out_o,
        t_out_o_ap_vld,
        grp_fu_424_p_din0,
        grp_fu_424_p_din1,
        grp_fu_424_p_dout0,
        grp_fu_424_p_ce,
        grp_fu_428_p_din0,
        grp_fu_428_p_din1,
        grp_fu_428_p_dout0,
        grp_fu_428_p_ce,
        grp_fu_432_p_din0,
        grp_fu_432_p_din1,
        grp_fu_432_p_dout0,
        grp_fu_432_p_ce,
        grp_fu_436_p_din0,
        grp_fu_436_p_din1,
        grp_fu_436_p_dout0,
        grp_fu_436_p_ce
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
output  [3:0] a_address0;
output   a_ce0;
input  [63:0] a_q0;
input  [2:0] i;
output  [5:0] coeff_address0;
output   coeff_ce0;
input  [63:0] coeff_q0;
output  [63:0] v_114_out;
output   v_114_out_ap_vld;
input  [63:0] u_89_out_i;
output  [63:0] u_89_out_o;
output   u_89_out_o_ap_vld;
input  [3:0] t_out_i;
output  [3:0] t_out_o;
output   t_out_o_ap_vld;
output  [31:0] grp_fu_424_p_din0;
output  [31:0] grp_fu_424_p_din1;
input  [63:0] grp_fu_424_p_dout0;
output   grp_fu_424_p_ce;
output  [31:0] grp_fu_428_p_din0;
output  [31:0] grp_fu_428_p_din1;
input  [63:0] grp_fu_428_p_dout0;
output   grp_fu_428_p_ce;
output  [31:0] grp_fu_432_p_din0;
output  [31:0] grp_fu_432_p_din1;
input  [63:0] grp_fu_432_p_dout0;
output   grp_fu_432_p_ce;
output  [31:0] grp_fu_436_p_din0;
output  [31:0] grp_fu_436_p_din1;
input  [63:0] grp_fu_436_p_dout0;
output   grp_fu_436_p_ce;

reg ap_idle;
reg v_114_out_ap_vld;
reg[63:0] u_89_out_o;
reg u_89_out_o_ap_vld;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln144_fu_192_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln144_reg_660;
reg   [0:0] icmp_ln144_reg_660_pp0_iter1_reg;
reg   [0:0] icmp_ln144_reg_660_pp0_iter2_reg;
reg   [0:0] icmp_ln144_reg_660_pp0_iter3_reg;
reg   [0:0] icmp_ln144_reg_660_pp0_iter4_reg;
reg   [0:0] icmp_ln144_reg_660_pp0_iter5_reg;
reg   [0:0] icmp_ln144_reg_660_pp0_iter6_reg;
wire   [31:0] al_fu_229_p1;
reg   [31:0] al_reg_674;
wire   [31:0] bl_fu_233_p1;
reg   [31:0] bl_reg_679;
reg   [31:0] ah_reg_684;
reg   [31:0] bh_reg_689;
wire   [63:0] zext_ln105_fu_257_p1;
wire   [63:0] zext_ln110_fu_262_p1;
wire   [63:0] zext_ln105_183_fu_267_p1;
wire   [63:0] zext_ln112_fu_272_p1;
wire   [31:0] trunc_ln106_fu_277_p1;
reg   [31:0] trunc_ln106_reg_718;
reg   [31:0] trunc_ln106_reg_718_pp0_iter4_reg;
reg   [31:0] trunc_ln106_reg_718_pp0_iter5_reg;
wire   [31:0] trunc_ln106_273_fu_281_p1;
reg   [31:0] trunc_ln106_273_reg_723;
wire   [31:0] trunc_ln106_274_fu_285_p1;
reg   [31:0] trunc_ln106_274_reg_728;
wire   [31:0] trunc_ln106_275_fu_289_p1;
reg   [31:0] trunc_ln106_275_reg_733;
reg   [31:0] trunc_ln106_275_reg_733_pp0_iter4_reg;
reg   [31:0] tmp_502_reg_739;
reg   [31:0] tmp_504_reg_744;
reg   [31:0] tmp_504_reg_744_pp0_iter4_reg;
reg   [31:0] tmp_505_reg_750;
reg   [31:0] tmp_505_reg_750_pp0_iter4_reg;
reg   [31:0] tmp_506_reg_755;
reg   [31:0] tmp_506_reg_755_pp0_iter4_reg;
reg   [31:0] tmp_506_reg_755_pp0_iter5_reg;
reg   [1:0] tmp_503_reg_760;
wire   [31:0] trunc_ln125_fu_368_p1;
reg   [31:0] trunc_ln125_reg_765;
reg   [31:0] trunc_ln125_reg_765_pp0_iter5_reg;
wire   [31:0] add_ln105_fu_412_p2;
reg   [31:0] add_ln105_reg_771;
reg   [1:0] tmp_507_reg_776;
wire   [63:0] add_ln133_fu_462_p2;
reg   [63:0] add_ln133_reg_781;
reg   [63:0] add_ln133_reg_781_pp0_iter7_reg;
wire   [63:0] tempReg_fu_533_p2;
reg   [63:0] tempReg_reg_786;
reg   [63:0] tempReg_reg_786_pp0_iter7_reg;
reg   [63:0] u_89_out_load_reg_795;
wire   [63:0] v_fu_548_p2;
reg   [63:0] v_reg_800;
wire   [31:0] zext_ln145_fu_208_p1;
wire    ap_block_pp0_stage0;
wire  signed [31:0] sext_ln145_fu_219_p1;
wire   [63:0] zext_ln143_cast_fu_163_p1;
wire    ap_loop_init;
wire   [3:0] u_fu_629_p2;
reg   [63:0] v_114_fu_78;
wire   [63:0] v_209_fu_474_p2;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg   [3:0] j_fu_82;
wire   [3:0] add_ln144_fu_198_p2;
reg   [3:0] ap_sig_allocacmp_j_48;
wire    ap_block_pp0_stage0_01001;
reg    a_ce0_local;
reg    coeff_ce0_local;
wire   [2:0] trunc_ln145_fu_204_p1;
wire   [3:0] i_cast_fu_159_p1;
wire   [3:0] sub_ln145_fu_213_p2;
wire   [32:0] zext_ln123_fu_336_p1;
wire   [32:0] zext_ln123_173_fu_339_p1;
wire   [32:0] add_ln123_fu_342_p2;
wire   [33:0] zext_ln123_174_fu_348_p1;
wire   [33:0] zext_ln106_fu_333_p1;
wire   [33:0] temp_fu_352_p2;
wire   [32:0] zext_ln130_fu_381_p1;
wire   [32:0] zext_ln106_239_fu_375_p1;
wire   [32:0] add_ln130_fu_388_p2;
wire   [32:0] zext_ln106_240_fu_378_p1;
wire   [32:0] zext_ln106_238_fu_372_p1;
wire   [32:0] add_ln130_211_fu_398_p2;
wire   [31:0] trunc_ln130_fu_404_p1;
wire   [31:0] add_ln130_213_fu_384_p2;
wire   [33:0] zext_ln130_174_fu_408_p1;
wire   [33:0] zext_ln130_173_fu_394_p1;
wire   [33:0] temp_90_fu_418_p2;
wire   [33:0] and_ln133_s_fu_451_p3;
wire   [63:0] zext_ln133_fu_458_p1;
wire   [63:0] and_ln_fu_444_p3;
wire   [63:0] or_ln_fu_468_p3;
wire   [63:0] shl_ln_fu_437_p3;
wire   [63:0] xor_ln105_fu_480_p2;
wire   [63:0] xor_ln105_51_fu_486_p2;
wire   [63:0] or_ln105_fu_492_p2;
wire   [63:0] xor_ln105_52_fu_498_p2;
wire   [0:0] carry_fu_504_p3;
wire   [31:0] tmp_s_fu_516_p4;
wire   [63:0] or_ln58_fu_526_p3;
wire   [63:0] zext_ln105_184_fu_512_p1;
wire   [63:0] xor_ln147_fu_563_p2;
wire   [63:0] xor_ln147_31_fu_567_p2;
wire   [0:0] bit_sel_fu_577_p3;
wire   [0:0] xor_ln147_53_fu_584_p2;
wire   [62:0] trunc_ln147_fu_590_p1;
wire   [63:0] xor_ln147_s_fu_593_p3;
wire   [63:0] or_ln147_21_fu_571_p2;
wire   [63:0] xor_ln147_33_fu_606_p2;
wire   [63:0] and_ln147_fu_601_p2;
wire   [63:0] or_ln147_22_fu_611_p2;
wire   [0:0] tmp_fu_617_p3;
wire   [3:0] zext_ln148_fu_625_p1;
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
#0 v_114_fu_78 = 64'd0;
#0 j_fu_82 = 4'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln144_fu_192_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_82 <= add_ln144_fu_198_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_82 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v_114_fu_78 <= v_017;
        end else if ((ap_enable_reg_pp0_iter6 == 1'b1)) begin
            v_114_fu_78 <= v_209_fu_474_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln105_reg_771 <= add_ln105_fu_412_p2;
        add_ln133_reg_781[63 : 32] <= add_ln133_fu_462_p2[63 : 32];
        add_ln133_reg_781_pp0_iter7_reg[63 : 32] <= add_ln133_reg_781[63 : 32];
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        icmp_ln144_reg_660_pp0_iter2_reg <= icmp_ln144_reg_660_pp0_iter1_reg;
        icmp_ln144_reg_660_pp0_iter3_reg <= icmp_ln144_reg_660_pp0_iter2_reg;
        icmp_ln144_reg_660_pp0_iter4_reg <= icmp_ln144_reg_660_pp0_iter3_reg;
        icmp_ln144_reg_660_pp0_iter5_reg <= icmp_ln144_reg_660_pp0_iter4_reg;
        icmp_ln144_reg_660_pp0_iter6_reg <= icmp_ln144_reg_660_pp0_iter5_reg;
        tempReg_reg_786 <= tempReg_fu_533_p2;
        tempReg_reg_786_pp0_iter7_reg <= tempReg_reg_786;
        tmp_502_reg_739 <= {{grp_fu_424_p_dout0[63:32]}};
        tmp_503_reg_760 <= {{temp_fu_352_p2[33:32]}};
        tmp_504_reg_744 <= {{grp_fu_432_p_dout0[63:32]}};
        tmp_504_reg_744_pp0_iter4_reg <= tmp_504_reg_744;
        tmp_505_reg_750 <= {{grp_fu_428_p_dout0[63:32]}};
        tmp_505_reg_750_pp0_iter4_reg <= tmp_505_reg_750;
        tmp_506_reg_755 <= {{grp_fu_436_p_dout0[63:32]}};
        tmp_506_reg_755_pp0_iter4_reg <= tmp_506_reg_755;
        tmp_506_reg_755_pp0_iter5_reg <= tmp_506_reg_755_pp0_iter4_reg;
        tmp_507_reg_776 <= {{temp_90_fu_418_p2[33:32]}};
        trunc_ln106_273_reg_723 <= trunc_ln106_273_fu_281_p1;
        trunc_ln106_274_reg_728 <= trunc_ln106_274_fu_285_p1;
        trunc_ln106_275_reg_733 <= trunc_ln106_275_fu_289_p1;
        trunc_ln106_275_reg_733_pp0_iter4_reg <= trunc_ln106_275_reg_733;
        trunc_ln106_reg_718 <= trunc_ln106_fu_277_p1;
        trunc_ln106_reg_718_pp0_iter4_reg <= trunc_ln106_reg_718;
        trunc_ln106_reg_718_pp0_iter5_reg <= trunc_ln106_reg_718_pp0_iter4_reg;
        trunc_ln125_reg_765 <= trunc_ln125_fu_368_p1;
        trunc_ln125_reg_765_pp0_iter5_reg <= trunc_ln125_reg_765;
        u_89_out_load_reg_795 <= u_89_out_i;
        v_reg_800 <= v_fu_548_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ah_reg_684 <= {{a_q0[63:32]}};
        al_reg_674 <= al_fu_229_p1;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        bh_reg_689 <= {{coeff_q0[63:32]}};
        bl_reg_679 <= bl_fu_233_p1;
        icmp_ln144_reg_660 <= icmp_ln144_fu_192_p2;
        icmp_ln144_reg_660_pp0_iter1_reg <= icmp_ln144_reg_660;
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
    if (((icmp_ln144_fu_192_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_j_48 = 4'd0;
    end else begin
        ap_sig_allocacmp_j_48 = j_fu_82;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        coeff_ce0_local = 1'b1;
    end else begin
        coeff_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ap_block_pp0_stage0)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            t_out_o = 4'd0;
        end else if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
            t_out_o = u_fu_629_p2;
        end else begin
            t_out_o = t_out_i;
        end
    end else begin
        t_out_o = t_out_i;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1)))) begin
        t_out_o_ap_vld = 1'b1;
    end else begin
        t_out_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ap_block_pp0_stage0)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            u_89_out_o = zext_ln143_cast_fu_163_p1;
        end else if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
            u_89_out_o = v_fu_548_p2;
        end else begin
            u_89_out_o = u_89_out_i;
        end
    end else begin
        u_89_out_o = u_89_out_i;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1)))) begin
        u_89_out_o_ap_vld = 1'b1;
    end else begin
        u_89_out_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (icmp_ln144_reg_660_pp0_iter6_reg == 1'd1))) begin
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

assign a_address0 = zext_ln145_fu_208_p1;

assign a_ce0 = a_ce0_local;

assign add_ln105_fu_412_p2 = (trunc_ln130_fu_404_p1 + add_ln130_213_fu_384_p2);

assign add_ln123_fu_342_p2 = (zext_ln123_fu_336_p1 + zext_ln123_173_fu_339_p1);

assign add_ln130_211_fu_398_p2 = (zext_ln106_240_fu_378_p1 + zext_ln106_238_fu_372_p1);

assign add_ln130_213_fu_384_p2 = (trunc_ln106_275_reg_733_pp0_iter4_reg + tmp_504_reg_744_pp0_iter4_reg);

assign add_ln130_fu_388_p2 = (zext_ln130_fu_381_p1 + zext_ln106_239_fu_375_p1);

assign add_ln133_fu_462_p2 = (zext_ln133_fu_458_p1 + and_ln_fu_444_p3);

assign add_ln144_fu_198_p2 = (ap_sig_allocacmp_j_48 + 4'd1);

assign al_fu_229_p1 = a_q0[31:0];

assign and_ln133_s_fu_451_p3 = {{tmp_507_reg_776}, {32'd0}};

assign and_ln147_fu_601_p2 = (xor_ln147_s_fu_593_p3 & add_ln133_reg_781_pp0_iter7_reg);

assign and_ln_fu_444_p3 = {{tmp_506_reg_755_pp0_iter5_reg}, {32'd0}};

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

assign bit_sel_fu_577_p3 = tempReg_reg_786_pp0_iter7_reg[64'd63];

assign bl_fu_233_p1 = coeff_q0[31:0];

assign carry_fu_504_p3 = xor_ln105_52_fu_498_p2[32'd63];

assign coeff_address0 = sext_ln145_fu_219_p1;

assign coeff_ce0 = coeff_ce0_local;

assign grp_fu_424_p_ce = 1'b1;

assign grp_fu_424_p_din0 = zext_ln105_183_fu_267_p1;

assign grp_fu_424_p_din1 = zext_ln105_fu_257_p1;

assign grp_fu_428_p_ce = 1'b1;

assign grp_fu_428_p_din0 = zext_ln112_fu_272_p1;

assign grp_fu_428_p_din1 = zext_ln105_fu_257_p1;

assign grp_fu_432_p_ce = 1'b1;

assign grp_fu_432_p_din0 = zext_ln105_183_fu_267_p1;

assign grp_fu_432_p_din1 = zext_ln110_fu_262_p1;

assign grp_fu_436_p_ce = 1'b1;

assign grp_fu_436_p_din0 = zext_ln112_fu_272_p1;

assign grp_fu_436_p_din1 = zext_ln110_fu_262_p1;

assign i_cast_fu_159_p1 = i;

assign icmp_ln144_fu_192_p2 = ((ap_sig_allocacmp_j_48 == indvars_iv31) ? 1'b1 : 1'b0);

assign or_ln105_fu_492_p2 = (xor_ln105_fu_480_p2 | xor_ln105_51_fu_486_p2);

assign or_ln147_21_fu_571_p2 = (xor_ln147_fu_563_p2 | xor_ln147_31_fu_567_p2);

assign or_ln147_22_fu_611_p2 = (xor_ln147_33_fu_606_p2 | and_ln147_fu_601_p2);

assign or_ln58_fu_526_p3 = {{tmp_s_fu_516_p4}, {add_ln105_reg_771}};

assign or_ln_fu_468_p3 = {{trunc_ln125_reg_765_pp0_iter5_reg}, {trunc_ln106_reg_718_pp0_iter5_reg}};

assign sext_ln145_fu_219_p1 = $signed(sub_ln145_fu_213_p2);

assign shl_ln_fu_437_p3 = {{trunc_ln125_reg_765_pp0_iter5_reg}, {32'd0}};

assign sub_ln145_fu_213_p2 = (i_cast_fu_159_p1 - ap_sig_allocacmp_j_48);

assign tempReg_fu_533_p2 = (or_ln58_fu_526_p3 + zext_ln105_184_fu_512_p1);

assign temp_90_fu_418_p2 = (zext_ln130_174_fu_408_p1 + zext_ln130_173_fu_394_p1);

assign temp_fu_352_p2 = (zext_ln123_174_fu_348_p1 + zext_ln106_fu_333_p1);

assign tmp_fu_617_p3 = or_ln147_22_fu_611_p2[32'd63];

assign tmp_s_fu_516_p4 = {{add_ln133_fu_462_p2[63:32]}};

assign trunc_ln106_273_fu_281_p1 = grp_fu_428_p_dout0[31:0];

assign trunc_ln106_274_fu_285_p1 = grp_fu_432_p_dout0[31:0];

assign trunc_ln106_275_fu_289_p1 = grp_fu_436_p_dout0[31:0];

assign trunc_ln106_fu_277_p1 = grp_fu_424_p_dout0[31:0];

assign trunc_ln125_fu_368_p1 = temp_fu_352_p2[31:0];

assign trunc_ln130_fu_404_p1 = add_ln130_211_fu_398_p2[31:0];

assign trunc_ln145_fu_204_p1 = ap_sig_allocacmp_j_48[2:0];

assign trunc_ln147_fu_590_p1 = tempReg_reg_786_pp0_iter7_reg[62:0];

assign u_fu_629_p2 = (zext_ln148_fu_625_p1 + t_out_i);

assign v_114_out = v_114_fu_78;

assign v_209_fu_474_p2 = (or_ln_fu_468_p3 + v_114_fu_78);

assign v_fu_548_p2 = (tempReg_reg_786 + u_89_out_i);

assign xor_ln105_51_fu_486_p2 = (v_114_fu_78 ^ shl_ln_fu_437_p3);

assign xor_ln105_52_fu_498_p2 = (v_209_fu_474_p2 ^ or_ln105_fu_492_p2);

assign xor_ln105_fu_480_p2 = (v_209_fu_474_p2 ^ shl_ln_fu_437_p3);

assign xor_ln147_31_fu_567_p2 = (u_89_out_load_reg_795 ^ tempReg_reg_786_pp0_iter7_reg);

assign xor_ln147_33_fu_606_p2 = (v_reg_800 ^ or_ln147_21_fu_571_p2);

assign xor_ln147_53_fu_584_p2 = (bit_sel_fu_577_p3 ^ 1'd1);

assign xor_ln147_fu_563_p2 = (v_reg_800 ^ tempReg_reg_786_pp0_iter7_reg);

assign xor_ln147_s_fu_593_p3 = {{xor_ln147_53_fu_584_p2}, {trunc_ln147_fu_590_p1}};

assign zext_ln105_183_fu_267_p1 = bl_reg_679;

assign zext_ln105_184_fu_512_p1 = carry_fu_504_p3;

assign zext_ln105_fu_257_p1 = al_reg_674;

assign zext_ln106_238_fu_372_p1 = tmp_503_reg_760;

assign zext_ln106_239_fu_375_p1 = tmp_504_reg_744_pp0_iter4_reg;

assign zext_ln106_240_fu_378_p1 = tmp_505_reg_750_pp0_iter4_reg;

assign zext_ln106_fu_333_p1 = tmp_502_reg_739;

assign zext_ln110_fu_262_p1 = ah_reg_684;

assign zext_ln112_fu_272_p1 = bh_reg_689;

assign zext_ln123_173_fu_339_p1 = trunc_ln106_273_reg_723;

assign zext_ln123_174_fu_348_p1 = add_ln123_fu_342_p2;

assign zext_ln123_fu_336_p1 = trunc_ln106_274_reg_728;

assign zext_ln130_173_fu_394_p1 = add_ln130_fu_388_p2;

assign zext_ln130_174_fu_408_p1 = add_ln130_211_fu_398_p2;

assign zext_ln130_fu_381_p1 = trunc_ln106_275_reg_733_pp0_iter4_reg;

assign zext_ln133_fu_458_p1 = and_ln133_s_fu_451_p3;

assign zext_ln143_cast_fu_163_p1 = zext_ln143;

assign zext_ln145_fu_208_p1 = trunc_ln145_fu_204_p1;

assign zext_ln148_fu_625_p1 = tmp_fu_617_p3;

always @ (posedge ap_clk) begin
    add_ln133_reg_781[31:0] <= 32'b00000000000000000000000000000000;
    add_ln133_reg_781_pp0_iter7_reg[31:0] <= 32'b00000000000000000000000000000000;
end

endmodule //sikep503_kem_enc_hw_mp_mul_10_Pipeline_VITIS_LOOP_144_2
