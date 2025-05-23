-- ==============================================================
-- Generated by Vitis HLS v2024.2.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity sikep503_kem_enc_hw_mp_mul_6_Pipeline_VITIS_LOOP_144_2_Montgomery_R2_1_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 64; 
             AddressWidth     : integer := 3; 
             AddressRange    : integer := 8
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of sikep503_kem_enc_hw_mp_mul_6_Pipeline_VITIS_LOOP_144_2_Montgomery_R2_1_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "0101001010001001101000001100111101100100000111010000000100011111", 1 => "1001101110001000001001010111000110001001111111101101001010111001", 2 => "1010001110110011011001011101010110001101110010001111000101111010", 3 => "0101101111000101011110101011011011101111111100010110100011101100", 
    4 => "1001111001010001100110011000101111011000010011010100010000100011", 5 => "1011111110001001100110011100101110101100001110110101011010010101", 6 => "0100011011101001000100100111101111001110000101001100110110110110", 7 => "0000000000111111011011001111110011101000101110000001011101110001");



begin 

 
memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
 
        if (ce0 = '1') then  
            q0 <= mem0(CONV_INTEGER(address0_tmp)); 
        end if;

end if;
end process;

end rtl;

