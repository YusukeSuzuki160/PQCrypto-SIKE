-- ==============================================================
-- Generated by Vitis HLS v2024.2.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sikep503_kem_enc_hw_fpadd503_58_60_Pipeline_VITIS_LOOP_34_3 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    c_0_offset : IN STD_LOGIC_VECTOR (0 downto 0);
    c_0_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    c_0_ce0 : OUT STD_LOGIC;
    c_0_we0 : OUT STD_LOGIC;
    c_0_d0 : OUT STD_LOGIC_VECTOR (63 downto 0);
    c_0_q0 : IN STD_LOGIC_VECTOR (63 downto 0);
    c_1_offset : IN STD_LOGIC_VECTOR (0 downto 0);
    c_1_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    c_1_ce0 : OUT STD_LOGIC;
    c_1_we0 : OUT STD_LOGIC;
    c_1_d0 : OUT STD_LOGIC_VECTOR (63 downto 0);
    c_1_q0 : IN STD_LOGIC_VECTOR (63 downto 0);
    sext_ln21 : IN STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of sikep503_kem_enc_hw_fpadd503_58_60_Pipeline_VITIS_LOOP_34_3 is 
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
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv64_FFFFFFFFFFFFFFFF : STD_LOGIC_VECTOR (63 downto 0) := "1111111111111111111111111111111111111111111111111111111111111111";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv64_3F : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000111111";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC := '0';
    signal icmp_ln34_reg_321 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage1 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal p503x2_1_address0 : STD_LOGIC_VECTOR (2 downto 0);
    signal p503x2_1_q0 : STD_LOGIC_VECTOR (63 downto 0);
    signal carry_reg_123 : STD_LOGIC_VECTOR (0 downto 0);
    signal sext_ln21_cast_fu_134_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal sext_ln21_cast_reg_310 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal i_reg_315 : STD_LOGIC_VECTOR (3 downto 0);
    signal icmp_ln34_fu_150_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln34_reg_321_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal c_0_addr_reg_325 : STD_LOGIC_VECTOR (2 downto 0);
    signal c_0_addr_reg_325_pp0_iter1_reg : STD_LOGIC_VECTOR (2 downto 0);
    signal c_1_addr_reg_330 : STD_LOGIC_VECTOR (2 downto 0);
    signal c_1_addr_reg_330_pp0_iter1_reg : STD_LOGIC_VECTOR (2 downto 0);
    signal trunc_ln34_fu_206_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln34_reg_340 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal select_ln35_fu_209_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal select_ln35_reg_344 : STD_LOGIC_VECTOR (63 downto 0);
    signal and_ln35_fu_217_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal and_ln35_reg_350 : STD_LOGIC_VECTOR (63 downto 0);
    signal tempReg_fu_231_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tempReg_reg_356 : STD_LOGIC_VECTOR (63 downto 0);
    signal add_ln35_fu_236_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal add_ln35_reg_364 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_init : STD_LOGIC;
    signal zext_ln35_fu_178_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln35_14_fu_191_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln35_13_fu_196_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_138_fu_62 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal add_ln34_fu_201_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_sig_allocacmp_i : STD_LOGIC_VECTOR (3 downto 0);
    signal c_0_ce0_local : STD_LOGIC;
    signal c_0_address0_local : STD_LOGIC_VECTOR (2 downto 0);
    signal c_0_we0_local : STD_LOGIC;
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal c_1_ce0_local : STD_LOGIC;
    signal c_1_address0_local : STD_LOGIC_VECTOR (2 downto 0);
    signal c_1_we0_local : STD_LOGIC;
    signal p503x2_1_ce0_local : STD_LOGIC;
    signal lshr_ln20_6_fu_160_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_s_fu_170_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_518_fu_183_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal trunc_ln34_3_fu_156_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal zext_ln35_12_fu_227_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln35_fu_241_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln35_22_fu_245_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal bit_sel1_fu_255_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln35_23_fu_262_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln35_fu_268_p1 : STD_LOGIC_VECTOR (62 downto 0);
    signal xor_ln35_s_fu_271_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal or_ln35_fu_249_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln35_24_fu_284_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal and_ln35_8_fu_279_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal or_ln35_8_fu_289_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_idle_pp0_1to1 : STD_LOGIC;
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
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                end if; 
            end if;
        end if;
    end process;


    ap_loop_exit_ready_pp0_iter1_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((ap_loop_exit_ready = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_idle_pp0_0to0 = ap_const_logic_1) and (ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)))) then 
                ap_loop_exit_ready_pp0_iter1_reg <= ap_const_logic_0;
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
            end if; 
        end if;
    end process;

    carry_reg_123_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln34_reg_321_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                carry_reg_123 <= or_ln35_8_fu_289_p2(63 downto 63);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                carry_reg_123 <= ap_const_lv1_0;
            end if; 
        end if;
    end process;

    i_138_fu_62_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                i_138_fu_62 <= ap_const_lv4_0;
            elsif (((icmp_ln34_reg_321 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                i_138_fu_62 <= add_ln34_fu_201_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                add_ln35_reg_364 <= add_ln35_fu_236_p2;
                c_0_addr_reg_325 <= zext_ln35_fu_178_p1(3 - 1 downto 0);
                c_0_addr_reg_325_pp0_iter1_reg <= c_0_addr_reg_325;
                c_1_addr_reg_330 <= zext_ln35_14_fu_191_p1(3 - 1 downto 0);
                c_1_addr_reg_330_pp0_iter1_reg <= c_1_addr_reg_330;
                i_reg_315 <= ap_sig_allocacmp_i;
                icmp_ln34_reg_321 <= icmp_ln34_fu_150_p2;
                icmp_ln34_reg_321_pp0_iter1_reg <= icmp_ln34_reg_321;
                sext_ln21_cast_reg_310 <= sext_ln21_cast_fu_134_p3;
                tempReg_reg_356 <= tempReg_fu_231_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                and_ln35_reg_350 <= and_ln35_fu_217_p2;
                select_ln35_reg_344 <= select_ln35_fu_209_p3;
                trunc_ln34_reg_340 <= trunc_ln34_fu_206_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage1_subdone, ap_block_pp0_stage0_subdone, ap_condition_exit_pp0_iter1_stage0, ap_idle_pp0_0to0, ap_idle_pp0_1to1, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                if (((ap_idle_pp0_0to0 = ap_const_logic_1) and (ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((not(((ap_start_int = ap_const_logic_0) and (ap_idle_pp0_1to1 = ap_const_logic_1))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
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
    add_ln34_fu_201_p2 <= std_logic_vector(unsigned(i_reg_315) + unsigned(ap_const_lv4_1));
    add_ln35_fu_236_p2 <= std_logic_vector(unsigned(and_ln35_reg_350) + unsigned(tempReg_fu_231_p2));
    and_ln35_8_fu_279_p2 <= (xor_ln35_s_fu_271_p3 and select_ln35_reg_344);
    and_ln35_fu_217_p2 <= (sext_ln21_cast_reg_310 and p503x2_1_q0);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(1);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage1_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_subdone, ap_enable_reg_pp0_iter0_reg, icmp_ln34_reg_321)
    begin
        if (((icmp_ln34_reg_321 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            ap_condition_exit_pp0_iter0_stage1 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln34_reg_321, ap_block_pp0_stage0_subdone)
    begin
        if (((icmp_ln34_reg_321 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_done <= ap_done_sig;

    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter1_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_0to0_assign_proc : process(ap_enable_reg_pp0_iter0)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_0)) then 
            ap_idle_pp0_0to0 <= ap_const_logic_1;
        else 
            ap_idle_pp0_0to0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_1to1_assign_proc : process(ap_enable_reg_pp0_iter1)
    begin
        if ((ap_enable_reg_pp0_iter1 = ap_const_logic_0)) then 
            ap_idle_pp0_1to1 <= ap_const_logic_1;
        else 
            ap_idle_pp0_1to1 <= ap_const_logic_0;
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


    ap_sig_allocacmp_i_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_loop_init, ap_block_pp0_stage0, i_138_fu_62)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i <= ap_const_lv4_0;
        else 
            ap_sig_allocacmp_i <= i_138_fu_62;
        end if; 
    end process;

    bit_sel1_fu_255_p3 <= tempReg_reg_356(63 downto 63);
    c_0_address0 <= c_0_address0_local;

    c_0_address0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, c_0_addr_reg_325_pp0_iter1_reg, zext_ln35_fu_178_p1, ap_block_pp0_stage0, ap_block_pp0_stage1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            c_0_address0_local <= c_0_addr_reg_325_pp0_iter1_reg;
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            c_0_address0_local <= zext_ln35_fu_178_p1(3 - 1 downto 0);
        else 
            c_0_address0_local <= "XXX";
        end if; 
    end process;

    c_0_ce0 <= c_0_ce0_local;

    c_0_ce0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0_11001, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)))) then 
            c_0_ce0_local <= ap_const_logic_1;
        else 
            c_0_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    c_0_d0 <= add_ln35_reg_364;
    c_0_we0 <= c_0_we0_local;

    c_0_we0_local_assign_proc : process(ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, icmp_ln34_reg_321_pp0_iter1_reg, trunc_ln34_reg_340, ap_block_pp0_stage1_11001)
    begin
        if (((icmp_ln34_reg_321_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (trunc_ln34_reg_340 = ap_const_lv1_0))) then 
            c_0_we0_local <= ap_const_logic_1;
        else 
            c_0_we0_local <= ap_const_logic_0;
        end if; 
    end process;

    c_1_address0 <= c_1_address0_local;

    c_1_address0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, c_1_addr_reg_330_pp0_iter1_reg, ap_block_pp0_stage0, zext_ln35_14_fu_191_p1, ap_block_pp0_stage1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            c_1_address0_local <= c_1_addr_reg_330_pp0_iter1_reg;
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            c_1_address0_local <= zext_ln35_14_fu_191_p1(3 - 1 downto 0);
        else 
            c_1_address0_local <= "XXX";
        end if; 
    end process;

    c_1_ce0 <= c_1_ce0_local;

    c_1_ce0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0_11001, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)))) then 
            c_1_ce0_local <= ap_const_logic_1;
        else 
            c_1_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    c_1_d0 <= add_ln35_reg_364;
    c_1_we0 <= c_1_we0_local;

    c_1_we0_local_assign_proc : process(ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, icmp_ln34_reg_321_pp0_iter1_reg, trunc_ln34_reg_340, ap_block_pp0_stage1_11001)
    begin
        if (((icmp_ln34_reg_321_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (trunc_ln34_reg_340 = ap_const_lv1_1))) then 
            c_1_we0_local <= ap_const_logic_1;
        else 
            c_1_we0_local <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln34_fu_150_p2 <= "1" when (ap_sig_allocacmp_i = ap_const_lv4_8) else "0";
    lshr_ln20_6_fu_160_p4 <= ap_sig_allocacmp_i(2 downto 1);
    or_ln35_8_fu_289_p2 <= (xor_ln35_24_fu_284_p2 or and_ln35_8_fu_279_p2);
    or_ln35_fu_249_p2 <= (xor_ln35_fu_241_p2 or xor_ln35_22_fu_245_p2);
    p503x2_1_address0 <= zext_ln35_13_fu_196_p1(3 - 1 downto 0);

    p503x2_1_ce0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p503x2_1_ce0_local <= ap_const_logic_1;
        else 
            p503x2_1_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    select_ln35_fu_209_p3 <= 
        c_1_q0 when (trunc_ln34_fu_206_p1(0) = '1') else 
        c_0_q0;
    sext_ln21_cast_fu_134_p3 <= 
        ap_const_lv64_FFFFFFFFFFFFFFFF when (sext_ln21(0) = '1') else 
        ap_const_lv64_0;
    tempReg_fu_231_p2 <= std_logic_vector(unsigned(select_ln35_reg_344) + unsigned(zext_ln35_12_fu_227_p1));
    tmp_518_fu_183_p3 <= (c_1_offset & lshr_ln20_6_fu_160_p4);
    tmp_s_fu_170_p3 <= (c_0_offset & lshr_ln20_6_fu_160_p4);
    trunc_ln34_3_fu_156_p1 <= ap_sig_allocacmp_i(3 - 1 downto 0);
    trunc_ln34_fu_206_p1 <= i_reg_315(1 - 1 downto 0);
    trunc_ln35_fu_268_p1 <= tempReg_reg_356(63 - 1 downto 0);
    xor_ln35_22_fu_245_p2 <= (tempReg_reg_356 xor and_ln35_reg_350);
    xor_ln35_23_fu_262_p2 <= (bit_sel1_fu_255_p3 xor ap_const_lv1_1);
    xor_ln35_24_fu_284_p2 <= (or_ln35_fu_249_p2 xor add_ln35_reg_364);
    xor_ln35_fu_241_p2 <= (tempReg_reg_356 xor add_ln35_reg_364);
    xor_ln35_s_fu_271_p3 <= (xor_ln35_23_fu_262_p2 & trunc_ln35_fu_268_p1);
    zext_ln35_12_fu_227_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(carry_reg_123),64));
    zext_ln35_13_fu_196_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln34_3_fu_156_p1),32));
    zext_ln35_14_fu_191_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_518_fu_183_p3),32));
    zext_ln35_fu_178_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_170_p3),32));
end behav;
