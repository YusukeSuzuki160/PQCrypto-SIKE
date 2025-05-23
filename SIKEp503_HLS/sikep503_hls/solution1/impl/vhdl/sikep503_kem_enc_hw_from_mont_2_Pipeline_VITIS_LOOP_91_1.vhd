-- ==============================================================
-- Generated by Vitis HLS v2024.2.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sikep503_kem_enc_hw_from_mont_2_Pipeline_VITIS_LOOP_91_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    t_i_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    t_i_ce0 : OUT STD_LOGIC;
    t_i_we0 : OUT STD_LOGIC;
    t_i_d0 : OUT STD_LOGIC_VECTOR (63 downto 0);
    t_i_q0 : IN STD_LOGIC_VECTOR (63 downto 0);
    borrow_out : OUT STD_LOGIC_VECTOR (0 downto 0);
    borrow_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of sikep503_kem_enc_hw_from_mont_2_Pipeline_VITIS_LOOP_91_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_FFFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111111";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC := '0';
    signal icmp_ln91_fu_120_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage1 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal p503_1_address0 : STD_LOGIC_VECTOR (2 downto 0);
    signal p503_1_q0 : STD_LOGIC_VECTOR (63 downto 0);
    signal borrow_reg_89 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal i_94_reg_287 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal icmp_ln91_reg_292 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln91_reg_292_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal t_i_addr_reg_296 : STD_LOGIC_VECTOR (3 downto 0);
    signal t_i_addr_reg_296_pp0_iter1_reg : STD_LOGIC_VECTOR (3 downto 0);
    signal addr_cmp_fu_146_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal addr_cmp_reg_301 : STD_LOGIC_VECTOR (0 downto 0);
    signal t_i_load_reg_311 : STD_LOGIC_VECTOR (63 downto 0);
    signal p503_1_load_reg_316 : STD_LOGIC_VECTOR (63 downto 0);
    signal tempReg_fu_181_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tempReg_reg_323 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_reg_330 : STD_LOGIC_VECTOR (0 downto 0);
    signal borrowReg_fu_246_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage1 : STD_LOGIC;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_loop_init : STD_LOGIC;
    signal zext_ln92_6_fu_138_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal zext_ln92_5_fu_152_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal reuse_addr_reg_fu_44 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal reuse_reg_fu_48 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    signal sub_ln92_fu_255_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_fu_52 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal add_ln91_fu_162_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_block_pp0_stage1_01001 : BOOLEAN;
    signal t_i_ce0_local : STD_LOGIC;
    signal t_i_address0_local : STD_LOGIC_VECTOR (3 downto 0);
    signal t_i_we0_local : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal p503_1_ce0_local : STD_LOGIC;
    signal trunc_ln92_fu_126_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal zext_ln92_4_fu_130_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal reuse_select_fu_175_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln105_68_fu_191_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln105_fu_186_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal or_ln105_fu_196_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln105_69_fu_202_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal sub_ln95_fu_216_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal or_ln95_fu_221_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_163_fu_226_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln92_fu_234_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln92_fu_240_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln92_fu_251_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_idle_pp0_1to2 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ready_sig : STD_LOGIC;
    signal ap_done_sig : STD_LOGIC;
    signal ap_condition_312 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;

    component sikep503_kem_enc_hw_fp2div2_503_Pipeline_VITIS_LOOP_78_1_p503_1_ROM_AUTO_1R IS
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
    p503_1_U : component sikep503_kem_enc_hw_fp2div2_503_Pipeline_VITIS_LOOP_78_1_p503_1_ROM_AUTO_1R
    generic map (
        DataWidth => 64,
        AddressRange => 8,
        AddressWidth => 3)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => p503_1_address0,
        ce0 => p503_1_ce0_local,
        q0 => p503_1_q0);

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
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage1,
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
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
                    ap_enable_reg_pp0_iter0_reg <= ap_start_int;
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
                if (((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
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
                if (((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage1) or ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    borrow_reg_89_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then
                if ((ap_const_boolean_1 = ap_condition_312)) then 
                    borrow_reg_89 <= borrowReg_fu_246_p2;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_init = ap_const_logic_1))) then 
                    borrow_reg_89 <= ap_const_lv1_0;
                end if;
            end if; 
        end if;
    end process;

    i_fu_52_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_52 <= ap_const_lv4_0;
                elsif (((icmp_ln91_reg_292 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    i_fu_52 <= add_ln91_fu_162_p2;
                end if;
            end if; 
        end if;
    end process;

    reuse_addr_reg_fu_44_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                reuse_addr_reg_fu_44(0) <= '1';
                reuse_addr_reg_fu_44(1) <= '1';
                reuse_addr_reg_fu_44(2) <= '1';
                reuse_addr_reg_fu_44(4) <= '1';
                reuse_addr_reg_fu_44(5) <= '1';
                reuse_addr_reg_fu_44(6) <= '1';
                reuse_addr_reg_fu_44(7) <= '1';
                reuse_addr_reg_fu_44(8) <= '1';
                reuse_addr_reg_fu_44(9) <= '1';
                reuse_addr_reg_fu_44(10) <= '1';
                reuse_addr_reg_fu_44(11) <= '1';
                reuse_addr_reg_fu_44(12) <= '1';
                reuse_addr_reg_fu_44(13) <= '1';
                reuse_addr_reg_fu_44(14) <= '1';
                reuse_addr_reg_fu_44(15) <= '1';
                reuse_addr_reg_fu_44(16) <= '1';
                reuse_addr_reg_fu_44(17) <= '1';
                reuse_addr_reg_fu_44(18) <= '1';
                reuse_addr_reg_fu_44(19) <= '1';
                reuse_addr_reg_fu_44(20) <= '1';
                reuse_addr_reg_fu_44(21) <= '1';
                reuse_addr_reg_fu_44(22) <= '1';
                reuse_addr_reg_fu_44(23) <= '1';
                reuse_addr_reg_fu_44(24) <= '1';
                reuse_addr_reg_fu_44(25) <= '1';
                reuse_addr_reg_fu_44(26) <= '1';
                reuse_addr_reg_fu_44(27) <= '1';
                reuse_addr_reg_fu_44(28) <= '1';
                reuse_addr_reg_fu_44(29) <= '1';
                reuse_addr_reg_fu_44(30) <= '1';
                reuse_addr_reg_fu_44(31) <= '1';
            elsif (((icmp_ln91_fu_120_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                                reuse_addr_reg_fu_44(2 downto 0) <= zext_ln92_6_fu_138_p1(2 downto 0);                reuse_addr_reg_fu_44(31 downto 4) <= zext_ln92_6_fu_138_p1(31 downto 4);
            end if; 
        end if;
    end process;

    reuse_reg_fu_48_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    reuse_reg_fu_48 <= ap_const_lv64_0;
                elsif (((icmp_ln91_reg_292_pp0_iter1_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
                    reuse_reg_fu_48 <= sub_ln92_fu_255_p2;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                addr_cmp_reg_301 <= addr_cmp_fu_146_p2;
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                i_94_reg_287 <= i_fu_52;
                icmp_ln91_reg_292 <= icmp_ln91_fu_120_p2;
                icmp_ln91_reg_292_pp0_iter1_reg <= icmp_ln91_reg_292;
                    t_i_addr_reg_296(2 downto 0) <= zext_ln92_6_fu_138_p1(4 - 1 downto 0)(2 downto 0);
                    t_i_addr_reg_296_pp0_iter1_reg(2 downto 0) <= t_i_addr_reg_296(2 downto 0);
                tempReg_reg_323 <= tempReg_fu_181_p2;
                tmp_reg_330 <= xor_ln105_69_fu_202_p2(63 downto 63);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                p503_1_load_reg_316 <= p503_1_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                t_i_load_reg_311 <= t_i_q0;
            end if;
        end if;
    end process;
    t_i_addr_reg_296(3) <= '1';
    t_i_addr_reg_296_pp0_iter1_reg(3) <= '1';
    reuse_addr_reg_fu_44(3) <= '1';

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage1_subdone, ap_block_pp0_stage0_subdone, ap_idle_pp0_1to2, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_start_int = ap_const_logic_0) and (ap_idle_pp0_1to2 = ap_const_logic_1))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage1_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    add_ln91_fu_162_p2 <= std_logic_vector(unsigned(i_94_reg_287) + unsigned(ap_const_lv4_1));
    addr_cmp_fu_146_p2 <= "1" when (reuse_addr_reg_fu_44 = zext_ln92_6_fu_138_p1) else "0";
    and_ln92_fu_240_p2 <= (xor_ln92_fu_234_p2 and borrow_reg_89);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(1);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_312_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001, icmp_ln91_reg_292_pp0_iter1_reg)
    begin
                ap_condition_312 <= ((icmp_ln91_reg_292_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1));
    end process;


    ap_condition_exit_pp0_iter0_stage1_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_subdone, ap_enable_reg_pp0_iter0_reg, icmp_ln91_fu_120_p2)
    begin
        if (((icmp_ln91_fu_120_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            ap_condition_exit_pp0_iter0_stage1 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_condition_exit_pp0_iter1_stage1_assign_proc : process(ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_subdone, icmp_ln91_reg_292)
    begin
        if (((icmp_ln91_reg_292 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            ap_condition_exit_pp0_iter1_stage1 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage1 <= ap_const_logic_0;
        end if; 
    end process;

    ap_done <= ap_done_sig;

    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_subdone, ap_loop_exit_ready_pp0_iter1_reg, ap_done_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_enable_reg_pp0_iter0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0_reg, ap_start_int)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
            ap_enable_reg_pp0_iter0 <= ap_start_int;
        else 
            ap_enable_reg_pp0_iter0 <= ap_enable_reg_pp0_iter0_reg;
        end if; 
    end process;


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


    ap_idle_pp0_1to2_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0_1to2 <= ap_const_logic_1;
        else 
            ap_idle_pp0_1to2 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage1;
    ap_ready <= ap_ready_sig;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_subdone, ap_enable_reg_pp0_iter0_reg)
    begin
        if (((ap_enable_reg_pp0_iter0_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;

    borrowReg_fu_246_p2 <= (tmp_reg_330 or and_ln92_fu_240_p2);
    borrow_out <= borrow_reg_89;

    borrow_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, icmp_ln91_reg_292, ap_loop_exit_ready_pp0_iter1_reg)
    begin
        if (((icmp_ln91_reg_292 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1))) then 
            borrow_out_ap_vld <= ap_const_logic_1;
        else 
            borrow_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln91_fu_120_p2 <= "1" when (i_fu_52 = ap_const_lv4_8) else "0";
    or_ln105_fu_196_p2 <= (xor_ln105_fu_186_p2 or xor_ln105_68_fu_191_p2);
    or_ln95_fu_221_p2 <= (tempReg_reg_323 or sub_ln95_fu_216_p2);
    p503_1_address0 <= zext_ln92_5_fu_152_p1(3 - 1 downto 0);

    p503_1_ce0_local_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0_reg, ap_block_pp0_stage1_11001)
    begin
        if (((ap_enable_reg_pp0_iter0_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            p503_1_ce0_local <= ap_const_logic_1;
        else 
            p503_1_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    reuse_select_fu_175_p3 <= 
        reuse_reg_fu_48 when (addr_cmp_reg_301(0) = '1') else 
        t_i_load_reg_311;
    sub_ln92_fu_255_p2 <= std_logic_vector(unsigned(tempReg_reg_323) - unsigned(zext_ln92_fu_251_p1));
    sub_ln95_fu_216_p2 <= std_logic_vector(unsigned(ap_const_lv64_0) - unsigned(tempReg_reg_323));
    t_i_address0 <= t_i_address0_local;

    t_i_address0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter2, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0_reg, t_i_addr_reg_296_pp0_iter1_reg, zext_ln92_6_fu_138_p1, ap_block_pp0_stage1, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            t_i_address0_local <= t_i_addr_reg_296_pp0_iter1_reg;
        elsif (((ap_enable_reg_pp0_iter0_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            t_i_address0_local <= zext_ln92_6_fu_138_p1(4 - 1 downto 0);
        else 
            t_i_address0_local <= "XXXX";
        end if; 
    end process;

    t_i_ce0 <= t_i_ce0_local;

    t_i_ce0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter2, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0_reg, ap_block_pp0_stage0_11001, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_enable_reg_pp0_iter0_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)))) then 
            t_i_ce0_local <= ap_const_logic_1;
        else 
            t_i_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    t_i_d0 <= sub_ln92_fu_255_p2;
    t_i_we0 <= t_i_we0_local;

    t_i_we0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001, icmp_ln91_reg_292_pp0_iter1_reg)
    begin
        if (((icmp_ln91_reg_292_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            t_i_we0_local <= ap_const_logic_1;
        else 
            t_i_we0_local <= ap_const_logic_0;
        end if; 
    end process;

    tempReg_fu_181_p2 <= std_logic_vector(unsigned(reuse_select_fu_175_p3) - unsigned(p503_1_load_reg_316));
    tmp_163_fu_226_p3 <= or_ln95_fu_221_p2(63 downto 63);
    trunc_ln92_fu_126_p1 <= i_fu_52(3 - 1 downto 0);
    xor_ln105_68_fu_191_p2 <= (tempReg_fu_181_p2 xor p503_1_load_reg_316);
    xor_ln105_69_fu_202_p2 <= (reuse_select_fu_175_p3 xor or_ln105_fu_196_p2);
    xor_ln105_fu_186_p2 <= (reuse_select_fu_175_p3 xor p503_1_load_reg_316);
    xor_ln92_fu_234_p2 <= (tmp_163_fu_226_p3 xor ap_const_lv1_1);
    zext_ln92_4_fu_130_p3 <= (ap_const_lv1_1 & trunc_ln92_fu_126_p1);
    zext_ln92_5_fu_152_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln92_fu_126_p1),32));
    zext_ln92_6_fu_138_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(zext_ln92_4_fu_130_p3),32));
    zext_ln92_fu_251_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(borrow_reg_89),64));
end behav;
