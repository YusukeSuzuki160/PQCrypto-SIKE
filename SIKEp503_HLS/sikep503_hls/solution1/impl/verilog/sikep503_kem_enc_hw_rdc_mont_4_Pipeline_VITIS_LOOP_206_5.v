// ==============================================================
// Generated by Vitis HLS v2024.2.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module sikep503_kem_enc_hw_rdc_mont_4_Pipeline_VITIS_LOOP_206_5 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        indvars_iv,
        v_15,
        u_13,
        sub66,
        R_Z_address0,
        R_Z_ce0,
        R_Z_q0,
        empty,
        v_22_out,
        v_22_out_ap_vld,
        u_20_out,
        u_20_out_ap_vld,
        t_10_out,
        t_10_out_ap_vld,
        grp_fu_837_p_din0,
        grp_fu_837_p_din1,
        grp_fu_837_p_dout0,
        grp_fu_837_p_ce,
        grp_fu_841_p_din0,
        grp_fu_841_p_din1,
        grp_fu_841_p_dout0,
        grp_fu_841_p_ce,
        grp_fu_845_p_din0,
        grp_fu_845_p_din1,
        grp_fu_845_p_dout0,
        grp_fu_845_p_ce,
        grp_fu_849_p_din0,
        grp_fu_849_p_din1,
        grp_fu_849_p_dout0,
        grp_fu_849_p_ce
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [2:0] indvars_iv;
input  [63:0] v_15;
input  [63:0] u_13;
input  [31:0] sub66;
output  [3:0] R_Z_address0;
output   R_Z_ce0;
input  [63:0] R_Z_q0;
input  [2:0] empty;
output  [63:0] v_22_out;
output   v_22_out_ap_vld;
output  [63:0] u_20_out;
output   u_20_out_ap_vld;
output  [63:0] t_10_out;
output   t_10_out_ap_vld;
output  [31:0] grp_fu_837_p_din0;
output  [31:0] grp_fu_837_p_din1;
input  [63:0] grp_fu_837_p_dout0;
output   grp_fu_837_p_ce;
output  [31:0] grp_fu_841_p_din0;
output  [31:0] grp_fu_841_p_din1;
input  [63:0] grp_fu_841_p_dout0;
output   grp_fu_841_p_ce;
output  [31:0] grp_fu_845_p_din0;
output  [31:0] grp_fu_845_p_din1;
input  [63:0] grp_fu_845_p_dout0;
output   grp_fu_845_p_ce;
output  [31:0] grp_fu_849_p_din0;
output  [31:0] grp_fu_849_p_din1;
input  [63:0] grp_fu_849_p_dout0;
output   grp_fu_849_p_ce;

reg ap_idle;
reg v_22_out_ap_vld;
reg u_20_out_ap_vld;
reg t_10_out_ap_vld;

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
wire   [0:0] icmp_ln206_fu_222_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [2:0] p503p1_1_address0;
wire   [63:0] p503p1_1_q0;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln206_reg_753;
reg   [0:0] icmp_ln206_reg_753_pp0_iter1_reg;
reg   [0:0] icmp_ln206_reg_753_pp0_iter2_reg;
reg   [0:0] icmp_ln206_reg_753_pp0_iter3_reg;
reg   [0:0] icmp_ln206_reg_753_pp0_iter4_reg;
reg   [0:0] icmp_ln206_reg_753_pp0_iter5_reg;
reg   [0:0] icmp_ln206_reg_753_pp0_iter6_reg;
reg   [0:0] icmp_ln206_reg_753_pp0_iter7_reg;
wire   [0:0] icmp_ln207_fu_240_p2;
reg   [0:0] icmp_ln207_reg_757;
reg   [0:0] icmp_ln207_reg_757_pp0_iter1_reg;
reg   [0:0] icmp_ln207_reg_757_pp0_iter2_reg;
reg   [0:0] icmp_ln207_reg_757_pp0_iter3_reg;
reg   [0:0] icmp_ln207_reg_757_pp0_iter4_reg;
reg   [0:0] icmp_ln207_reg_757_pp0_iter5_reg;
reg   [0:0] icmp_ln207_reg_757_pp0_iter6_reg;
reg   [0:0] icmp_ln207_reg_757_pp0_iter7_reg;
reg   [0:0] icmp_ln207_reg_757_pp0_iter8_reg;
wire   [31:0] al_fu_295_p1;
reg   [31:0] al_reg_774;
wire   [31:0] bl_fu_299_p1;
reg   [31:0] bl_reg_779;
reg   [31:0] ah_reg_784;
reg   [31:0] bh_reg_789;
wire   [63:0] zext_ln105_8_fu_323_p1;
wire   [63:0] zext_ln110_fu_328_p1;
wire   [63:0] zext_ln105_fu_333_p1;
wire   [63:0] zext_ln112_fu_338_p1;
wire   [31:0] trunc_ln106_fu_343_p1;
reg   [31:0] trunc_ln106_reg_818;
reg   [31:0] trunc_ln106_reg_818_pp0_iter4_reg;
reg   [31:0] trunc_ln106_reg_818_pp0_iter5_reg;
reg   [31:0] trunc_ln106_reg_818_pp0_iter6_reg;
wire   [31:0] trunc_ln106_14_fu_347_p1;
reg   [31:0] trunc_ln106_14_reg_823;
wire   [31:0] trunc_ln106_15_fu_351_p1;
reg   [31:0] trunc_ln106_15_reg_828;
wire   [31:0] trunc_ln106_16_fu_355_p1;
reg   [31:0] trunc_ln106_16_reg_833;
reg   [31:0] tmp_s_reg_838;
reg   [31:0] tmp_17_reg_843;
reg   [31:0] trunc_ln106_s_reg_848;
reg   [31:0] trunc_ln106_s_reg_848_pp0_iter4_reg;
reg   [31:0] tmp_18_reg_853;
reg   [31:0] tmp_18_reg_853_pp0_iter4_reg;
reg   [31:0] tmp_18_reg_853_pp0_iter5_reg;
reg   [1:0] tmp_16_reg_858;
wire   [31:0] trunc_ln125_fu_434_p1;
reg   [31:0] trunc_ln125_reg_863;
reg   [31:0] trunc_ln125_reg_863_pp0_iter5_reg;
reg   [31:0] trunc_ln125_reg_863_pp0_iter6_reg;
wire   [32:0] add_ln130_fu_444_p2;
reg   [32:0] add_ln130_reg_869;
wire   [31:0] trunc_ln105_fu_471_p1;
reg   [31:0] trunc_ln105_reg_874;
reg   [1:0] tmp_19_reg_879;
wire   [63:0] xor_ln210_fu_512_p2;
reg   [63:0] xor_ln210_reg_884;
reg   [63:0] xor_ln210_reg_884_pp0_iter7_reg;
reg   [63:0] xor_ln210_reg_884_pp0_iter8_reg;
wire   [63:0] tempReg_5_fu_576_p2;
reg   [63:0] tempReg_5_reg_890;
reg   [63:0] tempReg_5_reg_890_pp0_iter8_reg;
reg   [0:0] tmp_22_reg_899;
wire   [31:0] zext_ln208_fu_268_p1;
wire    ap_block_pp0_stage0;
wire   [31:0] zext_ln208_2_fu_279_p1;
reg   [63:0] t_fu_86;
wire   [63:0] t_5_fu_698_p3;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg   [63:0] u_fu_90;
wire   [63:0] u_5_fu_631_p3;
reg   [63:0] v_fu_94;
wire   [63:0] v_5_fu_581_p3;
reg   [3:0] j_2_fu_98;
wire   [3:0] indvars_iv_cast_fu_195_p1;
wire   [3:0] add_ln206_fu_284_p2;
reg   [3:0] ap_sig_allocacmp_j;
wire    ap_block_pp0_stage0_01001;
reg    R_Z_ce0_local;
reg    p503p1_1_ce0_local;
wire   [31:0] zext_ln206_1_fu_232_p1;
wire   [6:0] zext_ln206_fu_228_p1;
wire   [0:0] bit_sel7_fu_246_p3;
wire   [0:0] xor_ln208_fu_254_p2;
wire   [2:0] trunc_ln206_fu_236_p1;
wire   [3:0] xor_ln_fu_260_p3;
wire   [2:0] sub_ln208_fu_273_p2;
wire   [32:0] zext_ln123_fu_402_p1;
wire   [32:0] zext_ln123_5_fu_405_p1;
wire   [32:0] add_ln123_fu_408_p2;
wire   [33:0] zext_ln123_6_fu_414_p1;
wire   [33:0] zext_ln106_fu_399_p1;
wire   [33:0] temp_fu_418_p2;
wire   [32:0] zext_ln130_fu_441_p1;
wire   [32:0] zext_ln106_6_fu_438_p1;
wire   [31:0] zext_ln106_5_fu_450_p1;
wire   [31:0] add_ln130_6_fu_456_p2;
wire   [33:0] zext_ln130_6_fu_461_p1;
wire   [33:0] zext_ln130_5_fu_453_p1;
wire   [33:0] temp_5_fu_465_p2;
wire   [33:0] and_ln210_2_fu_492_p3;
wire   [63:0] zext_ln210_fu_499_p1;
wire   [63:0] and_ln2_fu_485_p3;
wire   [63:0] add_ln210_fu_506_p2;
wire   [63:0] zext_ln210_2_fu_503_p1;
wire   [63:0] tempReg_fu_528_p3;
wire   [63:0] shl_ln125_2_fu_521_p3;
wire   [63:0] v_16_fu_534_p2;
wire   [63:0] xor_ln105_22_fu_546_p2;
wire   [63:0] xor_ln105_fu_540_p2;
wire   [63:0] or_ln105_fu_552_p2;
wire   [63:0] xor_ln105_23_fu_558_p2;
wire   [0:0] carry_fu_564_p3;
wire   [63:0] zext_ln105_9_fu_572_p1;
wire   [63:0] u_14_fu_596_p2;
wire   [63:0] xor_ln105_26_fu_606_p2;
wire   [63:0] xor_ln105_25_fu_601_p2;
wire   [63:0] or_ln105_4_fu_611_p2;
wire   [63:0] xor_ln105_27_fu_617_p2;
wire   [0:0] bit_sel4_fu_646_p3;
wire   [0:0] xor_ln105_24_fu_653_p2;
wire   [62:0] trunc_ln105_6_fu_659_p1;
wire   [63:0] xor_ln105_s_fu_662_p3;
wire   [63:0] and_ln105_fu_670_p2;
wire   [0:0] tmp_21_fu_675_p3;
wire   [0:0] carry_8_fu_683_p2;
wire   [63:0] zext_ln211_fu_688_p1;
wire   [63:0] t_7_fu_692_p2;
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
#0 t_fu_86 = 64'd0;
#0 u_fu_90 = 64'd0;
#0 v_fu_94 = 64'd0;
#0 j_2_fu_98 = 4'd0;
#0 ap_done_reg = 1'b0;
end

sikep503_kem_enc_hw_rdc_mont_14183_Pipeline_VITIS_LOOP_185_3_p503p1_1_ROM_AUTO_1R #(
    .DataWidth( 64 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
p503p1_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(p503p1_1_address0),
    .ce0(p503p1_1_ce0_local),
    .q0(p503p1_1_q0)
);

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
        if (((icmp_ln206_fu_222_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_2_fu_98 <= add_ln206_fu_284_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_2_fu_98 <= indvars_iv_cast_fu_195_p1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            t_fu_86 <= 64'd0;
        end else if ((ap_enable_reg_pp0_iter9 == 1'b1)) begin
            t_fu_86 <= t_5_fu_698_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            u_fu_90 <= u_13;
        end else if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
            u_fu_90 <= u_5_fu_631_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v_fu_94 <= v_15;
        end else if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
            v_fu_94 <= v_5_fu_581_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln130_reg_869 <= add_ln130_fu_444_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        icmp_ln206_reg_753_pp0_iter2_reg <= icmp_ln206_reg_753_pp0_iter1_reg;
        icmp_ln206_reg_753_pp0_iter3_reg <= icmp_ln206_reg_753_pp0_iter2_reg;
        icmp_ln206_reg_753_pp0_iter4_reg <= icmp_ln206_reg_753_pp0_iter3_reg;
        icmp_ln206_reg_753_pp0_iter5_reg <= icmp_ln206_reg_753_pp0_iter4_reg;
        icmp_ln206_reg_753_pp0_iter6_reg <= icmp_ln206_reg_753_pp0_iter5_reg;
        icmp_ln206_reg_753_pp0_iter7_reg <= icmp_ln206_reg_753_pp0_iter6_reg;
        icmp_ln207_reg_757_pp0_iter2_reg <= icmp_ln207_reg_757_pp0_iter1_reg;
        icmp_ln207_reg_757_pp0_iter3_reg <= icmp_ln207_reg_757_pp0_iter2_reg;
        icmp_ln207_reg_757_pp0_iter4_reg <= icmp_ln207_reg_757_pp0_iter3_reg;
        icmp_ln207_reg_757_pp0_iter5_reg <= icmp_ln207_reg_757_pp0_iter4_reg;
        icmp_ln207_reg_757_pp0_iter6_reg <= icmp_ln207_reg_757_pp0_iter5_reg;
        icmp_ln207_reg_757_pp0_iter7_reg <= icmp_ln207_reg_757_pp0_iter6_reg;
        icmp_ln207_reg_757_pp0_iter8_reg <= icmp_ln207_reg_757_pp0_iter7_reg;
        tempReg_5_reg_890 <= tempReg_5_fu_576_p2;
        tempReg_5_reg_890_pp0_iter8_reg <= tempReg_5_reg_890;
        tmp_16_reg_858 <= {{temp_fu_418_p2[33:32]}};
        tmp_17_reg_843 <= {{grp_fu_845_p_dout0[63:32]}};
        tmp_18_reg_853 <= {{grp_fu_849_p_dout0[63:32]}};
        tmp_18_reg_853_pp0_iter4_reg <= tmp_18_reg_853;
        tmp_18_reg_853_pp0_iter5_reg <= tmp_18_reg_853_pp0_iter4_reg;
        tmp_19_reg_879 <= {{temp_5_fu_465_p2[33:32]}};
        tmp_22_reg_899 <= xor_ln105_27_fu_617_p2[32'd63];
        tmp_s_reg_838 <= {{grp_fu_837_p_dout0[63:32]}};
        trunc_ln105_reg_874 <= trunc_ln105_fu_471_p1;
        trunc_ln106_14_reg_823 <= trunc_ln106_14_fu_347_p1;
        trunc_ln106_15_reg_828 <= trunc_ln106_15_fu_351_p1;
        trunc_ln106_16_reg_833 <= trunc_ln106_16_fu_355_p1;
        trunc_ln106_reg_818 <= trunc_ln106_fu_343_p1;
        trunc_ln106_reg_818_pp0_iter4_reg <= trunc_ln106_reg_818;
        trunc_ln106_reg_818_pp0_iter5_reg <= trunc_ln106_reg_818_pp0_iter4_reg;
        trunc_ln106_reg_818_pp0_iter6_reg <= trunc_ln106_reg_818_pp0_iter5_reg;
        trunc_ln106_s_reg_848 <= {{grp_fu_841_p_dout0[63:32]}};
        trunc_ln106_s_reg_848_pp0_iter4_reg <= trunc_ln106_s_reg_848;
        trunc_ln125_reg_863 <= trunc_ln125_fu_434_p1;
        trunc_ln125_reg_863_pp0_iter5_reg <= trunc_ln125_reg_863;
        trunc_ln125_reg_863_pp0_iter6_reg <= trunc_ln125_reg_863_pp0_iter5_reg;
        xor_ln210_reg_884 <= xor_ln210_fu_512_p2;
        xor_ln210_reg_884_pp0_iter7_reg <= xor_ln210_reg_884;
        xor_ln210_reg_884_pp0_iter8_reg <= xor_ln210_reg_884_pp0_iter7_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ah_reg_784 <= {{R_Z_q0[63:32]}};
        al_reg_774 <= al_fu_295_p1;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        bh_reg_789 <= {{p503p1_1_q0[63:32]}};
        bl_reg_779 <= bl_fu_299_p1;
        icmp_ln206_reg_753 <= icmp_ln206_fu_222_p2;
        icmp_ln206_reg_753_pp0_iter1_reg <= icmp_ln206_reg_753;
        icmp_ln207_reg_757 <= icmp_ln207_fu_240_p2;
        icmp_ln207_reg_757_pp0_iter1_reg <= icmp_ln207_reg_757;
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
    if (((icmp_ln206_fu_222_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_j = indvars_iv_cast_fu_195_p1;
    end else begin
        ap_sig_allocacmp_j = j_2_fu_98;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p503p1_1_ce0_local = 1'b1;
    end else begin
        p503p1_1_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln206_reg_753_pp0_iter7_reg == 1'd1))) begin
        t_10_out_ap_vld = 1'b1;
    end else begin
        t_10_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln206_reg_753_pp0_iter7_reg == 1'd1))) begin
        u_20_out_ap_vld = 1'b1;
    end else begin
        u_20_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln206_reg_753_pp0_iter7_reg == 1'd1))) begin
        v_22_out_ap_vld = 1'b1;
    end else begin
        v_22_out_ap_vld = 1'b0;
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

assign R_Z_address0 = zext_ln208_fu_268_p1;

assign R_Z_ce0 = R_Z_ce0_local;

assign add_ln123_fu_408_p2 = (zext_ln123_fu_402_p1 + zext_ln123_5_fu_405_p1);

assign add_ln130_6_fu_456_p2 = (trunc_ln106_s_reg_848_pp0_iter4_reg + zext_ln106_5_fu_450_p1);

assign add_ln130_fu_444_p2 = (zext_ln130_fu_441_p1 + zext_ln106_6_fu_438_p1);

assign add_ln206_fu_284_p2 = (ap_sig_allocacmp_j + 4'd1);

assign add_ln210_fu_506_p2 = (zext_ln210_fu_499_p1 + and_ln2_fu_485_p3);

assign al_fu_295_p1 = R_Z_q0[31:0];

assign and_ln105_fu_670_p2 = (xor_ln210_reg_884_pp0_iter8_reg & xor_ln105_s_fu_662_p3);

assign and_ln210_2_fu_492_p3 = {{tmp_19_reg_879}, {32'd0}};

assign and_ln2_fu_485_p3 = {{tmp_18_reg_853_pp0_iter5_reg}, {32'd0}};

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

assign bit_sel4_fu_646_p3 = tempReg_5_reg_890_pp0_iter8_reg[64'd63];

assign bit_sel7_fu_246_p3 = zext_ln206_fu_228_p1[7'd3];

assign bl_fu_299_p1 = p503p1_1_q0[31:0];

assign carry_8_fu_683_p2 = (tmp_22_reg_899 | tmp_21_fu_675_p3);

assign carry_fu_564_p3 = xor_ln105_23_fu_558_p2[32'd63];

assign grp_fu_837_p_ce = 1'b1;

assign grp_fu_837_p_din0 = zext_ln105_fu_333_p1;

assign grp_fu_837_p_din1 = zext_ln105_8_fu_323_p1;

assign grp_fu_841_p_ce = 1'b1;

assign grp_fu_841_p_din0 = zext_ln112_fu_338_p1;

assign grp_fu_841_p_din1 = zext_ln105_8_fu_323_p1;

assign grp_fu_845_p_ce = 1'b1;

assign grp_fu_845_p_din0 = zext_ln105_fu_333_p1;

assign grp_fu_845_p_din1 = zext_ln110_fu_328_p1;

assign grp_fu_849_p_ce = 1'b1;

assign grp_fu_849_p_din0 = zext_ln112_fu_338_p1;

assign grp_fu_849_p_din1 = zext_ln110_fu_328_p1;

assign icmp_ln206_fu_222_p2 = ((ap_sig_allocacmp_j == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln207_fu_240_p2 = ((zext_ln206_1_fu_232_p1 < sub66) ? 1'b1 : 1'b0);

assign indvars_iv_cast_fu_195_p1 = indvars_iv;

assign or_ln105_4_fu_611_p2 = (xor_ln105_26_fu_606_p2 | xor_ln105_25_fu_601_p2);

assign or_ln105_fu_552_p2 = (xor_ln105_fu_540_p2 | xor_ln105_22_fu_546_p2);

assign p503p1_1_address0 = zext_ln208_2_fu_279_p1;

assign shl_ln125_2_fu_521_p3 = {{trunc_ln125_reg_863_pp0_iter6_reg}, {32'd0}};

assign sub_ln208_fu_273_p2 = (empty - trunc_ln206_fu_236_p1);

assign t_10_out = t_fu_86;

assign t_5_fu_698_p3 = ((icmp_ln207_reg_757_pp0_iter8_reg[0:0] == 1'b1) ? t_7_fu_692_p2 : t_fu_86);

assign t_7_fu_692_p2 = (t_fu_86 + zext_ln211_fu_688_p1);

assign tempReg_5_fu_576_p2 = (xor_ln210_reg_884 + zext_ln105_9_fu_572_p1);

assign tempReg_fu_528_p3 = {{trunc_ln125_reg_863_pp0_iter6_reg}, {trunc_ln106_reg_818_pp0_iter6_reg}};

assign temp_5_fu_465_p2 = (zext_ln130_6_fu_461_p1 + zext_ln130_5_fu_453_p1);

assign temp_fu_418_p2 = (zext_ln123_6_fu_414_p1 + zext_ln106_fu_399_p1);

assign tmp_21_fu_675_p3 = and_ln105_fu_670_p2[32'd63];

assign trunc_ln105_6_fu_659_p1 = tempReg_5_reg_890_pp0_iter8_reg[62:0];

assign trunc_ln105_fu_471_p1 = temp_5_fu_465_p2[31:0];

assign trunc_ln106_14_fu_347_p1 = grp_fu_841_p_dout0[31:0];

assign trunc_ln106_15_fu_351_p1 = grp_fu_845_p_dout0[31:0];

assign trunc_ln106_16_fu_355_p1 = grp_fu_849_p_dout0[31:0];

assign trunc_ln106_fu_343_p1 = grp_fu_837_p_dout0[31:0];

assign trunc_ln125_fu_434_p1 = temp_fu_418_p2[31:0];

assign trunc_ln206_fu_236_p1 = ap_sig_allocacmp_j[2:0];

assign u_14_fu_596_p2 = (tempReg_5_reg_890 + u_fu_90);

assign u_20_out = u_fu_90;

assign u_5_fu_631_p3 = ((icmp_ln207_reg_757_pp0_iter7_reg[0:0] == 1'b1) ? u_14_fu_596_p2 : u_fu_90);

assign v_16_fu_534_p2 = (tempReg_fu_528_p3 + v_fu_94);

assign v_22_out = v_fu_94;

assign v_5_fu_581_p3 = ((icmp_ln207_reg_757_pp0_iter6_reg[0:0] == 1'b1) ? v_16_fu_534_p2 : v_fu_94);

assign xor_ln105_22_fu_546_p2 = (v_fu_94 ^ shl_ln125_2_fu_521_p3);

assign xor_ln105_23_fu_558_p2 = (v_16_fu_534_p2 ^ or_ln105_fu_552_p2);

assign xor_ln105_24_fu_653_p2 = (bit_sel4_fu_646_p3 ^ 1'd1);

assign xor_ln105_25_fu_601_p2 = (u_14_fu_596_p2 ^ tempReg_5_reg_890);

assign xor_ln105_26_fu_606_p2 = (u_fu_90 ^ tempReg_5_reg_890);

assign xor_ln105_27_fu_617_p2 = (u_14_fu_596_p2 ^ or_ln105_4_fu_611_p2);

assign xor_ln105_fu_540_p2 = (v_16_fu_534_p2 ^ shl_ln125_2_fu_521_p3);

assign xor_ln105_s_fu_662_p3 = {{xor_ln105_24_fu_653_p2}, {trunc_ln105_6_fu_659_p1}};

assign xor_ln208_fu_254_p2 = (bit_sel7_fu_246_p3 ^ 1'd1);

assign xor_ln210_fu_512_p2 = (zext_ln210_2_fu_503_p1 ^ add_ln210_fu_506_p2);

assign xor_ln_fu_260_p3 = {{xor_ln208_fu_254_p2}, {trunc_ln206_fu_236_p1}};

assign zext_ln105_8_fu_323_p1 = al_reg_774;

assign zext_ln105_9_fu_572_p1 = carry_fu_564_p3;

assign zext_ln105_fu_333_p1 = bl_reg_779;

assign zext_ln106_5_fu_450_p1 = tmp_16_reg_858;

assign zext_ln106_6_fu_438_p1 = tmp_17_reg_843;

assign zext_ln106_fu_399_p1 = tmp_s_reg_838;

assign zext_ln110_fu_328_p1 = ah_reg_784;

assign zext_ln112_fu_338_p1 = bh_reg_789;

assign zext_ln123_5_fu_405_p1 = trunc_ln106_14_reg_823;

assign zext_ln123_6_fu_414_p1 = add_ln123_fu_408_p2;

assign zext_ln123_fu_402_p1 = trunc_ln106_15_reg_828;

assign zext_ln130_5_fu_453_p1 = add_ln130_reg_869;

assign zext_ln130_6_fu_461_p1 = add_ln130_6_fu_456_p2;

assign zext_ln130_fu_441_p1 = trunc_ln106_16_reg_833;

assign zext_ln206_1_fu_232_p1 = ap_sig_allocacmp_j;

assign zext_ln206_fu_228_p1 = ap_sig_allocacmp_j;

assign zext_ln208_2_fu_279_p1 = sub_ln208_fu_273_p2;

assign zext_ln208_fu_268_p1 = xor_ln_fu_260_p3;

assign zext_ln210_2_fu_503_p1 = trunc_ln105_reg_874;

assign zext_ln210_fu_499_p1 = and_ln210_2_fu_492_p3;

assign zext_ln211_fu_688_p1 = carry_8_fu_683_p2;

endmodule //sikep503_kem_enc_hw_rdc_mont_4_Pipeline_VITIS_LOOP_206_5
