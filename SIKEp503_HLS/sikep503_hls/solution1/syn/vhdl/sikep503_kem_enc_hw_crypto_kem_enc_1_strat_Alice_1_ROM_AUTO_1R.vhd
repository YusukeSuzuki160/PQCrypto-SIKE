-- ==============================================================
-- Generated by Vitis HLS v2024.2.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity sikep503_kem_enc_hw_crypto_kem_enc_1_strat_Alice_1_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 6; 
             AddressWidth     : integer := 7; 
             AddressRange    : integer := 124
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of sikep503_kem_enc_hw_crypto_kem_enc_1_strat_Alice_1_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "111101", 1 => "100000", 2 => "010000", 3 => "001000", 
    4 => "000100", 5 => "000010", 6 => "000001", 7 => "000001", 
    8 => "000010", 9 => "000001", 10 => "000001", 11 => "000100", 
    12 => "000010", 13 => "000001", 14 => "000001", 15 => "000010", 
    16 => "000001", 17 => "000001", 18 => "001000", 19 => "000100", 
    20 => "000010", 21 => "000001", 22 => "000001", 23 => "000010", 
    24 => "000001", 25 => "000001", 26 => "000100", 27 => "000010", 
    28 => "000001", 29 => "000001", 30 => "000010", 31 => "000001", 
    32 => "000001", 33 => "010000", 34 => "001000", 35 => "000100", 
    36 => "000010", 37 => "000001", 38 => "000001", 39 => "000010", 
    40 => "000001", 41 => "000001", 42 => "000100", 43 => "000010", 
    44 => "000001", 45 => "000001", 46 => "000010", 47 => "000001", 
    48 => "000001", 49 => "001000", 50 => "000100", 51 => "000010", 
    52 => "000001", 53 => "000001", 54 => "000010", 55 => "000001", 
    56 => "000001", 57 => "000100", 58 => "000010", 59 => "000001", 
    60 => "000001", 61 => "000010", 62 => "000001", 63 => "000001", 
    64 => "011101", 65 => "010000", 66 => "001000", 67 => "000100", 
    68 => "000010", 69 => "000001", 70 => "000001", 71 => "000010", 
    72 => "000001", 73 => "000001", 74 => "000100", 75 => "000010", 
    76 => "000001", 77 => "000001", 78 => "000010", 79 => "000001", 
    80 => "000001", 81 => "001000", 82 => "000100", 83 => "000010", 
    84 => "000001", 85 => "000001", 86 => "000010", 87 => "000001", 
    88 => "000001", 89 => "000100", 90 => "000010", 91 => "000001", 
    92 => "000001", 93 => "000010", 94 => "000001", 95 => "000001", 
    96 => "001101", 97 => "001000", 98 => "000100", 99 => "000010", 
    100 => "000001", 101 => "000001", 102 => "000010", 103 => "000001", 
    104 => "000001", 105 => "000100", 106 => "000010", 107 => "000001", 
    108 => "000001", 109 => "000010", 110 => "000001", 111 => "000001", 
    112 => "000101", 113 => "000100", 114 => "000010", 115 => "000001", 
    116 => "000001", 117 => "000010", 118 => "000001", 119 => "000001", 
    120 => "000010", 121 => "000001", 122 => "000001", 123 => "000001");



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

