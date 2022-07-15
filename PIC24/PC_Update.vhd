----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:02:05 03/28/2020 
-- Design Name: 
-- Module Name:    PC_Update - Behavioral 
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

entity PC_Update is
    Port (  Z : in STD_LOGIC;
				N : in STD_LOGIC;
				C : in STD_LOGIC;
				OV : in STD_LOGIC;
				Offset : in STD_LOGIC_VECTOR (4 downto 0);
				Branch : in STD_LOGIC;
				Branch_Type : in STD_LOGIC_VECTOR (2 downto 0);
				PC : in  STD_LOGIC_VECTOR (5 downto 0);
            New_PC : out  STD_LOGIC_VECTOR (5 downto 0));
end PC_Update;

architecture Behavioral of PC_Update is

signal PC_P2 : STD_LOGIC_VECTOR (5 downto 0);
signal depl : STD_LOGIC_VECTOR(5 downto 0);

begin

depl <= Offset & '0';

PC_P2 <= PC+2; 

New_PC <= PC_P2 + depl when Branch = '1' and Z = '1' and Branch_Type = "010" else
			 PC_P2 + depl when Branch = '1' and N = '1' and Branch_Type = "011" else
			 PC_P2 + depl when Branch = '1' and C = '1' and Branch_Type = "001" else
			 PC_P2 + depl when Branch = '1' and OV = '1' and Branch_Type = "000" else
			 PC_P2 + depl when Branch = '1' and Branch_Type = "111" else
			 PC_P2;

end Behavioral;

