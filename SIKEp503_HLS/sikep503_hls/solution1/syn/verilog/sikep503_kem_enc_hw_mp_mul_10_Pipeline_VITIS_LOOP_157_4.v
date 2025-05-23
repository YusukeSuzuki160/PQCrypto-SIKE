// ==============================================================
// Generated by Vitis HLS v2024.2.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module sikep503_kem_enc_hw_mp_mul_10_Pipeline_VITIS_LOOP_157_4 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        indvars_iv,
        v,
        zext_ln156,
        a_address0,
        a_ce0,
        a_q0,
        zext_ln156_6,
        coeff_address0,
        coeff_ce0,
        coeff_q0,
        v_35_out,
        v_35_out_ap_vld,
        u_34_out_i,
        u_34_out_o,
        u_34_out_o_ap_vld,
        t_33_out,
        t_33_out_ap_vld,
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
input  [2:0] indvars_iv;
input  [63:0] v;
input  [3:0] zext_ln156;
output  [3:0] a_address0;
output   a_ce0;
input  [63:0] a_q0;
input  [3:0] zext_ln156_6;
output  [5:0] coeff_address0;
output   coeff_ce0;
input  [63:0] coeff_q0;
output  [63:0] v_35_out;
output   v_35_out_ap_vld;
input  [63:0] u_34_out_i;
output  [63:0] u_34_out_o;
output   u_34_out_o_ap_vld;
output  [2:0] t_33_out;
output   t_33_out_ap_vld;
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
reg v_35_out_ap_vld;
reg[63:0] u_34_out_o;
reg u_34_out_o_ap_vld;
reg t_33_out_ap_vld;

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
wire   [0:0] icmp_ln157_fu_210_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln157_reg_688;
reg   [0:0] icmp_ln157_reg_688_pp0_iter1_reg;
reg   [0:0] icmp_ln157_reg_688_pp0_iter2_reg;
reg   [0:0] icmp_ln157_reg_688_pp0_iter3_reg;
reg   [0:0] icmp_ln157_reg_688_pp0_iter4_reg;
reg   [0:0] icmp_ln157_reg_688_pp0_iter5_reg;
reg   [0:0] icmp_ln157_reg_688_pp0_iter6_reg;
wire   [31:0] al_fu_247_p1;
reg   [31:0] al_reg_702;
wire   [31:0] bl_fu_251_p1;
reg   [31:0] bl_reg_707;
reg   [31:0] ah_reg_712;
reg   [31:0] bh_reg_717;
wire   [63:0] zext_ln105_fu_275_p1;
wire   [63:0] zext_ln110_fu_280_p1;
wire   [63:0] zext_ln105_181_fu_285_p1;
wire   [63:0] zext_ln112_fu_290_p1;
wire   [31:0] trunc_ln106_fu_295_p1;
reg   [31:0] trunc_ln106_reg_746;
reg   [31:0] trunc_ln106_reg_746_pp0_iter4_reg;
reg   [31:0] trunc_ln106_reg_746_pp0_iter5_reg;
wire   [31:0] trunc_ln106_270_fu_299_p1;
reg   [31:0] trunc_ln106_270_reg_751;
wire   [31:0] trunc_ln106_271_fu_303_p1;
reg   [31:0] trunc_ln106_271_reg_756;
wire   [31:0] trunc_ln106_272_fu_307_p1;
reg   [31:0] trunc_ln106_272_reg_761;
reg   [31:0] trunc_ln106_272_reg_761_pp0_iter4_reg;
reg   [31:0] tmp_s_reg_767;
reg   [31:0] tmp_498_reg_772;
reg   [31:0] tmp_498_reg_772_pp0_iter4_reg;
reg   [31:0] tmp_499_reg_778;
reg   [31:0] tmp_499_reg_778_pp0_iter4_reg;
reg   [31:0] tmp_500_reg_783;
reg   [31:0] tmp_500_reg_783_pp0_iter4_reg;
reg   [31:0] tmp_500_reg_783_pp0_iter5_reg;
reg   [1:0] tmp_497_reg_788;
wire   [31:0] trunc_ln125_fu_386_p1;
reg   [31:0] trunc_ln125_reg_793;
reg   [31:0] trunc_ln125_reg_793_pp0_iter5_reg;
wire   [31:0] add_ln105_fu_430_p2;
reg   [31:0] add_ln105_reg_799;
reg   [1:0] tmp_501_reg_804;
wire   [63:0] add_ln133_fu_480_p2;
reg   [63:0] add_ln133_reg_809;
reg   [63:0] add_ln133_reg_809_pp0_iter7_reg;
wire   [63:0] tempReg_fu_551_p2;
reg   [63:0] tempReg_reg_814;
reg   [63:0] tempReg_reg_814_pp0_iter7_reg;
reg   [63:0] u_34_out_load_reg_823;
wire   [63:0] u_fu_566_p2;
reg   [63:0] u_reg_828;
wire   [31:0] zext_ln158_fu_220_p1;
wire    ap_block_pp0_stage0;
wire  signed [31:0] sext_ln158_fu_231_p1;
wire   [63:0] zext_ln156_cast_fu_178_p1;
wire    ap_loop_init;
reg   [2:0] t_33_fu_82;
wire   [2:0] t_fu_646_p2;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg   [63:0] v_35_fu_86;
wire   [63:0] v_208_fu_492_p2;
reg   [3:0] j_17_fu_90;
wire   [3:0] indvars_iv_cast_fu_182_p1;
wire   [3:0] add_ln157_fu_236_p2;
reg   [3:0] ap_sig_allocacmp_j;
wire    ap_block_pp0_stage0_01001;
reg    a_ce0_local;
reg    coeff_ce0_local;
wire   [4:0] zext_ln156_6_cast_fu_174_p1;
wire   [4:0] zext_ln157_fu_216_p1;
wire   [4:0] sub_ln158_fu_225_p2;
wire   [32:0] zext_ln123_fu_354_p1;
wire   [32:0] zext_ln123_171_fu_357_p1;
wire   [32:0] add_ln123_fu_360_p2;
wire   [33:0] zext_ln123_172_fu_366_p1;
wire   [33:0] zext_ln106_fu_351_p1;
wire   [33:0] temp_fu_370_p2;
wire   [32:0] zext_ln130_fu_399_p1;
wire   [32:0] zext_ln106_236_fu_393_p1;
wire   [32:0] add_ln130_210_fu_406_p2;
wire   [32:0] zext_ln106_237_fu_396_p1;
wire   [32:0] zext_ln106_235_fu_390_p1;
wire   [32:0] add_ln130_211_fu_416_p2;
wire   [31:0] trunc_ln130_fu_422_p1;
wire   [31:0] add_ln130_fu_402_p2;
wire   [33:0] zext_ln130_172_fu_426_p1;
wire   [33:0] zext_ln130_171_fu_412_p1;
wire   [33:0] temp_89_fu_436_p2;
wire   [33:0] and_ln133_25_fu_469_p3;
wire   [63:0] zext_ln133_fu_476_p1;
wire   [63:0] and_ln133_s_fu_462_p3;
wire   [63:0] or_ln_fu_486_p3;
wire   [63:0] shl_ln125_s_fu_455_p3;
wire   [63:0] xor_ln105_53_fu_498_p2;
wire   [63:0] xor_ln105_54_fu_504_p2;
wire   [63:0] or_ln105_11_fu_510_p2;
wire   [63:0] xor_ln105_55_fu_516_p2;
wire   [0:0] carry_fu_522_p3;
wire   [31:0] tmp_64_fu_534_p4;
wire   [63:0] or_ln57_fu_544_p3;
wire   [63:0] zext_ln105_182_fu_530_p1;
wire   [63:0] xor_ln160_fu_580_p2;
wire   [63:0] xor_ln160_31_fu_584_p2;
wire   [0:0] bit_sel1_fu_594_p3;
wire   [0:0] xor_ln160_53_fu_601_p2;
wire   [62:0] trunc_ln160_fu_607_p1;
wire   [63:0] xor_ln160_s_fu_610_p3;
wire   [63:0] or_ln160_21_fu_588_p2;
wire   [63:0] xor_ln160_33_fu_623_p2;
wire   [63:0] and_ln160_fu_618_p2;
wire   [63:0] or_ln160_22_fu_628_p2;
wire   [0:0] tmp_fu_634_p3;
wire   [2:0] zext_ln161_fu_642_p1;
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
#0 t_33_fu_82 = 3'd0;
#0 v_35_fu_86 = 64'd0;
#0 j_17_fu_90 = 4'd0;
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
        if (((icmp_ln157_fu_210_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_17_fu_90 <= add_ln157_fu_236_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_17_fu_90 <= indvars_iv_cast_fu_182_p1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            t_33_fu_82 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
            t_33_fu_82 <= t_fu_646_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v_35_fu_86 <= v;
        end else if ((ap_enable_reg_pp0_iter6 == 1'b1)) begin
            v_35_fu_86 <= v_208_fu_492_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln105_reg_799 <= add_ln105_fu_430_p2;
        add_ln133_reg_809[63 : 32] <= add_ln133_fu_480_p2[63 : 32];
        add_ln133_reg_809_pp0_iter7_reg[63 : 32] <= add_ln133_reg_809[63 : 32];
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        icmp_ln157_reg_688_pp0_iter2_reg <= icmp_ln157_reg_688_pp0_iter1_reg;
        icmp_ln157_reg_688_pp0_iter3_reg <= icmp_ln157_reg_688_pp0_iter2_reg;
        icmp_ln157_reg_688_pp0_iter4_reg <= icmp_ln157_reg_688_pp0_iter3_reg;
        icmp_ln157_reg_688_pp0_iter5_reg <= icmp_ln157_reg_688_pp0_iter4_reg;
        icmp_ln157_reg_688_pp0_iter6_reg <= icmp_ln157_reg_688_pp0_iter5_reg;
        tempReg_reg_814 <= tempReg_fu_551_p2;
        tempReg_reg_814_pp0_iter7_reg <= tempReg_reg_814;
        tmp_497_reg_788 <= {{temp_fu_370_p2[33:32]}};
        tmp_498_reg_772 <= {{grp_fu_432_p_dout0[63:32]}};
        tmp_498_reg_772_pp0_iter4_reg <= tmp_498_reg_772;
        tmp_499_reg_778 <= {{grp_fu_428_p_dout0[63:32]}};
        tmp_499_reg_778_pp0_iter4_reg <= tmp_499_reg_778;
        tmp_500_reg_783 <= {{grp_fu_436_p_dout0[63:32]}};
        tmp_500_reg_783_pp0_iter4_reg <= tmp_500_reg_783;
        tmp_500_reg_783_pp0_iter5_reg <= tmp_500_reg_783_pp0_iter4_reg;
        tmp_501_reg_804 <= {{temp_89_fu_436_p2[33:32]}};
        tmp_s_reg_767 <= {{grp_fu_424_p_dout0[63:32]}};
        trunc_ln106_270_reg_751 <= trunc_ln106_270_fu_299_p1;
        trunc_ln106_271_reg_756 <= trunc_ln106_271_fu_303_p1;
        trunc_ln106_272_reg_761 <= trunc_ln106_272_fu_307_p1;
        trunc_ln106_272_reg_761_pp0_iter4_reg <= trunc_ln106_272_reg_761;
        trunc_ln106_reg_746 <= trunc_ln106_fu_295_p1;
        trunc_ln106_reg_746_pp0_iter4_reg <= trunc_ln106_reg_746;
        trunc_ln106_reg_746_pp0_iter5_reg <= trunc_ln106_reg_746_pp0_iter4_reg;
        trunc_ln125_reg_793 <= trunc_ln125_fu_386_p1;
        trunc_ln125_reg_793_pp0_iter5_reg <= trunc_ln125_reg_793;
        u_34_out_load_reg_823 <= u_34_out_i;
        u_reg_828 <= u_fu_566_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ah_reg_712 <= {{a_q0[63:32]}};
        al_reg_702 <= al_fu_247_p1;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        bh_reg_717 <= {{coeff_q0[63:32]}};
        bl_reg_707 <= bl_fu_251_p1;
        icmp_ln157_reg_688 <= icmp_ln157_fu_210_p2;
        icmp_ln157_reg_688_pp0_iter1_reg <= icmp_ln157_reg_688;
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
    if (((icmp_ln157_fu_210_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j = indvars_iv_cast_fu_182_p1;
    end else begin
        ap_sig_allocacmp_j = j_17_fu_90;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (icmp_ln157_reg_688_pp0_iter6_reg == 1'd1))) begin
        t_33_out_ap_vld = 1'b1;
    end else begin
        t_33_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ap_block_pp0_stage0)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            u_34_out_o = zext_ln156_cast_fu_178_p1;
        end else if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
            u_34_out_o = u_fu_566_p2;
        end else begin
            u_34_out_o = u_34_out_i;
        end
    end else begin
        u_34_out_o = u_34_out_i;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1)))) begin
        u_34_out_o_ap_vld = 1'b1;
    end else begin
        u_34_out_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (icmp_ln157_reg_688_pp0_iter6_reg == 1'd1))) begin
        v_35_out_ap_vld = 1'b1;
    end else begin
        v_35_out_ap_vld = 1'b0;
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

assign a_address0 = zext_ln158_fu_220_p1;

assign a_ce0 = a_ce0_local;

assign add_ln105_fu_430_p2 = (trunc_ln130_fu_422_p1 + add_ln130_fu_402_p2);

assign add_ln123_fu_360_p2 = (zext_ln123_fu_354_p1 + zext_ln123_171_fu_357_p1);

assign add_ln130_210_fu_406_p2 = (zext_ln130_fu_399_p1 + zext_ln106_236_fu_393_p1);

assign add_ln130_211_fu_416_p2 = (zext_ln106_237_fu_396_p1 + zext_ln106_235_fu_390_p1);

assign add_ln130_fu_402_p2 = (trunc_ln106_272_reg_761_pp0_iter4_reg + tmp_498_reg_772_pp0_iter4_reg);

assign add_ln133_fu_480_p2 = (zext_ln133_fu_476_p1 + and_ln133_s_fu_462_p3);

assign add_ln157_fu_236_p2 = (ap_sig_allocacmp_j + 4'd1);

assign al_fu_247_p1 = a_q0[31:0];

assign and_ln133_25_fu_469_p3 = {{tmp_501_reg_804}, {32'd0}};

assign and_ln133_s_fu_462_p3 = {{tmp_500_reg_783_pp0_iter5_reg}, {32'd0}};

assign and_ln160_fu_618_p2 = (xor_ln160_s_fu_610_p3 & add_ln133_reg_809_pp0_iter7_reg);

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

assign bit_sel1_fu_594_p3 = tempReg_reg_814_pp0_iter7_reg[64'd63];

assign bl_fu_251_p1 = coeff_q0[31:0];

assign carry_fu_522_p3 = xor_ln105_55_fu_516_p2[32'd63];

assign coeff_address0 = sext_ln158_fu_231_p1;

assign coeff_ce0 = coeff_ce0_local;

assign grp_fu_424_p_ce = 1'b1;

assign grp_fu_424_p_din0 = zext_ln105_181_fu_285_p1;

assign grp_fu_424_p_din1 = zext_ln105_fu_275_p1;

assign grp_fu_428_p_ce = 1'b1;

assign grp_fu_428_p_din0 = zext_ln112_fu_290_p1;

assign grp_fu_428_p_din1 = zext_ln105_fu_275_p1;

assign grp_fu_432_p_ce = 1'b1;

assign grp_fu_432_p_din0 = zext_ln105_181_fu_285_p1;

assign grp_fu_432_p_din1 = zext_ln110_fu_280_p1;

assign grp_fu_436_p_ce = 1'b1;

assign grp_fu_436_p_din0 = zext_ln112_fu_290_p1;

assign grp_fu_436_p_din1 = zext_ln110_fu_280_p1;

assign icmp_ln157_fu_210_p2 = ((ap_sig_allocacmp_j == 4'd8) ? 1'b1 : 1'b0);

assign indvars_iv_cast_fu_182_p1 = indvars_iv;

assign or_ln105_11_fu_510_p2 = (xor_ln105_54_fu_504_p2 | xor_ln105_53_fu_498_p2);

assign or_ln160_21_fu_588_p2 = (xor_ln160_fu_580_p2 | xor_ln160_31_fu_584_p2);

assign or_ln160_22_fu_628_p2 = (xor_ln160_33_fu_623_p2 | and_ln160_fu_618_p2);

assign or_ln57_fu_544_p3 = {{tmp_64_fu_534_p4}, {add_ln105_reg_799}};

assign or_ln_fu_486_p3 = {{trunc_ln125_reg_793_pp0_iter5_reg}, {trunc_ln106_reg_746_pp0_iter5_reg}};

assign sext_ln158_fu_231_p1 = $signed(sub_ln158_fu_225_p2);

assign shl_ln125_s_fu_455_p3 = {{trunc_ln125_reg_793_pp0_iter5_reg}, {32'd0}};

assign sub_ln158_fu_225_p2 = (zext_ln156_6_cast_fu_174_p1 - zext_ln157_fu_216_p1);

assign t_33_out = t_33_fu_82;

assign t_fu_646_p2 = (zext_ln161_fu_642_p1 + t_33_fu_82);

assign tempReg_fu_551_p2 = (or_ln57_fu_544_p3 + zext_ln105_182_fu_530_p1);

assign temp_89_fu_436_p2 = (zext_ln130_172_fu_426_p1 + zext_ln130_171_fu_412_p1);

assign temp_fu_370_p2 = (zext_ln123_172_fu_366_p1 + zext_ln106_fu_351_p1);

assign tmp_64_fu_534_p4 = {{add_ln133_fu_480_p2[63:32]}};

assign tmp_fu_634_p3 = or_ln160_22_fu_628_p2[32'd63];

assign trunc_ln106_270_fu_299_p1 = grp_fu_428_p_dout0[31:0];

assign trunc_ln106_271_fu_303_p1 = grp_fu_432_p_dout0[31:0];

assign trunc_ln106_272_fu_307_p1 = grp_fu_436_p_dout0[31:0];

assign trunc_ln106_fu_295_p1 = grp_fu_424_p_dout0[31:0];

assign trunc_ln125_fu_386_p1 = temp_fu_370_p2[31:0];

assign trunc_ln130_fu_422_p1 = add_ln130_211_fu_416_p2[31:0];

assign trunc_ln160_fu_607_p1 = tempReg_reg_814_pp0_iter7_reg[62:0];

assign u_fu_566_p2 = (tempReg_reg_814 + u_34_out_i);

assign v_208_fu_492_p2 = (or_ln_fu_486_p3 + v_35_fu_86);

assign v_35_out = v_35_fu_86;

assign xor_ln105_53_fu_498_p2 = (v_208_fu_492_p2 ^ shl_ln125_s_fu_455_p3);

assign xor_ln105_54_fu_504_p2 = (v_35_fu_86 ^ shl_ln125_s_fu_455_p3);

assign xor_ln105_55_fu_516_p2 = (v_208_fu_492_p2 ^ or_ln105_11_fu_510_p2);

assign xor_ln160_31_fu_584_p2 = (u_34_out_load_reg_823 ^ tempReg_reg_814_pp0_iter7_reg);

assign xor_ln160_33_fu_623_p2 = (u_reg_828 ^ or_ln160_21_fu_588_p2);

assign xor_ln160_53_fu_601_p2 = (bit_sel1_fu_594_p3 ^ 1'd1);

assign xor_ln160_fu_580_p2 = (u_reg_828 ^ tempReg_reg_814_pp0_iter7_reg);

assign xor_ln160_s_fu_610_p3 = {{xor_ln160_53_fu_601_p2}, {trunc_ln160_fu_607_p1}};

assign zext_ln105_181_fu_285_p1 = bl_reg_707;

assign zext_ln105_182_fu_530_p1 = carry_fu_522_p3;

assign zext_ln105_fu_275_p1 = al_reg_702;

assign zext_ln106_235_fu_390_p1 = tmp_497_reg_788;

assign zext_ln106_236_fu_393_p1 = tmp_498_reg_772_pp0_iter4_reg;

assign zext_ln106_237_fu_396_p1 = tmp_499_reg_778_pp0_iter4_reg;

assign zext_ln106_fu_351_p1 = tmp_s_reg_767;

assign zext_ln110_fu_280_p1 = ah_reg_712;

assign zext_ln112_fu_290_p1 = bh_reg_717;

assign zext_ln123_171_fu_357_p1 = trunc_ln106_270_reg_751;

assign zext_ln123_172_fu_366_p1 = add_ln123_fu_360_p2;

assign zext_ln123_fu_354_p1 = trunc_ln106_271_reg_756;

assign zext_ln130_171_fu_412_p1 = add_ln130_210_fu_406_p2;

assign zext_ln130_172_fu_426_p1 = add_ln130_211_fu_416_p2;

assign zext_ln130_fu_399_p1 = trunc_ln106_272_reg_761_pp0_iter4_reg;

assign zext_ln133_fu_476_p1 = and_ln133_25_fu_469_p3;

assign zext_ln156_6_cast_fu_174_p1 = zext_ln156_6;

assign zext_ln156_cast_fu_178_p1 = zext_ln156;

assign zext_ln157_fu_216_p1 = ap_sig_allocacmp_j;

assign zext_ln158_fu_220_p1 = ap_sig_allocacmp_j;

assign zext_ln161_fu_642_p1 = tmp_fu_634_p3;

always @ (posedge ap_clk) begin
    add_ln133_reg_809[31:0] <= 32'b00000000000000000000000000000000;
    add_ln133_reg_809_pp0_iter7_reg[31:0] <= 32'b00000000000000000000000000000000;
end

endmodule //sikep503_kem_enc_hw_mp_mul_10_Pipeline_VITIS_LOOP_157_4
