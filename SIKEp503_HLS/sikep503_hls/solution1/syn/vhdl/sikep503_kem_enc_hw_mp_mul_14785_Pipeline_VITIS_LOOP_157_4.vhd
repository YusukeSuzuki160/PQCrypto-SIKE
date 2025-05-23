-- ==============================================================
-- Generated by Vitis HLS v2024.2.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sikep503_kem_enc_hw_mp_mul_14785_Pipeline_VITIS_LOOP_157_4 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    indvars_iv : IN STD_LOGIC_VECTOR (2 downto 0);
    v : IN STD_LOGIC_VECTOR (63 downto 0);
    zext_ln156 : IN STD_LOGIC_VECTOR (3 downto 0);
    zext_ln145_25 : IN STD_LOGIC_VECTOR (3 downto 0);
    a_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    a_ce0 : OUT STD_LOGIC;
    a_q0 : IN STD_LOGIC_VECTOR (63 downto 0);
    i_25 : IN STD_LOGIC_VECTOR (3 downto 0);
    zext_ln145 : IN STD_LOGIC_VECTOR (3 downto 0);
    b_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    b_ce0 : OUT STD_LOGIC;
    b_q0 : IN STD_LOGIC_VECTOR (63 downto 0);
    v_35_out : OUT STD_LOGIC_VECTOR (63 downto 0);
    v_35_out_ap_vld : OUT STD_LOGIC;
    u_34_out_i : IN STD_LOGIC_VECTOR (63 downto 0);
    u_34_out_o : OUT STD_LOGIC_VECTOR (63 downto 0);
    u_34_out_o_ap_vld : OUT STD_LOGIC;
    t_33_out : OUT STD_LOGIC_VECTOR (2 downto 0);
    t_33_out_ap_vld : OUT STD_LOGIC;
    grp_fu_480_p_din0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_480_p_din1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_480_p_dout0 : IN STD_LOGIC_VECTOR (63 downto 0);
    grp_fu_480_p_ce : OUT STD_LOGIC;
    grp_fu_484_p_din0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_484_p_din1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_484_p_dout0 : IN STD_LOGIC_VECTOR (63 downto 0);
    grp_fu_484_p_ce : OUT STD_LOGIC;
    grp_fu_488_p_din0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_488_p_din1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_488_p_dout0 : IN STD_LOGIC_VECTOR (63 downto 0);
    grp_fu_488_p_ce : OUT STD_LOGIC;
    grp_fu_492_p_din0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_492_p_din1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_492_p_dout0 : IN STD_LOGIC_VECTOR (63 downto 0);
    grp_fu_492_p_ce : OUT STD_LOGIC );
end;


architecture behav of sikep503_kem_enc_hw_mp_mul_14785_Pipeline_VITIS_LOOP_157_4 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv32_21 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100001";
    constant ap_const_lv64_3F : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000111111";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter4 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter5 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter6 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter7 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter8 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter9 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln157_fu_220_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal j_reg_716 : STD_LOGIC_VECTOR (3 downto 0);
    signal icmp_ln157_reg_722 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln157_reg_722_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln157_reg_722_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln157_reg_722_pp0_iter3_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln157_reg_722_pp0_iter4_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln157_reg_722_pp0_iter5_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln157_reg_722_pp0_iter6_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln157_reg_722_pp0_iter7_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal al_fu_260_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal al_reg_736 : STD_LOGIC_VECTOR (31 downto 0);
    signal bl_fu_264_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bl_reg_741 : STD_LOGIC_VECTOR (31 downto 0);
    signal ah_reg_746 : STD_LOGIC_VECTOR (31 downto 0);
    signal bh_reg_751 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln105_fu_288_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln110_fu_293_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln105_141_fu_298_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln112_fu_303_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln106_fu_308_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln106_reg_780 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln106_reg_780_pp0_iter5_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln106_reg_780_pp0_iter6_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln106_210_fu_312_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln106_210_reg_785 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln106_211_fu_316_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln106_211_reg_790 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln106_212_fu_320_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln106_212_reg_795 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln106_212_reg_795_pp0_iter5_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_s_reg_801 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_376_reg_806 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_376_reg_806_pp0_iter5_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_377_reg_812 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_377_reg_812_pp0_iter5_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_378_reg_817 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_378_reg_817_pp0_iter5_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_378_reg_817_pp0_iter6_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_375_reg_822 : STD_LOGIC_VECTOR (1 downto 0);
    signal trunc_ln125_fu_399_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln125_reg_827 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln125_reg_827_pp0_iter6_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln105_fu_443_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln105_reg_833 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_379_reg_838 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln133_fu_493_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal add_ln133_reg_843 : STD_LOGIC_VECTOR (63 downto 0);
    signal add_ln133_reg_843_pp0_iter8_reg : STD_LOGIC_VECTOR (63 downto 0);
    signal tempReg_fu_564_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tempReg_reg_848 : STD_LOGIC_VECTOR (63 downto 0);
    signal tempReg_reg_848_pp0_iter8_reg : STD_LOGIC_VECTOR (63 downto 0);
    signal u_34_out_load_reg_857 : STD_LOGIC_VECTOR (63 downto 0);
    signal u_fu_579_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal u_reg_862 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln158_fu_241_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln158_27_fu_255_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln156_cast_fu_188_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal t_33_fu_84 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    signal t_fu_659_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter3_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter4_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter5_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter6_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter7_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter8_reg : STD_LOGIC;
    signal v_35_fu_88 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    signal v_175_fu_505_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal j_19_fu_92 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal indvars_iv_cast_fu_192_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln157_fu_226_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_sig_allocacmp_j : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal a_ce0_local : STD_LOGIC;
    signal b_ce0_local : STD_LOGIC;
    signal add_ln158_fu_237_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal sub_ln158_fu_246_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln158_10_fu_250_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln123_fu_367_p1 : STD_LOGIC_VECTOR (32 downto 0);
    signal zext_ln123_131_fu_370_p1 : STD_LOGIC_VECTOR (32 downto 0);
    signal add_ln123_fu_373_p2 : STD_LOGIC_VECTOR (32 downto 0);
    signal zext_ln123_132_fu_379_p1 : STD_LOGIC_VECTOR (33 downto 0);
    signal zext_ln106_fu_364_p1 : STD_LOGIC_VECTOR (33 downto 0);
    signal temp_fu_383_p2 : STD_LOGIC_VECTOR (33 downto 0);
    signal zext_ln130_fu_412_p1 : STD_LOGIC_VECTOR (32 downto 0);
    signal zext_ln106_176_fu_406_p1 : STD_LOGIC_VECTOR (32 downto 0);
    signal add_ln130_163_fu_419_p2 : STD_LOGIC_VECTOR (32 downto 0);
    signal zext_ln106_177_fu_409_p1 : STD_LOGIC_VECTOR (32 downto 0);
    signal zext_ln106_175_fu_403_p1 : STD_LOGIC_VECTOR (32 downto 0);
    signal add_ln130_164_fu_429_p2 : STD_LOGIC_VECTOR (32 downto 0);
    signal trunc_ln130_fu_435_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln130_fu_415_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln130_132_fu_439_p1 : STD_LOGIC_VECTOR (33 downto 0);
    signal zext_ln130_131_fu_425_p1 : STD_LOGIC_VECTOR (33 downto 0);
    signal temp_69_fu_449_p2 : STD_LOGIC_VECTOR (33 downto 0);
    signal and_ln133_15_fu_482_p3 : STD_LOGIC_VECTOR (33 downto 0);
    signal zext_ln133_fu_489_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal and_ln133_s_fu_475_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal or_ln_fu_499_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal shl_ln125_s_fu_468_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln105_63_fu_511_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln105_64_fu_517_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal or_ln105_13_fu_523_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln105_65_fu_529_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal carry_fu_535_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_44_fu_547_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal or_ln37_fu_557_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln105_142_fu_543_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln160_fu_593_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln160_37_fu_597_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal bit_sel1_fu_607_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln160_43_fu_614_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln160_fu_620_p1 : STD_LOGIC_VECTOR (62 downto 0);
    signal xor_ln160_s_fu_623_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal or_ln160_fu_601_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln160_39_fu_636_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal and_ln160_fu_631_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal or_ln160_22_fu_641_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_fu_647_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln161_fu_655_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ready_sig : STD_LOGIC;
    signal ap_done_sig : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component sikep503_kem_enc_hw_mul_32ns_32ns_64_2_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;


    component sikep503_kem_enc_hw_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component sikep503_kem_enc_hw_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready_sig,
        ap_done => ap_done_sig,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter8_reg = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter5_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter5 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter6_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter6 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter7_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter7 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter8_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter8 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter9_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter9 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
                end if; 
            end if;
        end if;
    end process;


    j_19_fu_92_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln157_fu_220_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    j_19_fu_92 <= add_ln157_fu_226_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    j_19_fu_92 <= indvars_iv_cast_fu_192_p1;
                end if;
            end if; 
        end if;
    end process;

    t_33_fu_84_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    t_33_fu_84 <= ap_const_lv3_0;
                elsif ((ap_enable_reg_pp0_iter9 = ap_const_logic_1)) then 
                    t_33_fu_84 <= t_fu_659_p2;
                end if;
            end if; 
        end if;
    end process;

    v_35_fu_88_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    v_35_fu_88 <= v;
                elsif ((ap_enable_reg_pp0_iter7 = ap_const_logic_1)) then 
                    v_35_fu_88 <= v_175_fu_505_p2;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                add_ln105_reg_833 <= add_ln105_fu_443_p2;
                    add_ln133_reg_843(63 downto 32) <= add_ln133_fu_493_p2(63 downto 32);
                    add_ln133_reg_843_pp0_iter8_reg(63 downto 32) <= add_ln133_reg_843(63 downto 32);
                ah_reg_746 <= a_q0(63 downto 32);
                al_reg_736 <= al_fu_260_p1;
                ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
                ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
                ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
                ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
                ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
                ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
                bh_reg_751 <= b_q0(63 downto 32);
                bl_reg_741 <= bl_fu_264_p1;
                icmp_ln157_reg_722_pp0_iter2_reg <= icmp_ln157_reg_722_pp0_iter1_reg;
                icmp_ln157_reg_722_pp0_iter3_reg <= icmp_ln157_reg_722_pp0_iter2_reg;
                icmp_ln157_reg_722_pp0_iter4_reg <= icmp_ln157_reg_722_pp0_iter3_reg;
                icmp_ln157_reg_722_pp0_iter5_reg <= icmp_ln157_reg_722_pp0_iter4_reg;
                icmp_ln157_reg_722_pp0_iter6_reg <= icmp_ln157_reg_722_pp0_iter5_reg;
                icmp_ln157_reg_722_pp0_iter7_reg <= icmp_ln157_reg_722_pp0_iter6_reg;
                tempReg_reg_848 <= tempReg_fu_564_p2;
                tempReg_reg_848_pp0_iter8_reg <= tempReg_reg_848;
                tmp_375_reg_822 <= temp_fu_383_p2(33 downto 32);
                tmp_376_reg_806 <= grp_fu_488_p_dout0(63 downto 32);
                tmp_376_reg_806_pp0_iter5_reg <= tmp_376_reg_806;
                tmp_377_reg_812 <= grp_fu_484_p_dout0(63 downto 32);
                tmp_377_reg_812_pp0_iter5_reg <= tmp_377_reg_812;
                tmp_378_reg_817 <= grp_fu_492_p_dout0(63 downto 32);
                tmp_378_reg_817_pp0_iter5_reg <= tmp_378_reg_817;
                tmp_378_reg_817_pp0_iter6_reg <= tmp_378_reg_817_pp0_iter5_reg;
                tmp_379_reg_838 <= temp_69_fu_449_p2(33 downto 32);
                tmp_s_reg_801 <= grp_fu_480_p_dout0(63 downto 32);
                trunc_ln106_210_reg_785 <= trunc_ln106_210_fu_312_p1;
                trunc_ln106_211_reg_790 <= trunc_ln106_211_fu_316_p1;
                trunc_ln106_212_reg_795 <= trunc_ln106_212_fu_320_p1;
                trunc_ln106_212_reg_795_pp0_iter5_reg <= trunc_ln106_212_reg_795;
                trunc_ln106_reg_780 <= trunc_ln106_fu_308_p1;
                trunc_ln106_reg_780_pp0_iter5_reg <= trunc_ln106_reg_780;
                trunc_ln106_reg_780_pp0_iter6_reg <= trunc_ln106_reg_780_pp0_iter5_reg;
                trunc_ln125_reg_827 <= trunc_ln125_fu_399_p1;
                trunc_ln125_reg_827_pp0_iter6_reg <= trunc_ln125_reg_827;
                u_34_out_load_reg_857 <= u_34_out_i;
                u_reg_862 <= u_fu_579_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
                icmp_ln157_reg_722 <= icmp_ln157_fu_220_p2;
                icmp_ln157_reg_722_pp0_iter1_reg <= icmp_ln157_reg_722;
                j_reg_716 <= ap_sig_allocacmp_j;
            end if;
        end if;
    end process;
    add_ln133_reg_843(31 downto 0) <= "00000000000000000000000000000000";
    add_ln133_reg_843_pp0_iter8_reg(31 downto 0) <= "00000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    a_address0 <= zext_ln158_fu_241_p1(4 - 1 downto 0);
    a_ce0 <= a_ce0_local;

    a_ce0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            a_ce0_local <= ap_const_logic_1;
        else 
            a_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    add_ln105_fu_443_p2 <= std_logic_vector(unsigned(trunc_ln130_fu_435_p1) + unsigned(add_ln130_fu_415_p2));
    add_ln123_fu_373_p2 <= std_logic_vector(unsigned(zext_ln123_fu_367_p1) + unsigned(zext_ln123_131_fu_370_p1));
    add_ln130_163_fu_419_p2 <= std_logic_vector(unsigned(zext_ln130_fu_412_p1) + unsigned(zext_ln106_176_fu_406_p1));
    add_ln130_164_fu_429_p2 <= std_logic_vector(unsigned(zext_ln106_177_fu_409_p1) + unsigned(zext_ln106_175_fu_403_p1));
    add_ln130_fu_415_p2 <= std_logic_vector(unsigned(trunc_ln106_212_reg_795_pp0_iter5_reg) + unsigned(tmp_376_reg_806_pp0_iter5_reg));
    add_ln133_fu_493_p2 <= std_logic_vector(unsigned(zext_ln133_fu_489_p1) + unsigned(and_ln133_s_fu_475_p3));
    add_ln157_fu_226_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_j) + unsigned(ap_const_lv4_1));
    add_ln158_10_fu_250_p2 <= std_logic_vector(unsigned(zext_ln145) + unsigned(sub_ln158_fu_246_p2));
    add_ln158_fu_237_p2 <= std_logic_vector(unsigned(zext_ln145_25) + unsigned(j_reg_716));
    al_fu_260_p1 <= a_q0(32 - 1 downto 0);
    and_ln133_15_fu_482_p3 <= (tmp_379_reg_838 & ap_const_lv32_0);
    and_ln133_s_fu_475_p3 <= (tmp_378_reg_817_pp0_iter6_reg & ap_const_lv32_0);
    and_ln160_fu_631_p2 <= (xor_ln160_s_fu_623_p3 and add_ln133_reg_843_pp0_iter8_reg);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln157_fu_220_p2)
    begin
        if (((icmp_ln157_fu_220_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_done <= ap_done_sig;

    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_loop_exit_ready_pp0_iter8_reg, ap_done_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter8_reg = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter4, ap_enable_reg_pp0_iter5, ap_enable_reg_pp0_iter6, ap_enable_reg_pp0_iter7, ap_enable_reg_pp0_iter8, ap_enable_reg_pp0_iter9)
    begin
        if (((ap_enable_reg_pp0_iter9 = ap_const_logic_0) and (ap_enable_reg_pp0_iter8 = ap_const_logic_0) and (ap_enable_reg_pp0_iter7 = ap_const_logic_0) and (ap_enable_reg_pp0_iter6 = ap_const_logic_0) and (ap_enable_reg_pp0_iter5 = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;
    ap_ready <= ap_ready_sig;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_j_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, j_19_fu_92, indvars_iv_cast_fu_192_p1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_j <= indvars_iv_cast_fu_192_p1;
        else 
            ap_sig_allocacmp_j <= j_19_fu_92;
        end if; 
    end process;

    b_address0 <= zext_ln158_27_fu_255_p1(4 - 1 downto 0);
    b_ce0 <= b_ce0_local;

    b_ce0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            b_ce0_local <= ap_const_logic_1;
        else 
            b_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    bit_sel1_fu_607_p3 <= tempReg_reg_848_pp0_iter8_reg(63 downto 63);
    bl_fu_264_p1 <= b_q0(32 - 1 downto 0);
    carry_fu_535_p3 <= xor_ln105_65_fu_529_p2(63 downto 63);
    grp_fu_480_p_ce <= ap_const_logic_1;
    grp_fu_480_p_din0 <= zext_ln105_141_fu_298_p1(32 - 1 downto 0);
    grp_fu_480_p_din1 <= zext_ln105_fu_288_p1(32 - 1 downto 0);
    grp_fu_484_p_ce <= ap_const_logic_1;
    grp_fu_484_p_din0 <= zext_ln112_fu_303_p1(32 - 1 downto 0);
    grp_fu_484_p_din1 <= zext_ln105_fu_288_p1(32 - 1 downto 0);
    grp_fu_488_p_ce <= ap_const_logic_1;
    grp_fu_488_p_din0 <= zext_ln105_141_fu_298_p1(32 - 1 downto 0);
    grp_fu_488_p_din1 <= zext_ln110_fu_293_p1(32 - 1 downto 0);
    grp_fu_492_p_ce <= ap_const_logic_1;
    grp_fu_492_p_din0 <= zext_ln112_fu_303_p1(32 - 1 downto 0);
    grp_fu_492_p_din1 <= zext_ln110_fu_293_p1(32 - 1 downto 0);
    icmp_ln157_fu_220_p2 <= "1" when (ap_sig_allocacmp_j = ap_const_lv4_8) else "0";
    indvars_iv_cast_fu_192_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(indvars_iv),4));
    or_ln105_13_fu_523_p2 <= (xor_ln105_64_fu_517_p2 or xor_ln105_63_fu_511_p2);
    or_ln160_22_fu_641_p2 <= (xor_ln160_39_fu_636_p2 or and_ln160_fu_631_p2);
    or_ln160_fu_601_p2 <= (xor_ln160_fu_593_p2 or xor_ln160_37_fu_597_p2);
    or_ln37_fu_557_p3 <= (tmp_44_fu_547_p4 & add_ln105_reg_833);
    or_ln_fu_499_p3 <= (trunc_ln125_reg_827_pp0_iter6_reg & trunc_ln106_reg_780_pp0_iter6_reg);
    shl_ln125_s_fu_468_p3 <= (trunc_ln125_reg_827_pp0_iter6_reg & ap_const_lv32_0);
    sub_ln158_fu_246_p2 <= std_logic_vector(unsigned(i_25) - unsigned(j_reg_716));
    t_33_out <= t_33_fu_84;

    t_33_out_ap_vld_assign_proc : process(ap_block_pp0_stage0_11001, icmp_ln157_reg_722_pp0_iter7_reg, ap_loop_exit_ready_pp0_iter8_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_loop_exit_ready_pp0_iter8_reg = ap_const_logic_1) and (icmp_ln157_reg_722_pp0_iter7_reg = ap_const_lv1_1))) then 
            t_33_out_ap_vld <= ap_const_logic_1;
        else 
            t_33_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    t_fu_659_p2 <= std_logic_vector(unsigned(zext_ln161_fu_655_p1) + unsigned(t_33_fu_84));
    tempReg_fu_564_p2 <= std_logic_vector(unsigned(or_ln37_fu_557_p3) + unsigned(zext_ln105_142_fu_543_p1));
    temp_69_fu_449_p2 <= std_logic_vector(unsigned(zext_ln130_132_fu_439_p1) + unsigned(zext_ln130_131_fu_425_p1));
    temp_fu_383_p2 <= std_logic_vector(unsigned(zext_ln123_132_fu_379_p1) + unsigned(zext_ln106_fu_364_p1));
    tmp_44_fu_547_p4 <= add_ln133_fu_493_p2(63 downto 32);
    tmp_fu_647_p3 <= or_ln160_22_fu_641_p2(63 downto 63);
    trunc_ln106_210_fu_312_p1 <= grp_fu_484_p_dout0(32 - 1 downto 0);
    trunc_ln106_211_fu_316_p1 <= grp_fu_488_p_dout0(32 - 1 downto 0);
    trunc_ln106_212_fu_320_p1 <= grp_fu_492_p_dout0(32 - 1 downto 0);
    trunc_ln106_fu_308_p1 <= grp_fu_480_p_dout0(32 - 1 downto 0);
    trunc_ln125_fu_399_p1 <= temp_fu_383_p2(32 - 1 downto 0);
    trunc_ln130_fu_435_p1 <= add_ln130_164_fu_429_p2(32 - 1 downto 0);
    trunc_ln160_fu_620_p1 <= tempReg_reg_848_pp0_iter8_reg(63 - 1 downto 0);

    u_34_out_o_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter8, u_34_out_i, u_fu_579_p2, ap_block_pp0_stage0, zext_ln156_cast_fu_188_p1, ap_loop_init)
    begin
        if ((ap_const_boolean_0 = ap_block_pp0_stage0)) then
            if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                u_34_out_o <= zext_ln156_cast_fu_188_p1;
            elsif ((ap_enable_reg_pp0_iter8 = ap_const_logic_1)) then 
                u_34_out_o <= u_fu_579_p2;
            else 
                u_34_out_o <= u_34_out_i;
            end if;
        else 
            u_34_out_o <= u_34_out_i;
        end if; 
    end process;


    u_34_out_o_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter8, ap_block_pp0_stage0_11001, ap_loop_init)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter8 = ap_const_logic_1)))) then 
            u_34_out_o_ap_vld <= ap_const_logic_1;
        else 
            u_34_out_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    u_fu_579_p2 <= std_logic_vector(unsigned(tempReg_reg_848) + unsigned(u_34_out_i));
    v_175_fu_505_p2 <= std_logic_vector(unsigned(or_ln_fu_499_p3) + unsigned(v_35_fu_88));
    v_35_out <= v_35_fu_88;

    v_35_out_ap_vld_assign_proc : process(ap_block_pp0_stage0_11001, icmp_ln157_reg_722_pp0_iter7_reg, ap_loop_exit_ready_pp0_iter8_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_loop_exit_ready_pp0_iter8_reg = ap_const_logic_1) and (icmp_ln157_reg_722_pp0_iter7_reg = ap_const_lv1_1))) then 
            v_35_out_ap_vld <= ap_const_logic_1;
        else 
            v_35_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    xor_ln105_63_fu_511_p2 <= (v_175_fu_505_p2 xor shl_ln125_s_fu_468_p3);
    xor_ln105_64_fu_517_p2 <= (v_35_fu_88 xor shl_ln125_s_fu_468_p3);
    xor_ln105_65_fu_529_p2 <= (v_175_fu_505_p2 xor or_ln105_13_fu_523_p2);
    xor_ln160_37_fu_597_p2 <= (u_34_out_load_reg_857 xor tempReg_reg_848_pp0_iter8_reg);
    xor_ln160_39_fu_636_p2 <= (u_reg_862 xor or_ln160_fu_601_p2);
    xor_ln160_43_fu_614_p2 <= (bit_sel1_fu_607_p3 xor ap_const_lv1_1);
    xor_ln160_fu_593_p2 <= (u_reg_862 xor tempReg_reg_848_pp0_iter8_reg);
    xor_ln160_s_fu_623_p3 <= (xor_ln160_43_fu_614_p2 & trunc_ln160_fu_620_p1);
    zext_ln105_141_fu_298_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(bl_reg_741),64));
    zext_ln105_142_fu_543_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(carry_fu_535_p3),64));
    zext_ln105_fu_288_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(al_reg_736),64));
    zext_ln106_175_fu_403_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_375_reg_822),33));
    zext_ln106_176_fu_406_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_376_reg_806_pp0_iter5_reg),33));
    zext_ln106_177_fu_409_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_377_reg_812_pp0_iter5_reg),33));
    zext_ln106_fu_364_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_reg_801),34));
    zext_ln110_fu_293_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ah_reg_746),64));
    zext_ln112_fu_303_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(bh_reg_751),64));
    zext_ln123_131_fu_370_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln106_210_reg_785),33));
    zext_ln123_132_fu_379_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln123_fu_373_p2),34));
    zext_ln123_fu_367_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln106_211_reg_790),33));
    zext_ln130_131_fu_425_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln130_163_fu_419_p2),34));
    zext_ln130_132_fu_439_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln130_164_fu_429_p2),34));
    zext_ln130_fu_412_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln106_212_reg_795_pp0_iter5_reg),33));
    zext_ln133_fu_489_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(and_ln133_15_fu_482_p3),64));
    zext_ln156_cast_fu_188_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(zext_ln156),64));
    zext_ln158_27_fu_255_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln158_10_fu_250_p2),32));
    zext_ln158_fu_241_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln158_fu_237_p2),32));
    zext_ln161_fu_655_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_647_p3),3));
end behav;
