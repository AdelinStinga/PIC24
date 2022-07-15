----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:14:05 03/28/2020 
-- Design Name: 
-- Module Name:    ROM32x32 - Behavioral 
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

entity ROM32x24 is
    Port ( Addr : in  STD_LOGIC_VECTOR (4 downto 0);
           Data : out  STD_LOGIC_VECTOR (23 downto 0));
end ROM32x24;

architecture ROM32x24_arch of ROM32x24 is


-- The following code must appear before the "begin" keyword in the architecture
-- body.

    type tROM is array (0 to 31) of std_logic_vector (23 downto 0);
    constant ROM : tROM :=(
x"808101",-- 0 	  MOV 0x1020, W1                 7:     mov 0x1020, w1 ;INW0=ffff
x"808112",-- 1	     MOV 0x1022, W2                 8:     mov 0x1022, w2 ;INW1=0001
x"408182",-- 2      ADD W1, W2, W3                 9:     add w1,w2,w3 ;0000, Z=1
x"410382",-- 3      ADD W2, W2, W7                 10:    add w2,w2,w7 ;0002, Z=0
x"510202",-- 4      SUB W2, W2, W4                 11:    sub w2,w2,w4 ;0000, Z=1
x"520202",-- 5      SUB W4, W2, W4                 12:    sub w4,w2,w4 ;ffff, Z=0
x"608283",-- 6      AND W1, W3, W5                 13:    and w1,w3,w5 ;0000, Z=1
x"608281",-- 7      AND W1, W1, W5                 14:    and w1,w1,w5 ;ffff Z=0
x"718303",-- 8      IOR W3, W3, W6                 15:    ior w3,w3,w6 ;0000 Z=1
x"708302",-- 9      IOR W1, W2, W6                 16:    ior w1,w2,w6 ;FFFF Z=0
x"888121",-- 10     MOV W1, 0x1024                 17:    mov w1, 0x1024
x"888122",-- 11     MOV W2, 0x1024                 18:    mov w2, 0x1024
x"888123",-- 12     MOV W3, 0x1024                 19:    mov w3, 0x1024
x"888124",-- 13     MOV W4, 0x1024                 20:    mov w4, 0x1024
x"888125",-- 14     MOV W5, 0x1024                 21:    mov w5, 0x1024
x"888126",-- 15     MOV W6, 0x1024                 22:    mov w6, 0x1024
x"37FFEF",-- 16     BRA 0x2B8                      23:    bra LOOP                  
x"000000",-- 17     
x"000000",-- 18
x"000000",-- 19
x"000000",-- 20
x"000000",-- 21
x"000000",-- 22
x"000000",-- 23
x"000000",-- 24
x"000000",-- 25
x"000000",-- 26
x"000000",-- 27
x"000000",-- 28
x"000000",-- 29
x"000000",-- 30
x"000000" -- 31
	 
	 );  
			

begin

Data <= ROM (conv_integer(Addr));

end ROM32x24_arch;

