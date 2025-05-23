-- ==============================================================
-- Generated by Vitis HLS v2024.2.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sikep503_kem_enc_hw_fpadd503_3_Pipeline_VITIS_LOOP_28_2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    coeff_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    coeff_ce0 : OUT STD_LOGIC;
    coeff_we0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    coeff_d0 : OUT STD_LOGIC_VECTOR (63 downto 0);
    coeff_address1 : OUT STD_LOGIC_VECTOR (5 downto 0);
    coeff_ce1 : OUT STD_LOGIC;
    coeff_q1 : IN STD_LOGIC_VECTOR (63 downto 0);
    carry_181_out : OUT STD_LOGIC_VECTOR (0 downto 0);
    carry_181_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of sikep503_kem_enc_hw_fpadd503_3_Pipeline_VITIS_LOOP_28_2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln28_fu_110_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal p503x2_1_address0 : STD_LOGIC_VECTOR (2 downto 0);
    signal p503x2_1_q0 : STD_LOGIC_VECTOR (63 downto 0);
    signal carry_reg_89 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln28_reg_223 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln28_reg_223_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal coeff_addr_reg_227 : STD_LOGIC_VECTOR (5 downto 0);
    signal coeff_addr_reg_227_pp0_iter1_reg : STD_LOGIC_VECTOR (5 downto 0);
    signal coeff_load_reg_238 : STD_LOGIC_VECTOR (63 downto 0);
    signal p503x2_1_load_reg_244 : STD_LOGIC_VECTOR (63 downto 0);
    signal tempReg_fu_137_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tempReg_reg_250 : STD_LOGIC_VECTOR (63 downto 0);
    signal borrowReg_fu_200_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_loop_init : STD_LOGIC;
    signal zext_ln29_18_fu_126_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_143_fu_48 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal add_ln28_fu_116_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_sig_allocacmp_i : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal coeff_ce1_local : STD_LOGIC;
    signal coeff_ce0_local : STD_LOGIC;
    signal coeff_we0_local : STD_LOGIC_VECTOR (7 downto 0);
    signal sub_ln29_fu_210_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal p503x2_1_ce0_local : STD_LOGIC;
    signal trunc_ln29_fu_122_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal xor_ln105_106_fu_147_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln105_fu_143_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal or_ln105_fu_151_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln105_107_fu_157_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal sub_ln95_fu_170_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal or_ln95_fu_175_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_211_fu_180_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln29_fu_188_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln29_fu_194_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_fu_162_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln29_fu_206_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ready_sig : STD_LOGIC;
    signal ap_done_sig : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component sikep503_kem_enc_hw_fpadd503_149_3_Pipeline_VITIS_LOOP_28_2_p503x2_1_ROM_AUTO_1R IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (2 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (63 downto 0) );
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
    p503x2_1_U : component sikep503_kem_enc_hw_fpadd503_149_3_Pipeline_VITIS_LOOP_28_2_p503x2_1_ROM_AUTO_1R
    generic map (
        DataWidth => 64,
        AddressRange => 8,
        AddressWidth => 3)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => p503x2_1_address0,
        ce0 => p503x2_1_ce0_local,
        q0 => p503x2_1_q0);

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
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1))) then 
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
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    carry_reg_89_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                carry_reg_89 <= ap_const_lv1_0;
            elsif (((icmp_ln28_reg_223_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
                carry_reg_89 <= borrowReg_fu_200_p2;
            end if; 
        end if;
    end process;

    i_143_fu_48_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln28_fu_110_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_143_fu_48 <= add_ln28_fu_116_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_143_fu_48 <= ap_const_lv4_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                    coeff_addr_reg_227(2 downto 0) <= zext_ln29_18_fu_126_p1(6 - 1 downto 0)(2 downto 0);
                    coeff_addr_reg_227_pp0_iter1_reg(2 downto 0) <= coeff_addr_reg_227(2 downto 0);
                icmp_ln28_reg_223 <= icmp_ln28_fu_110_p2;
                icmp_ln28_reg_223_pp0_iter1_reg <= icmp_ln28_reg_223;
                p503x2_1_load_reg_244 <= p503x2_1_q0;
                tempReg_reg_250 <= tempReg_fu_137_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                coeff_load_reg_238 <= coeff_q1;
            end if;
        end if;
    end process;
    coeff_addr_reg_227(5 downto 3) <= "000";
    coeff_addr_reg_227_pp0_iter1_reg(5 downto 3) <= "000";

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln28_fu_116_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i) + unsigned(ap_const_lv4_1));
    and_ln29_fu_194_p2 <= (xor_ln29_fu_188_p2 and carry_reg_89);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln28_fu_110_p2)
    begin
        if (((icmp_ln28_fu_110_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln28_reg_223)
    begin
        if (((icmp_ln28_reg_223 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_done <= ap_done_sig;

    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready_pp0_iter1_reg, ap_done_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
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


    ap_sig_allocacmp_i_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, i_143_fu_48)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i <= ap_const_lv4_0;
        else 
            ap_sig_allocacmp_i <= i_143_fu_48;
        end if; 
    end process;

    borrowReg_fu_200_p2 <= (tmp_fu_162_p3 or and_ln29_fu_194_p2);
    carry_181_out <= carry_reg_89;

    carry_181_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln28_reg_223, ap_block_pp0_stage0_11001, ap_loop_exit_ready_pp0_iter1_reg)
    begin
        if (((icmp_ln28_reg_223 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1))) then 
            carry_181_out_ap_vld <= ap_const_logic_1;
        else 
            carry_181_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    coeff_address0 <= coeff_addr_reg_227_pp0_iter1_reg;
    coeff_address1 <= zext_ln29_18_fu_126_p1(6 - 1 downto 0);
    coeff_ce0 <= coeff_ce0_local;

    coeff_ce0_local_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            coeff_ce0_local <= ap_const_logic_1;
        else 
            coeff_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    coeff_ce1 <= coeff_ce1_local;

    coeff_ce1_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            coeff_ce1_local <= ap_const_logic_1;
        else 
            coeff_ce1_local <= ap_const_logic_0;
        end if; 
    end process;

    coeff_d0 <= sub_ln29_fu_210_p2;
    coeff_we0 <= coeff_we0_local;

    coeff_we0_local_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001, icmp_ln28_reg_223_pp0_iter1_reg)
    begin
        if (((icmp_ln28_reg_223_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            coeff_we0_local <= ap_const_lv8_FF;
        else 
            coeff_we0_local <= ap_const_lv8_0;
        end if; 
    end process;

    icmp_ln28_fu_110_p2 <= "1" when (ap_sig_allocacmp_i = ap_const_lv4_8) else "0";
    or_ln105_fu_151_p2 <= (xor_ln105_fu_143_p2 or xor_ln105_106_fu_147_p2);
    or_ln95_fu_175_p2 <= (tempReg_reg_250 or sub_ln95_fu_170_p2);
    p503x2_1_address0 <= zext_ln29_18_fu_126_p1(3 - 1 downto 0);

    p503x2_1_ce0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p503x2_1_ce0_local <= ap_const_logic_1;
        else 
            p503x2_1_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    sub_ln29_fu_210_p2 <= std_logic_vector(unsigned(tempReg_reg_250) - unsigned(zext_ln29_fu_206_p1));
    sub_ln95_fu_170_p2 <= std_logic_vector(unsigned(ap_const_lv64_0) - unsigned(tempReg_reg_250));
    tempReg_fu_137_p2 <= std_logic_vector(unsigned(coeff_q1) - unsigned(p503x2_1_q0));
    tmp_211_fu_180_p3 <= or_ln95_fu_175_p2(63 downto 63);
    tmp_fu_162_p3 <= xor_ln105_107_fu_157_p2(63 downto 63);
    trunc_ln29_fu_122_p1 <= ap_sig_allocacmp_i(3 - 1 downto 0);
    xor_ln105_106_fu_147_p2 <= (tempReg_reg_250 xor p503x2_1_load_reg_244);
    xor_ln105_107_fu_157_p2 <= (or_ln105_fu_151_p2 xor coeff_load_reg_238);
    xor_ln105_fu_143_p2 <= (p503x2_1_load_reg_244 xor coeff_load_reg_238);
    xor_ln29_fu_188_p2 <= (tmp_211_fu_180_p3 xor ap_const_lv1_1);
    zext_ln29_18_fu_126_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln29_fu_122_p1),32));
    zext_ln29_fu_206_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(carry_reg_89),64));
end behav;
