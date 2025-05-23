// ==============================================================
// Generated by Vitis HLS v2024.2.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module sikep503_kem_enc_hw_mp_mul_89_90_Pipeline_VITIS_LOOP_144_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        v_017,
        zext_ln143,
        indvars_iv31,
        a_0_offset,
        a_0_address0,
        a_0_ce0,
        a_0_q0,
        a_1_offset,
        a_1_address0,
        a_1_ce0,
        a_1_q0,
        i,
        zext_ln145,
        b_address0,
        b_ce0,
        b_q0,
        v_73_out,
        v_73_out_ap_vld,
        u_62_out_i,
        u_62_out_o,
        u_62_out_o_ap_vld,
        t_out_i,
        t_out_o,
        t_out_o_ap_vld,
        grp_fu_518_p_din0,
        grp_fu_518_p_din1,
        grp_fu_518_p_dout0,
        grp_fu_518_p_ce,
        grp_fu_522_p_din0,
        grp_fu_522_p_din1,
        grp_fu_522_p_dout0,
        grp_fu_522_p_ce,
        grp_fu_526_p_din0,
        grp_fu_526_p_din1,
        grp_fu_526_p_dout0,
        grp_fu_526_p_ce,
        grp_fu_530_p_din0,
        grp_fu_530_p_din1,
        grp_fu_530_p_dout0,
        grp_fu_530_p_ce
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
input  [0:0] a_0_offset;
output  [2:0] a_0_address0;
output   a_0_ce0;
input  [63:0] a_0_q0;
input  [0:0] a_1_offset;
output  [2:0] a_1_address0;
output   a_1_ce0;
input  [63:0] a_1_q0;
input  [2:0] i;
input  [3:0] zext_ln145;
output  [3:0] b_address0;
output   b_ce0;
input  [63:0] b_q0;
output  [63:0] v_73_out;
output   v_73_out_ap_vld;
input  [63:0] u_62_out_i;
output  [63:0] u_62_out_o;
output   u_62_out_o_ap_vld;
input  [3:0] t_out_i;
output  [3:0] t_out_o;
output   t_out_o_ap_vld;
output  [31:0] grp_fu_518_p_din0;
output  [31:0] grp_fu_518_p_din1;
input  [63:0] grp_fu_518_p_dout0;
output   grp_fu_518_p_ce;
output  [31:0] grp_fu_522_p_din0;
output  [31:0] grp_fu_522_p_din1;
input  [63:0] grp_fu_522_p_dout0;
output   grp_fu_522_p_ce;
output  [31:0] grp_fu_526_p_din0;
output  [31:0] grp_fu_526_p_din1;
input  [63:0] grp_fu_526_p_dout0;
output   grp_fu_526_p_ce;
output  [31:0] grp_fu_530_p_din0;
output  [31:0] grp_fu_530_p_din1;
input  [63:0] grp_fu_530_p_dout0;
output   grp_fu_530_p_ce;

reg ap_idle;
reg v_73_out_ap_vld;
reg[63:0] u_62_out_o;
reg u_62_out_o_ap_vld;
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
wire   [0:0] icmp_ln144_fu_237_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] i_cast_fu_204_p1;
reg   [3:0] i_cast_reg_757;
reg   [3:0] j_17_reg_762;
reg   [0:0] icmp_ln144_reg_769;
reg   [0:0] icmp_ln144_reg_769_pp0_iter1_reg;
reg   [0:0] icmp_ln144_reg_769_pp0_iter2_reg;
reg   [0:0] icmp_ln144_reg_769_pp0_iter3_reg;
reg   [0:0] icmp_ln144_reg_769_pp0_iter4_reg;
reg   [0:0] icmp_ln144_reg_769_pp0_iter5_reg;
reg   [0:0] icmp_ln144_reg_769_pp0_iter6_reg;
reg   [0:0] icmp_ln144_reg_769_pp0_iter7_reg;
wire   [0:0] trunc_ln144_fu_254_p1;
reg   [0:0] trunc_ln144_reg_773;
wire   [31:0] al_fu_311_p1;
reg   [31:0] al_reg_793;
wire   [31:0] bl_fu_315_p1;
reg   [31:0] bl_reg_798;
reg   [31:0] ah_reg_803;
reg   [31:0] bh_reg_808;
wire   [63:0] zext_ln105_fu_339_p1;
wire   [63:0] zext_ln110_fu_344_p1;
wire   [63:0] zext_ln105_61_fu_349_p1;
wire   [63:0] zext_ln112_fu_354_p1;
wire   [31:0] trunc_ln106_fu_359_p1;
reg   [31:0] trunc_ln106_reg_837;
reg   [31:0] trunc_ln106_reg_837_pp0_iter5_reg;
reg   [31:0] trunc_ln106_reg_837_pp0_iter6_reg;
wire   [31:0] trunc_ln106_93_fu_363_p1;
reg   [31:0] trunc_ln106_93_reg_842;
wire   [31:0] trunc_ln106_94_fu_367_p1;
reg   [31:0] trunc_ln106_94_reg_847;
wire   [31:0] trunc_ln106_95_fu_371_p1;
reg   [31:0] trunc_ln106_95_reg_852;
reg   [31:0] trunc_ln106_95_reg_852_pp0_iter5_reg;
reg   [31:0] tmp_149_reg_858;
reg   [31:0] tmp_151_reg_863;
reg   [31:0] tmp_151_reg_863_pp0_iter5_reg;
reg   [31:0] tmp_152_reg_869;
reg   [31:0] tmp_152_reg_869_pp0_iter5_reg;
reg   [31:0] tmp_153_reg_874;
reg   [31:0] tmp_153_reg_874_pp0_iter5_reg;
reg   [31:0] tmp_153_reg_874_pp0_iter6_reg;
reg   [1:0] tmp_150_reg_879;
wire   [31:0] trunc_ln125_fu_450_p1;
reg   [31:0] trunc_ln125_reg_884;
reg   [31:0] trunc_ln125_reg_884_pp0_iter6_reg;
wire   [31:0] add_ln105_fu_494_p2;
reg   [31:0] add_ln105_reg_890;
reg   [1:0] tmp_154_reg_895;
wire   [63:0] add_ln133_fu_544_p2;
reg   [63:0] add_ln133_reg_900;
reg   [63:0] add_ln133_reg_900_pp0_iter8_reg;
wire   [63:0] tempReg_fu_615_p2;
reg   [63:0] tempReg_reg_905;
reg   [63:0] tempReg_reg_905_pp0_iter8_reg;
reg   [63:0] u_62_out_load_reg_914;
wire   [63:0] v_fu_630_p2;
reg   [63:0] v_reg_919;
wire   [31:0] zext_ln145_3_fu_273_p1;
wire    ap_block_pp0_stage0;
wire   [31:0] zext_ln145_4_fu_285_p1;
wire   [31:0] zext_ln145_5_fu_299_p1;
wire   [63:0] zext_ln143_cast_fu_208_p1;
wire    ap_loop_init;
wire   [3:0] u_fu_711_p2;
reg   [63:0] v_73_fu_92;
wire   [63:0] v_116_fu_556_p2;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg   [3:0] j_fu_96;
wire   [3:0] add_ln144_fu_243_p2;
reg   [3:0] ap_sig_allocacmp_j_17;
wire    ap_block_pp0_stage0_01001;
reg    a_0_ce0_local;
reg    a_1_ce0_local;
reg    b_ce0_local;
wire   [1:0] lshr_ln_fu_257_p4;
wire   [2:0] tmp_147_fu_266_p3;
wire   [2:0] tmp_148_fu_278_p3;
wire   [3:0] sub_ln145_fu_290_p2;
wire   [3:0] add_ln145_fu_294_p2;
wire   [63:0] select_ln145_fu_304_p3;
wire   [32:0] zext_ln123_fu_418_p1;
wire   [32:0] zext_ln123_53_fu_421_p1;
wire   [32:0] add_ln123_fu_424_p2;
wire   [33:0] zext_ln123_54_fu_430_p1;
wire   [33:0] zext_ln106_fu_415_p1;
wire   [33:0] temp_fu_434_p2;
wire   [32:0] zext_ln130_fu_463_p1;
wire   [32:0] zext_ln106_61_fu_457_p1;
wire   [32:0] add_ln130_fu_470_p2;
wire   [32:0] zext_ln106_62_fu_460_p1;
wire   [32:0] zext_ln106_60_fu_454_p1;
wire   [32:0] add_ln130_61_fu_480_p2;
wire   [31:0] trunc_ln130_fu_486_p1;
wire   [31:0] add_ln130_62_fu_466_p2;
wire   [33:0] zext_ln130_54_fu_490_p1;
wire   [33:0] zext_ln130_53_fu_476_p1;
wire   [33:0] temp_30_fu_500_p2;
wire   [33:0] and_ln133_4_fu_533_p3;
wire   [63:0] zext_ln133_fu_540_p1;
wire   [63:0] and_ln_fu_526_p3;
wire   [63:0] or_ln_fu_550_p3;
wire   [63:0] shl_ln_fu_519_p3;
wire   [63:0] xor_ln105_fu_562_p2;
wire   [63:0] xor_ln105_6_fu_568_p2;
wire   [63:0] or_ln105_fu_574_p2;
wire   [63:0] xor_ln105_7_fu_580_p2;
wire   [0:0] carry_fu_586_p3;
wire   [31:0] tmp_s_fu_598_p4;
wire   [63:0] or_ln4_fu_608_p3;
wire   [63:0] zext_ln105_65_fu_594_p1;
wire   [63:0] xor_ln147_fu_645_p2;
wire   [63:0] xor_ln147_4_fu_649_p2;
wire   [0:0] bit_sel_fu_659_p3;
wire   [0:0] xor_ln147_7_fu_666_p2;
wire   [62:0] trunc_ln147_fu_672_p1;
wire   [63:0] xor_ln147_5_fu_675_p3;
wire   [63:0] or_ln147_fu_653_p2;
wire   [63:0] xor_ln147_6_fu_688_p2;
wire   [63:0] and_ln147_fu_683_p2;
wire   [63:0] or_ln147_2_fu_693_p2;
wire   [0:0] tmp_fu_699_p3;
wire   [3:0] zext_ln148_fu_707_p1;
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
#0 v_73_fu_92 = 64'd0;
#0 j_fu_96 = 4'd0;
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
        if (((icmp_ln144_fu_237_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_96 <= add_ln144_fu_243_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_96 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v_73_fu_92 <= v_017;
        end else if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
            v_73_fu_92 <= v_116_fu_556_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln105_reg_890 <= add_ln105_fu_494_p2;
        add_ln133_reg_900[63 : 32] <= add_ln133_fu_544_p2[63 : 32];
        add_ln133_reg_900_pp0_iter8_reg[63 : 32] <= add_ln133_reg_900[63 : 32];
        ah_reg_803 <= {{select_ln145_fu_304_p3[63:32]}};
        al_reg_793 <= al_fu_311_p1;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        bh_reg_808 <= {{b_q0[63:32]}};
        bl_reg_798 <= bl_fu_315_p1;
        icmp_ln144_reg_769_pp0_iter2_reg <= icmp_ln144_reg_769_pp0_iter1_reg;
        icmp_ln144_reg_769_pp0_iter3_reg <= icmp_ln144_reg_769_pp0_iter2_reg;
        icmp_ln144_reg_769_pp0_iter4_reg <= icmp_ln144_reg_769_pp0_iter3_reg;
        icmp_ln144_reg_769_pp0_iter5_reg <= icmp_ln144_reg_769_pp0_iter4_reg;
        icmp_ln144_reg_769_pp0_iter6_reg <= icmp_ln144_reg_769_pp0_iter5_reg;
        icmp_ln144_reg_769_pp0_iter7_reg <= icmp_ln144_reg_769_pp0_iter6_reg;
        tempReg_reg_905 <= tempReg_fu_615_p2;
        tempReg_reg_905_pp0_iter8_reg <= tempReg_reg_905;
        tmp_149_reg_858 <= {{grp_fu_518_p_dout0[63:32]}};
        tmp_150_reg_879 <= {{temp_fu_434_p2[33:32]}};
        tmp_151_reg_863 <= {{grp_fu_526_p_dout0[63:32]}};
        tmp_151_reg_863_pp0_iter5_reg <= tmp_151_reg_863;
        tmp_152_reg_869 <= {{grp_fu_522_p_dout0[63:32]}};
        tmp_152_reg_869_pp0_iter5_reg <= tmp_152_reg_869;
        tmp_153_reg_874 <= {{grp_fu_530_p_dout0[63:32]}};
        tmp_153_reg_874_pp0_iter5_reg <= tmp_153_reg_874;
        tmp_153_reg_874_pp0_iter6_reg <= tmp_153_reg_874_pp0_iter5_reg;
        tmp_154_reg_895 <= {{temp_30_fu_500_p2[33:32]}};
        trunc_ln106_93_reg_842 <= trunc_ln106_93_fu_363_p1;
        trunc_ln106_94_reg_847 <= trunc_ln106_94_fu_367_p1;
        trunc_ln106_95_reg_852 <= trunc_ln106_95_fu_371_p1;
        trunc_ln106_95_reg_852_pp0_iter5_reg <= trunc_ln106_95_reg_852;
        trunc_ln106_reg_837 <= trunc_ln106_fu_359_p1;
        trunc_ln106_reg_837_pp0_iter5_reg <= trunc_ln106_reg_837;
        trunc_ln106_reg_837_pp0_iter6_reg <= trunc_ln106_reg_837_pp0_iter5_reg;
        trunc_ln125_reg_884 <= trunc_ln125_fu_450_p1;
        trunc_ln125_reg_884_pp0_iter6_reg <= trunc_ln125_reg_884;
        u_62_out_load_reg_914 <= u_62_out_i;
        v_reg_919 <= v_fu_630_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        i_cast_reg_757[2 : 0] <= i_cast_fu_204_p1[2 : 0];
        icmp_ln144_reg_769 <= icmp_ln144_fu_237_p2;
        icmp_ln144_reg_769_pp0_iter1_reg <= icmp_ln144_reg_769;
        j_17_reg_762 <= ap_sig_allocacmp_j_17;
        trunc_ln144_reg_773 <= trunc_ln144_fu_254_p1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_0_ce0_local = 1'b1;
    end else begin
        a_0_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_1_ce0_local = 1'b1;
    end else begin
        a_1_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln144_fu_237_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_j_17 = 4'd0;
    end else begin
        ap_sig_allocacmp_j_17 = j_fu_96;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_ce0_local = 1'b1;
    end else begin
        b_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ap_block_pp0_stage0)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            t_out_o = 4'd0;
        end else if ((ap_enable_reg_pp0_iter9 == 1'b1)) begin
            t_out_o = u_fu_711_p2;
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
            u_62_out_o = zext_ln143_cast_fu_208_p1;
        end else if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
            u_62_out_o = v_fu_630_p2;
        end else begin
            u_62_out_o = u_62_out_i;
        end
    end else begin
        u_62_out_o = u_62_out_i;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1)))) begin
        u_62_out_o_ap_vld = 1'b1;
    end else begin
        u_62_out_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln144_reg_769_pp0_iter7_reg == 1'd1))) begin
        v_73_out_ap_vld = 1'b1;
    end else begin
        v_73_out_ap_vld = 1'b0;
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

assign a_0_address0 = zext_ln145_3_fu_273_p1;

assign a_0_ce0 = a_0_ce0_local;

assign a_1_address0 = zext_ln145_4_fu_285_p1;

assign a_1_ce0 = a_1_ce0_local;

assign add_ln105_fu_494_p2 = (trunc_ln130_fu_486_p1 + add_ln130_62_fu_466_p2);

assign add_ln123_fu_424_p2 = (zext_ln123_fu_418_p1 + zext_ln123_53_fu_421_p1);

assign add_ln130_61_fu_480_p2 = (zext_ln106_62_fu_460_p1 + zext_ln106_60_fu_454_p1);

assign add_ln130_62_fu_466_p2 = (trunc_ln106_95_reg_852_pp0_iter5_reg + tmp_151_reg_863_pp0_iter5_reg);

assign add_ln130_fu_470_p2 = (zext_ln130_fu_463_p1 + zext_ln106_61_fu_457_p1);

assign add_ln133_fu_544_p2 = (zext_ln133_fu_540_p1 + and_ln_fu_526_p3);

assign add_ln144_fu_243_p2 = (ap_sig_allocacmp_j_17 + 4'd1);

assign add_ln145_fu_294_p2 = (zext_ln145 + sub_ln145_fu_290_p2);

assign al_fu_311_p1 = select_ln145_fu_304_p3[31:0];

assign and_ln133_4_fu_533_p3 = {{tmp_154_reg_895}, {32'd0}};

assign and_ln147_fu_683_p2 = (xor_ln147_5_fu_675_p3 & add_ln133_reg_900_pp0_iter8_reg);

assign and_ln_fu_526_p3 = {{tmp_153_reg_874_pp0_iter6_reg}, {32'd0}};

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

assign b_address0 = zext_ln145_5_fu_299_p1;

assign b_ce0 = b_ce0_local;

assign bit_sel_fu_659_p3 = tempReg_reg_905_pp0_iter8_reg[64'd63];

assign bl_fu_315_p1 = b_q0[31:0];

assign carry_fu_586_p3 = xor_ln105_7_fu_580_p2[32'd63];

assign grp_fu_518_p_ce = 1'b1;

assign grp_fu_518_p_din0 = zext_ln105_61_fu_349_p1;

assign grp_fu_518_p_din1 = zext_ln105_fu_339_p1;

assign grp_fu_522_p_ce = 1'b1;

assign grp_fu_522_p_din0 = zext_ln112_fu_354_p1;

assign grp_fu_522_p_din1 = zext_ln105_fu_339_p1;

assign grp_fu_526_p_ce = 1'b1;

assign grp_fu_526_p_din0 = zext_ln105_61_fu_349_p1;

assign grp_fu_526_p_din1 = zext_ln110_fu_344_p1;

assign grp_fu_530_p_ce = 1'b1;

assign grp_fu_530_p_din0 = zext_ln112_fu_354_p1;

assign grp_fu_530_p_din1 = zext_ln110_fu_344_p1;

assign i_cast_fu_204_p1 = i;

assign icmp_ln144_fu_237_p2 = ((ap_sig_allocacmp_j_17 == indvars_iv31) ? 1'b1 : 1'b0);

assign lshr_ln_fu_257_p4 = {{j_17_reg_762[2:1]}};

assign or_ln105_fu_574_p2 = (xor_ln105_fu_562_p2 | xor_ln105_6_fu_568_p2);

assign or_ln147_2_fu_693_p2 = (xor_ln147_6_fu_688_p2 | and_ln147_fu_683_p2);

assign or_ln147_fu_653_p2 = (xor_ln147_fu_645_p2 | xor_ln147_4_fu_649_p2);

assign or_ln4_fu_608_p3 = {{tmp_s_fu_598_p4}, {add_ln105_reg_890}};

assign or_ln_fu_550_p3 = {{trunc_ln125_reg_884_pp0_iter6_reg}, {trunc_ln106_reg_837_pp0_iter6_reg}};

assign select_ln145_fu_304_p3 = ((trunc_ln144_reg_773[0:0] == 1'b1) ? a_1_q0 : a_0_q0);

assign shl_ln_fu_519_p3 = {{trunc_ln125_reg_884_pp0_iter6_reg}, {32'd0}};

assign sub_ln145_fu_290_p2 = (i_cast_reg_757 - j_17_reg_762);

assign tempReg_fu_615_p2 = (or_ln4_fu_608_p3 + zext_ln105_65_fu_594_p1);

assign temp_30_fu_500_p2 = (zext_ln130_54_fu_490_p1 + zext_ln130_53_fu_476_p1);

assign temp_fu_434_p2 = (zext_ln123_54_fu_430_p1 + zext_ln106_fu_415_p1);

assign tmp_147_fu_266_p3 = {{a_0_offset}, {lshr_ln_fu_257_p4}};

assign tmp_148_fu_278_p3 = {{a_1_offset}, {lshr_ln_fu_257_p4}};

assign tmp_fu_699_p3 = or_ln147_2_fu_693_p2[32'd63];

assign tmp_s_fu_598_p4 = {{add_ln133_fu_544_p2[63:32]}};

assign trunc_ln106_93_fu_363_p1 = grp_fu_522_p_dout0[31:0];

assign trunc_ln106_94_fu_367_p1 = grp_fu_526_p_dout0[31:0];

assign trunc_ln106_95_fu_371_p1 = grp_fu_530_p_dout0[31:0];

assign trunc_ln106_fu_359_p1 = grp_fu_518_p_dout0[31:0];

assign trunc_ln125_fu_450_p1 = temp_fu_434_p2[31:0];

assign trunc_ln130_fu_486_p1 = add_ln130_61_fu_480_p2[31:0];

assign trunc_ln144_fu_254_p1 = j_17_reg_762[0:0];

assign trunc_ln147_fu_672_p1 = tempReg_reg_905_pp0_iter8_reg[62:0];

assign u_fu_711_p2 = (zext_ln148_fu_707_p1 + t_out_i);

assign v_116_fu_556_p2 = (or_ln_fu_550_p3 + v_73_fu_92);

assign v_73_out = v_73_fu_92;

assign v_fu_630_p2 = (tempReg_reg_905 + u_62_out_i);

assign xor_ln105_6_fu_568_p2 = (v_73_fu_92 ^ shl_ln_fu_519_p3);

assign xor_ln105_7_fu_580_p2 = (v_116_fu_556_p2 ^ or_ln105_fu_574_p2);

assign xor_ln105_fu_562_p2 = (v_116_fu_556_p2 ^ shl_ln_fu_519_p3);

assign xor_ln147_4_fu_649_p2 = (u_62_out_load_reg_914 ^ tempReg_reg_905_pp0_iter8_reg);

assign xor_ln147_5_fu_675_p3 = {{xor_ln147_7_fu_666_p2}, {trunc_ln147_fu_672_p1}};

assign xor_ln147_6_fu_688_p2 = (v_reg_919 ^ or_ln147_fu_653_p2);

assign xor_ln147_7_fu_666_p2 = (bit_sel_fu_659_p3 ^ 1'd1);

assign xor_ln147_fu_645_p2 = (v_reg_919 ^ tempReg_reg_905_pp0_iter8_reg);

assign zext_ln105_61_fu_349_p1 = bl_reg_798;

assign zext_ln105_65_fu_594_p1 = carry_fu_586_p3;

assign zext_ln105_fu_339_p1 = al_reg_793;

assign zext_ln106_60_fu_454_p1 = tmp_150_reg_879;

assign zext_ln106_61_fu_457_p1 = tmp_151_reg_863_pp0_iter5_reg;

assign zext_ln106_62_fu_460_p1 = tmp_152_reg_869_pp0_iter5_reg;

assign zext_ln106_fu_415_p1 = tmp_149_reg_858;

assign zext_ln110_fu_344_p1 = ah_reg_803;

assign zext_ln112_fu_354_p1 = bh_reg_808;

assign zext_ln123_53_fu_421_p1 = trunc_ln106_93_reg_842;

assign zext_ln123_54_fu_430_p1 = add_ln123_fu_424_p2;

assign zext_ln123_fu_418_p1 = trunc_ln106_94_reg_847;

assign zext_ln130_53_fu_476_p1 = add_ln130_fu_470_p2;

assign zext_ln130_54_fu_490_p1 = add_ln130_61_fu_480_p2;

assign zext_ln130_fu_463_p1 = trunc_ln106_95_reg_852_pp0_iter5_reg;

assign zext_ln133_fu_540_p1 = and_ln133_4_fu_533_p3;

assign zext_ln143_cast_fu_208_p1 = zext_ln143;

assign zext_ln145_3_fu_273_p1 = tmp_147_fu_266_p3;

assign zext_ln145_4_fu_285_p1 = tmp_148_fu_278_p3;

assign zext_ln145_5_fu_299_p1 = add_ln145_fu_294_p2;

assign zext_ln148_fu_707_p1 = tmp_fu_699_p3;

always @ (posedge ap_clk) begin
    i_cast_reg_757[3] <= 1'b0;
    add_ln133_reg_900[31:0] <= 32'b00000000000000000000000000000000;
    add_ln133_reg_900_pp0_iter8_reg[31:0] <= 32'b00000000000000000000000000000000;
end

endmodule //sikep503_kem_enc_hw_mp_mul_89_90_Pipeline_VITIS_LOOP_144_2
