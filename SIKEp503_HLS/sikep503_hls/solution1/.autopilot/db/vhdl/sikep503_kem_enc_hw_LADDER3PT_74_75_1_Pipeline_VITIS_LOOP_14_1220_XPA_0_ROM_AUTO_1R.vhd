-- ==============================================================
-- Generated by Vitis HLS v2024.2.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity sikep503_kem_enc_hw_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1220_XPA_0_ROM_AUTO_1R is 
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


architecture rtl of sikep503_kem_enc_hw_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1220_XPA_0_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "1110011111101111010010101010011110000110110110000101010110101111", 1 => "1110110101010111010110001111000000111110101100110100110100111011", 2 => "0000100110101110000101110010010100110101101010000110101010101001", 3 => "0010001101111011100111001100000001111101011000100010011100100011", 
    4 => "1110001110100010100001001100101110100100111001111001001100101101", 5 => "0010011101001000000111011001000101110110110001011110011000111111", 6 => "0110101000110010001111111111010101011100011011100111000110111111", 7 => "0000000000101110110011000011000110100110111110111000011101110011");



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

