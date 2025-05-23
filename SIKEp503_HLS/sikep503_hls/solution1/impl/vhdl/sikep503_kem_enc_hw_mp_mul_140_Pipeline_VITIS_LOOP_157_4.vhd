-- ==============================================================
-- Generated by Vitis HLS v2024.2.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sikep503_kem_enc_hw_mp_mul_140_Pipeline_VITIS_LOOP_157_4 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    indvars_iv : IN STD_LOGIC_VECTOR (2 downto 0);
    zext_ln156 : IN STD_LOGIC_VECTOR (3 downto 0);
    a_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    a_ce0 : OUT STD_LOGIC;
    a_q0 : IN STD_LOGIC_VECTOR (63 downto 0);
    empty : IN STD_LOGIC_VECTOR (2 downto 0);
    v_35_out : OUT STD_LOGIC_VECTOR (63 downto 0);
    v_35_out_ap_vld : OUT STD_LOGIC;
    u_34_out : OUT STD_LOGIC_VECTOR (2 downto 0);
    u_34_out_ap_vld : OUT STD_LOGIC;
    grp_fu_381_p_din0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_381_p_din1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_381_p_dout0 : IN STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_381_p_ce : OUT STD_LOGIC );
end;


architecture behav of sikep503_kem_enc_hw_mp_mul_140_Pipeline_VITIS_LOOP_157_4 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv32_FFFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111111";

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
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln157_fu_160_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal one_address0 : STD_LOGIC_VECTOR (2 downto 0);
    signal one_q0 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln157_reg_355 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln157_reg_355_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln157_reg_355_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln157_reg_355_pp0_iter3_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal a_load_reg_369 : STD_LOGIC_VECTOR (63 downto 0);
    signal a_load_reg_369_pp0_iter2_reg : STD_LOGIC_VECTOR (63 downto 0);
    signal a_load_reg_369_pp0_iter3_reg : STD_LOGIC_VECTOR (63 downto 0);
    signal al_fu_197_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal al_reg_374 : STD_LOGIC_VECTOR (31 downto 0);
    signal al_reg_374_pp0_iter2_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal al_reg_374_pp0_iter3_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal al_reg_374_pp0_iter4_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal bl_fu_201_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bl_reg_380 : STD_LOGIC_VECTOR (0 downto 0);
    signal bl_reg_380_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal bl_reg_380_pp0_iter3_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_s_reg_385 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln106_reg_390 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln106_fu_224_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln106_reg_395 : STD_LOGIC_VECTOR (31 downto 0);
    signal temp_fu_237_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal temp_reg_400 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln158_fu_170_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln158_35_fu_181_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal u_34_fu_60 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    signal u_fu_308_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter3_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter4_reg : STD_LOGIC;
    signal v_35_fu_64 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    signal v_fu_266_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln156_cast_fu_134_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal j_19_fu_68 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal indvars_iv_cast_fu_138_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln157_fu_186_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_sig_allocacmp_j : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal a_ce0_local : STD_LOGIC;
    signal one_ce0_local : STD_LOGIC;
    signal trunc_ln157_fu_166_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal sub_ln158_fu_175_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal trunc_ln106_s_fu_215_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal and_ln106_1_fu_231_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal and_ln106_fu_248_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal or_ln_fu_259_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal shl_ln125_s_fu_252_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln105_63_fu_272_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln105_64_fu_278_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal or_ln105_13_fu_284_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln105_65_fu_290_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tempReg_fu_296_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln160_fu_304_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ready_sig : STD_LOGIC;
    signal ap_done_sig : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component sikep503_kem_enc_hw_mul_32s_32s_32_2_1 IS
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
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component sikep503_kem_enc_hw_mp_mul_140_Pipeline_VITIS_LOOP_144_2_one_ROM_AUTO_1R IS
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
    one_U : component sikep503_kem_enc_hw_mp_mul_140_Pipeline_VITIS_LOOP_144_2_one_ROM_AUTO_1R
    generic map (
        DataWidth => 64,
        AddressRange => 8,
        AddressWidth => 3)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => one_address0,
        ce0 => one_ce0_local,
        q0 => one_q0);

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
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter4_reg = ap_const_logic_1))) then 
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


    j_19_fu_68_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln157_fu_160_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    j_19_fu_68 <= add_ln157_fu_186_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    j_19_fu_68 <= indvars_iv_cast_fu_138_p1;
                end if;
            end if; 
        end if;
    end process;

    u_34_fu_60_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    u_34_fu_60 <= ap_const_lv3_0;
                elsif ((ap_enable_reg_pp0_iter5 = ap_const_logic_1)) then 
                    u_34_fu_60 <= u_fu_308_p2;
                end if;
            end if; 
        end if;
    end process;

    v_35_fu_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    v_35_fu_64 <= zext_ln156_cast_fu_134_p1;
                elsif ((ap_enable_reg_pp0_iter5 = ap_const_logic_1)) then 
                    v_35_fu_64 <= v_fu_266_p2;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                a_load_reg_369 <= a_q0;
                al_reg_374 <= al_fu_197_p1;
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
                bl_reg_380 <= bl_fu_201_p1;
                icmp_ln157_reg_355 <= icmp_ln157_fu_160_p2;
                icmp_ln157_reg_355_pp0_iter1_reg <= icmp_ln157_reg_355;
                tmp_s_reg_385 <= one_q0(63 downto 32);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                a_load_reg_369_pp0_iter2_reg <= a_load_reg_369;
                a_load_reg_369_pp0_iter3_reg <= a_load_reg_369_pp0_iter2_reg;
                al_reg_374_pp0_iter2_reg <= al_reg_374;
                al_reg_374_pp0_iter3_reg <= al_reg_374_pp0_iter2_reg;
                al_reg_374_pp0_iter4_reg <= al_reg_374_pp0_iter3_reg;
                ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
                ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
                bl_reg_380_pp0_iter2_reg <= bl_reg_380;
                bl_reg_380_pp0_iter3_reg <= bl_reg_380_pp0_iter2_reg;
                icmp_ln157_reg_355_pp0_iter2_reg <= icmp_ln157_reg_355_pp0_iter1_reg;
                icmp_ln157_reg_355_pp0_iter3_reg <= icmp_ln157_reg_355_pp0_iter2_reg;
                mul_ln106_reg_390 <= grp_fu_381_p_dout0;
                select_ln106_reg_395 <= select_ln106_fu_224_p3;
                temp_reg_400 <= temp_fu_237_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    a_address0 <= zext_ln158_fu_170_p1(4 - 1 downto 0);
    a_ce0 <= a_ce0_local;

    a_ce0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            a_ce0_local <= ap_const_logic_1;
        else 
            a_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    add_ln157_fu_186_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_j) + unsigned(ap_const_lv4_1));
    al_fu_197_p1 <= a_q0(32 - 1 downto 0);
    and_ln106_1_fu_231_p2 <= (trunc_ln106_s_fu_215_p4 and select_ln106_fu_224_p3);
    and_ln106_fu_248_p2 <= (select_ln106_reg_395 and al_reg_374_pp0_iter4_reg);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln157_fu_160_p2)
    begin
        if (((icmp_ln157_fu_160_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_done <= ap_done_sig;

    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_loop_exit_ready_pp0_iter4_reg, ap_done_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter4_reg = ap_const_logic_1))) then 
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


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter4, ap_enable_reg_pp0_iter5)
    begin
        if (((ap_enable_reg_pp0_iter5 = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
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


    ap_sig_allocacmp_j_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, j_19_fu_68, indvars_iv_cast_fu_138_p1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_j <= indvars_iv_cast_fu_138_p1;
        else 
            ap_sig_allocacmp_j <= j_19_fu_68;
        end if; 
    end process;

    bl_fu_201_p1 <= one_q0(1 - 1 downto 0);
    grp_fu_381_p_ce <= ap_const_logic_1;
    grp_fu_381_p_din0 <= tmp_s_reg_385;
    grp_fu_381_p_din1 <= al_reg_374;
    icmp_ln157_fu_160_p2 <= "1" when (ap_sig_allocacmp_j = ap_const_lv4_8) else "0";
    indvars_iv_cast_fu_138_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(indvars_iv),4));
    one_address0 <= zext_ln158_35_fu_181_p1(3 - 1 downto 0);

    one_ce0_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            one_ce0_local <= ap_const_logic_1;
        else 
            one_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    or_ln105_13_fu_284_p2 <= (xor_ln105_64_fu_278_p2 or xor_ln105_63_fu_272_p2);
    or_ln_fu_259_p3 <= (temp_reg_400 & and_ln106_fu_248_p2);
    select_ln106_fu_224_p3 <= 
        ap_const_lv32_FFFFFFFF when (bl_reg_380_pp0_iter3_reg(0) = '1') else 
        ap_const_lv32_0;
    shl_ln125_s_fu_252_p3 <= (temp_reg_400 & ap_const_lv32_0);
    sub_ln158_fu_175_p2 <= std_logic_vector(unsigned(empty) - unsigned(trunc_ln157_fu_166_p1));
    tempReg_fu_296_p3 <= xor_ln105_65_fu_290_p2(63 downto 63);
    temp_fu_237_p2 <= std_logic_vector(unsigned(and_ln106_1_fu_231_p2) + unsigned(mul_ln106_reg_390));
    trunc_ln106_s_fu_215_p4 <= a_load_reg_369_pp0_iter3_reg(63 downto 32);
    trunc_ln157_fu_166_p1 <= ap_sig_allocacmp_j(3 - 1 downto 0);
    u_34_out <= u_34_fu_60;

    u_34_out_ap_vld_assign_proc : process(ap_block_pp0_stage0_11001, icmp_ln157_reg_355_pp0_iter3_reg, ap_loop_exit_ready_pp0_iter4_reg)
    begin
        if (((icmp_ln157_reg_355_pp0_iter3_reg = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_loop_exit_ready_pp0_iter4_reg = ap_const_logic_1))) then 
            u_34_out_ap_vld <= ap_const_logic_1;
        else 
            u_34_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    u_fu_308_p2 <= std_logic_vector(unsigned(zext_ln160_fu_304_p1) + unsigned(u_34_fu_60));
    v_35_out <= v_35_fu_64;

    v_35_out_ap_vld_assign_proc : process(ap_block_pp0_stage0_11001, icmp_ln157_reg_355_pp0_iter3_reg, ap_loop_exit_ready_pp0_iter4_reg)
    begin
        if (((icmp_ln157_reg_355_pp0_iter3_reg = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_loop_exit_ready_pp0_iter4_reg = ap_const_logic_1))) then 
            v_35_out_ap_vld <= ap_const_logic_1;
        else 
            v_35_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    v_fu_266_p2 <= std_logic_vector(unsigned(or_ln_fu_259_p3) + unsigned(v_35_fu_64));
    xor_ln105_63_fu_272_p2 <= (v_fu_266_p2 xor shl_ln125_s_fu_252_p3);
    xor_ln105_64_fu_278_p2 <= (v_35_fu_64 xor shl_ln125_s_fu_252_p3);
    xor_ln105_65_fu_290_p2 <= (v_fu_266_p2 xor or_ln105_13_fu_284_p2);
    zext_ln156_cast_fu_134_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(zext_ln156),64));
    zext_ln158_35_fu_181_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sub_ln158_fu_175_p2),32));
    zext_ln158_fu_170_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_j),32));
    zext_ln160_fu_304_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tempReg_fu_296_p3),3));
end behav;
