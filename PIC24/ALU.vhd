----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:17:40 01/13/2021 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( Clk : in  STD_LOGIC;
           RdDataBase : in  STD_LOGIC_VECTOR (15 downto 0);
           RdDataSource : in  STD_LOGIC_VECTOR (15 downto 0);
			  ALU_OP : in STD_LOGIC_VECTOR(2 downto 0);
			  lit5 : in STD_LOGIC_VECTOR(4 downto 0);
           Flag_N : in  STD_LOGIC;
           Flag_C : in  STD_LOGIC;
           Flag_Z : in  STD_LOGIC;
           Flag_OV : in  STD_LOGIC;
           N : out  STD_LOGIC;
           Z : out  STD_LOGIC;
           C : out  STD_LOGIC;
           OV : out  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (15 downto 0));
end ALU;

architecture Behavioral of ALU is

signal Carry : STD_LOGIC_VECTOR(16 downto 0);
signal Result : STD_LOGIC_VECTOR(15 downto 0);
signal FBCL : STD_LOGIC_VECTOR(15 downto 0);
signal zero : STD_LOGIC;
signal flag_carry : STD_LOGIC;
signal overflow : STD_LOGIC;

begin

FBCL <= x"0000" when RdDataSource(14) /= RdDataSource(15) else 	--FBCL
		  x"0001" when RdDataSource(13) /= RdDataSource(15) else
		  x"0002" when RdDataSource(12) /= RdDataSource(15) else
		  x"0003" when RdDataSource(11) /= RdDataSource(15) else
		  x"0004" when RdDataSource(10) /= RdDataSource(15) else
		  x"0005" when RdDataSource(9) /= RdDataSource(15) else
		  x"0006" when RdDataSource(8) /= RdDataSource(15) else
		  x"0007" when RdDataSource(7) /= RdDataSource(15) else
		  x"0008" when RdDataSource(6) /= RdDataSource(15) else
		  x"0009" when RdDataSource(5) /= RdDataSource(15) else
		  x"000A" when RdDataSource(4) /= RdDataSource(15) else
		  x"000B" when RdDataSource(3) /= RdDataSource(15) else
		  x"000C" when RdDataSource(2) /= RdDataSource(15) else
		  x"000D" when RdDataSource(1) /= RdDataSource(15) else
		  x"000E" when RdDataSource(0) /= RdDataSource(15) else
		  x"000F";

Carry <= ('0' & RdDataBase) + ('0' & RdDataSource) when ALU_OP = "000" else 			--ADD
			('0' & RdDataBase) + ('0' & (not RdDataSource)) + 1 when ALU_OP = "001";	--SUB
			
Result <= Carry(15 downto 0) when ALU_OP = "000" or ALU_OP = "001" else 

			 RdDataBase and RdDataSource when ALU_OP = "010" else							--AND
			  
			 RdDataBase or RdDataSource when ALU_OP = "011" else							--IOR
			 
			 (not FBCL) + 1 when ALU_OP = "100" else											--FBCL
			 
			 RdDataBase(15 downto 5) & (RdDataBase(4 downto 0) xor lit5) when ALU_OP = "101" else 		--XOR
			 
			 (not RdDataSource) when ALU_OP = "111";						--COM
			 
Y <= Result;
 
N <= Result(15) when rising_edge(Clk) and Flag_N = '1';
  
zero <= 	RdDataSource(conv_integer(RdDataBase(3 downto 0))) when ALU_OP = "110" else 	--BTST
			'1' when Result = x"0000" else '0';
			
Z <= zero when rising_edge(Clk) and Flag_Z = '1';

flag_carry <= Carry(16) when ALU_OP = "000" or ALU_OP = "001" else 
				'1' when FBCL = x"000F" and ALU_OP = "100" else '0' ;

C <= flag_carry when rising_edge(Clk) and Flag_C = '1';

overflow <= '1' when ALU_OP = "000" and RdDataBase(15) = RdDataSource(15) and (not Result(15)) = RdDataBase(15) else
				'1' when ALU_OP = "001" and RdDataBase(15) = (not RdDataSource(15)) and (not Result(15)) = RdDataBase(15) else '0';

OV <= overflow when rising_edge(Clk) and Flag_OV = '1';

end Behavioral;

