----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:09:17 01/13/2021 
-- Design Name: 
-- Module Name:    CTRL - Behavioral 
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

entity CTRL is
    Port ( Opcode : in  STD_LOGIC_VECTOR (4 downto 0);
           Flag_N : out  STD_LOGIC;
           Flag_OV : out  STD_LOGIC;
           Flag_Z : out  STD_LOGIC;
           Flag_C : out  STD_LOGIC;
           ALU_OP : out  STD_LOGIC_VECTOR (2 downto 0);
           MEMWr : out  STD_LOGIC;
           MEM2Reg : out  STD_LOGIC;
           RegWr : out  STD_LOGIC;
           RegBase : out  STD_LOGIC;
           RegDest : out  STD_LOGIC;
			  Branch : out STD_LOGIC);
end CTRL;

architecture Behavioral of CTRL is

begin

Flag_N <= '1' when Opcode = "01000" or				--ADD
						 Opcode = "01010" or				--SUB
						 Opcode = "01100" or				--AND
						 Opcode = "01110" or				--IOR
						 Opcode = "01101" or				--XOR
						 Opcode = "11101" else '0';	--COM

Flag_OV <= '1' when Opcode = "01000" or			--ADD
						  Opcode = "01010" else '0';	--SUB
						  
Flag_Z <= '1' when Opcode = "01000" or				--ADD
						 Opcode = "01010" or				--SUB
						 Opcode = "01100" or				--AND
						 Opcode = "01110" or				--IOR
						 Opcode = "01101" or 			--XOR
						 Opcode = "10100" or				--BTST
						 Opcode = "11101" else '0'; 	--COM
						 
Flag_C <= '1' when Opcode = "01000" or				--ADD
						 Opcode = "01010" or				--SUB
						 Opcode = "11011" or				--FBCL
						 Opcode = "10100" else '0';	--BTST

ALU_OP <= "000" when Opcode = "01000" else		--ADD
			 "001" when Opcode = "01010" else		--SUB
			 "010" when Opcode = "01100" else		--AND
			 "011" when Opcode = "01110" else		--IOR
			 "100" when Opcode = "11011" else		--FBCL
			 "101" when Opcode = "01101" else		--XOR
			 "110" when Opcode = "10100" else		--BTST
			 "111" when Opcode = "11101";		      --COM
			 
MEMWr <= '1' when Opcode = "10001" else '0';

MEM2Reg <= '1' when Opcode = "10000" else '0';

RegWr <= '1' when Opcode = "01000" or				--ADD
						Opcode = "01010" or				--SUB
						Opcode = "01100" or				--AND
						Opcode = "01110" or				--IOR
						Opcode = "10000" or
						Opcode = "11011" or				--FBCL
						Opcode = "01101" or				--XOR
						Opcode = "11101" else '0'; 	--COM
						
RegBase <= '1' when Opcode = "10100" else '0';	--BTST

RegDest <= '1' when Opcode = "01000" or			--ADD
						  Opcode = "01010" or			--SUB
						  Opcode = "01100" or			--AND
						  Opcode = "01110" or			--IOR
						  Opcode = "11011" or			--FBCL
						  Opcode = "01101" or			--XOR
						  Opcode = "11101" else '0'; 	--COM
						  
Branch <= '1' when Opcode = "00110" else '0';	--BRA

end Behavioral;

