-- ==============================================================
-- Generated by Vitis HLS v2024.2.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sikep503_kem_enc_hw_fpsub503_145_Pipeline_VITIS_LOOP_53_2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    c_offset : IN STD_LOGIC_VECTOR (0 downto 0);
    c_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    c_ce0 : OUT STD_LOGIC;
    c_we0 : OUT STD_LOGIC;
    c_d0 : OUT STD_LOGIC_VECTOR (63 downto 0);
    c_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
    c_ce1 : OUT STD_LOGIC;
    c_q1 : IN STD_LOGIC_VECTOR (63 downto 0);
    sext_ln45 : IN STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of sikep503_kem_enc_hw_fpsub503_145_Pipeline_VITIS_LOOP_53_2 is 
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
    signal icmp_ln53_reg_262 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage1 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal p503x2_1_address0 : STD_LOGIC_VECTOR (2 downto 0);
    signal p503x2_1_q0 : STD_LOGIC_VECTOR (63 downto 0);
    signal borrow_reg_100 : STD_LOGIC_VECTOR (0 downto 0);
    signal sext_ln45_cast_fu_111_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal sext_ln45_cast_reg_257 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln53_fu_127_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal c_addr_reg_266 : STD_LOGIC_VECTOR (3 downto 0);
    signal c_load_reg_277 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal tempReg_fu_170_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tempReg_reg_282 : STD_LOGIC_VECTOR (63 downto 0);
    signal and_ln54_fu_176_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal and_ln54_reg_291 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_loop_init : STD_LOGIC;
    signal zext_ln54_8_fu_156_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln54_fu_143_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_33_fu_54 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal add_ln53_fu_133_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_sig_allocacmp_i : STD_LOGIC_VECTOR (3 downto 0);
    signal c_ce1_local : STD_LOGIC;
    signal c_we0_local : STD_LOGIC;
    signal add_ln54_fu_181_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal c_ce0_local : STD_LOGIC;
    signal p503x2_1_ce0_local : STD_LOGIC;
    signal trunc_ln54_fu_139_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_s_fu_148_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal zext_ln54_7_fu_166_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln54_fu_186_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln54_16_fu_191_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal bit_sel_fu_201_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln54_17_fu_208_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln54_8_fu_214_p1 : STD_LOGIC_VECTOR (62 downto 0);
    signal xor_ln54_s_fu_217_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal or_ln54_fu_195_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln54_18_fu_230_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal and_ln54_6_fu_225_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal or_ln54_6_fu_236_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_idle_pp0_1to1 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ready_sig : STD_LOGIC;
    signal ap_done_sig : STD_LOGIC;
    signal ap_condition_281 : BOOLEAN;
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
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
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
                if (((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage1) or ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                end if; 
            end if;
        end if;
    end process;


    borrow_reg_100_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then
                if ((ap_const_boolean_1 = ap_condition_281)) then 
                    borrow_reg_100 <= or_ln54_6_fu_236_p2(63 downto 63);
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_init = ap_const_logic_1))) then 
                    borrow_reg_100 <= ap_const_lv1_0;
                end if;
            end if; 
        end if;
    end process;

    i_33_fu_54_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln53_fu_127_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_33_fu_54 <= add_ln53_fu_133_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_33_fu_54 <= ap_const_lv4_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                and_ln54_reg_291 <= and_ln54_fu_176_p2;
                tempReg_reg_282 <= tempReg_fu_170_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                c_addr_reg_266 <= zext_ln54_8_fu_156_p1(4 - 1 downto 0);
                icmp_ln53_reg_262 <= icmp_ln53_fu_127_p2;
                sext_ln45_cast_reg_257 <= sext_ln45_cast_fu_111_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_enable_reg_pp0_iter0_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                c_load_reg_277 <= c_q1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage1_subdone, ap_block_pp0_stage0_subdone, ap_idle_pp0_1to1, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_start_int = ap_const_logic_0) and (ap_idle_pp0_1to1 = ap_const_logic_1))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
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
    add_ln53_fu_133_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i) + unsigned(ap_const_lv4_1));
    add_ln54_fu_181_p2 <= std_logic_vector(unsigned(and_ln54_reg_291) + unsigned(tempReg_reg_282));
    and_ln54_6_fu_225_p2 <= (xor_ln54_s_fu_217_p3 and c_load_reg_277);
    and_ln54_fu_176_p2 <= (sext_ln45_cast_reg_257 and p503x2_1_q0);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(1);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_281_assign_proc : process(ap_enable_reg_pp0_iter1, icmp_ln53_reg_262, ap_block_pp0_stage0_11001)
    begin
                ap_condition_281 <= ((icmp_ln53_reg_262 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_condition_exit_pp0_iter0_stage1_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_subdone, ap_enable_reg_pp0_iter0_reg, icmp_ln53_reg_262)
    begin
        if (((icmp_ln53_reg_262 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            ap_condition_exit_pp0_iter0_stage1 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage1 <= ap_const_logic_0;
        end if; 
    end process;

    ap_done <= ap_done_sig;

    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
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


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
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


    ap_sig_allocacmp_i_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_loop_init, ap_block_pp0_stage0, i_33_fu_54)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i <= ap_const_lv4_0;
        else 
            ap_sig_allocacmp_i <= i_33_fu_54;
        end if; 
    end process;

    bit_sel_fu_201_p3 <= tempReg_reg_282(63 downto 63);
    c_address0 <= c_addr_reg_266;
    c_address1 <= zext_ln54_8_fu_156_p1(4 - 1 downto 0);
    c_ce0 <= c_ce0_local;

    c_ce0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            c_ce0_local <= ap_const_logic_1;
        else 
            c_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    c_ce1 <= c_ce1_local;

    c_ce1_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            c_ce1_local <= ap_const_logic_1;
        else 
            c_ce1_local <= ap_const_logic_0;
        end if; 
    end process;

    c_d0 <= add_ln54_fu_181_p2;
    c_we0 <= c_we0_local;

    c_we0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln53_reg_262, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln53_reg_262 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            c_we0_local <= ap_const_logic_1;
        else 
            c_we0_local <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln53_fu_127_p2 <= "1" when (ap_sig_allocacmp_i = ap_const_lv4_8) else "0";
    or_ln54_6_fu_236_p2 <= (xor_ln54_18_fu_230_p2 or and_ln54_6_fu_225_p2);
    or_ln54_fu_195_p2 <= (xor_ln54_fu_186_p2 or xor_ln54_16_fu_191_p2);
    p503x2_1_address0 <= zext_ln54_fu_143_p1(3 - 1 downto 0);

    p503x2_1_ce0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p503x2_1_ce0_local <= ap_const_logic_1;
        else 
            p503x2_1_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    sext_ln45_cast_fu_111_p3 <= 
        ap_const_lv64_FFFFFFFFFFFFFFFF when (sext_ln45(0) = '1') else 
        ap_const_lv64_0;
    tempReg_fu_170_p2 <= std_logic_vector(unsigned(c_q1) + unsigned(zext_ln54_7_fu_166_p1));
    tmp_s_fu_148_p3 <= (c_offset & trunc_ln54_fu_139_p1);
    trunc_ln54_8_fu_214_p1 <= tempReg_reg_282(63 - 1 downto 0);
    trunc_ln54_fu_139_p1 <= ap_sig_allocacmp_i(3 - 1 downto 0);
    xor_ln54_16_fu_191_p2 <= (tempReg_reg_282 xor and_ln54_reg_291);
    xor_ln54_17_fu_208_p2 <= (bit_sel_fu_201_p3 xor ap_const_lv1_1);
    xor_ln54_18_fu_230_p2 <= (or_ln54_fu_195_p2 xor add_ln54_fu_181_p2);
    xor_ln54_fu_186_p2 <= (tempReg_reg_282 xor add_ln54_fu_181_p2);
    xor_ln54_s_fu_217_p3 <= (xor_ln54_17_fu_208_p2 & trunc_ln54_8_fu_214_p1);
    zext_ln54_7_fu_166_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(borrow_reg_100),64));
    zext_ln54_8_fu_156_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_148_p3),32));
    zext_ln54_fu_143_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln54_fu_139_p1),32));
end behav;
