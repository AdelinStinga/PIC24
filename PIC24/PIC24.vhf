--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : PIC24.vhf
-- /___/   /\     Timestamp : 01/15/2021 15:15:24
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx92i\bin\nt\sch2vhdl.exe -intstyle ise -family spartan3 -flat -suppress -w D:/Adelin/Facultate/ANUL3/Project/PIC24/PIC24.sch PIC24.vhf
--Design Name: PIC24
--Device: spartan3
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity PIC24 is
   port ( Clk   : in    std_logic; 
          INW0  : in    std_logic_vector (15 downto 0); 
          INW1  : in    std_logic_vector (15 downto 0); 
          OUTW0 : out   std_logic_vector (15 downto 0));
end PIC24;

architecture BEHAVIORAL of PIC24 is
   signal ALUOut       : std_logic_vector (15 downto 0);
   signal ALU_OP       : std_logic_vector (2 downto 0);
   signal Branch       : std_logic;
   signal C            : std_logic;
   signal DataOut      : std_logic_vector (15 downto 0);
   signal Flag_C       : std_logic;
   signal Flag_N       : std_logic;
   signal Flag_OV      : std_logic;
   signal Flag_Z       : std_logic;
   signal Instr        : std_logic_vector (23 downto 0);
   signal MEMWr        : std_logic;
   signal MEM2Reg      : std_logic;
   signal muxBase      : std_logic_vector (3 downto 0);
   signal muxDest      : std_logic_vector (3 downto 0);
   signal N            : std_logic;
   signal New_PC       : std_logic_vector (5 downto 0);
   signal OV           : std_logic;
   signal PC           : std_logic_vector (5 downto 0);
   signal RdDataBase   : std_logic_vector (15 downto 0);
   signal RdDataSource : std_logic_vector (15 downto 0);
   signal RegBase      : std_logic;
   signal RegDest      : std_logic;
   signal RegWr        : std_logic;
   signal WrData       : std_logic_vector (15 downto 0);
   signal Z            : std_logic;
   component ALU
      port ( Clk          : in    std_logic; 
             Flag_N       : in    std_logic; 
             Flag_C       : in    std_logic; 
             Flag_Z       : in    std_logic; 
             Flag_OV      : in    std_logic; 
             RdDataBase   : in    std_logic_vector (15 downto 0); 
             RdDataSource : in    std_logic_vector (15 downto 0); 
             ALU_OP       : in    std_logic_vector (2 downto 0); 
             lit5         : in    std_logic_vector (4 downto 0); 
             Y            : out   std_logic_vector (15 downto 0); 
             OV           : out   std_logic; 
             C            : out   std_logic; 
             Z            : out   std_logic; 
             N            : out   std_logic);
   end component;
   
   component CTRL
      port ( Opcode  : in    std_logic_vector (4 downto 0); 
             Flag_N  : out   std_logic; 
             Flag_OV : out   std_logic; 
             Flag_Z  : out   std_logic; 
             Flag_C  : out   std_logic; 
             MEMWr   : out   std_logic; 
             MEM2Reg : out   std_logic; 
             RegWr   : out   std_logic; 
             RegBase : out   std_logic; 
             RegDest : out   std_logic; 
             Branch  : out   std_logic; 
             ALU_OP  : out   std_logic_vector (2 downto 0));
   end component;
   
   component DataMem
      port ( Clk     : in    std_logic; 
             Wr      : in    std_logic; 
             INW0    : in    std_logic_vector (15 downto 0); 
             INW1    : in    std_logic_vector (15 downto 0); 
             Addr    : in    std_logic_vector (4 downto 0); 
             DataIn  : in    std_logic_vector (15 downto 0); 
             OUTW0   : out   std_logic_vector (15 downto 0); 
             DataOut : out   std_logic_vector (15 downto 0));
   end component;
   
   component File_Regs
      port ( Clk     : in    std_logic; 
             WrEn    : in    std_logic; 
             RdReg1  : in    std_logic_vector (3 downto 0); 
             RdReg2  : in    std_logic_vector (3 downto 0); 
             WrReg   : in    std_logic_vector (3 downto 0); 
             WrData  : in    std_logic_vector (15 downto 0); 
             RdData1 : out   std_logic_vector (15 downto 0); 
             RdData2 : out   std_logic_vector (15 downto 0));
   end component;
   
   component MUX2x4
      port ( I0       : in    std_logic_vector (3 downto 0); 
             Y        : out   std_logic_vector (3 downto 0); 
             I1       : in    std_logic_vector (3 downto 0); 
             Selectie : in    std_logic);
   end component;
   
   component MUX2x16
      port ( Selectie : in    std_logic; 
             Y        : out   std_logic_vector (15 downto 0); 
             I0       : in    std_logic_vector (15 downto 0); 
             I1       : in    std_logic_vector (15 downto 0));
   end component;
   
   component PC_Update
      port ( New_PC      : out   std_logic_vector (5 downto 0); 
             OV          : in    std_logic; 
             Branch      : in    std_logic; 
             Offset      : in    std_logic_vector (4 downto 0); 
             N           : in    std_logic; 
             Z           : in    std_logic; 
             C           : in    std_logic; 
             Branch_Type : in    std_logic_vector (2 downto 0); 
             PC          : in    std_logic_vector (5 downto 0));
   end component;
   
   component ProgCnt
      port ( Clk    : in    std_logic; 
             New_PC : in    std_logic_vector (5 downto 0); 
             PC     : out   std_logic_vector (5 downto 0));
   end component;
   
   component ROM32x24
      port ( Addr : in    std_logic_vector (4 downto 0); 
             Data : out   std_logic_vector (23 downto 0));
   end component;
   
begin
   ALUU : ALU
      port map (ALU_OP(2 downto 0)=>ALU_OP(2 downto 0),
                Clk=>Clk,
                Flag_C=>Flag_C,
                Flag_N=>Flag_N,
                Flag_OV=>Flag_OV,
                Flag_Z=>Flag_Z,
                lit5(4 downto 0)=>Instr(4 downto 0),
                RdDataBase(15 downto 0)=>RdDataBase(15 downto 0),
                RdDataSource(15 downto 0)=>RdDataSource(15 downto 0),
                C=>C,
                N=>N,
                OV=>OV,
                Y(15 downto 0)=>ALUOut(15 downto 0),
                Z=>Z);
   
   CONTROL : CTRL
      port map (Opcode(4 downto 0)=>Instr(23 downto 19),
                ALU_OP(2 downto 0)=>ALU_OP(2 downto 0),
                Branch=>Branch,
                Flag_C=>Flag_C,
                Flag_N=>Flag_N,
                Flag_OV=>Flag_OV,
                Flag_Z=>Flag_Z,
                MEMWr=>MEMWr,
                MEM2Reg=>MEM2Reg,
                RegBase=>RegBase,
                RegDest=>RegDest,
                RegWr=>RegWr);
   
   DataMemory : DataMem
      port map (Addr(4 downto 0)=>Instr(8 downto 4),
                Clk=>Clk,
                DataIn(15 downto 0)=>RdDataSource(15 downto 0),
                INW0(15 downto 0)=>INW0(15 downto 0),
                INW1(15 downto 0)=>INW1(15 downto 0),
                Wr=>MEMWr,
                DataOut(15 downto 0)=>DataOut(15 downto 0),
                OUTW0(15 downto 0)=>OUTW0(15 downto 0));
   
   File_Registers : File_Regs
      port map (Clk=>Clk,
                RdReg1(3 downto 0)=>muxBase(3 downto 0),
                RdReg2(3 downto 0)=>Instr(3 downto 0),
                WrData(15 downto 0)=>WrData(15 downto 0),
                WrEn=>RegWr,
                WrReg(3 downto 0)=>muxDest(3 downto 0),
                RdData1(15 downto 0)=>RdDataBase(15 downto 0),
                RdData2(15 downto 0)=>RdDataSource(15 downto 0));
   
   MUX2v4 : MUX2x4
      port map (I0(3 downto 0)=>Instr(3 downto 0),
                I1(3 downto 0)=>Instr(10 downto 7),
                Selectie=>RegDest,
                Y(3 downto 0)=>muxDest(3 downto 0));
   
   MUX2v16 : MUX2x16
      port map (I0(15 downto 0)=>ALUOut(15 downto 0),
                I1(15 downto 0)=>DataOut(15 downto 0),
                Selectie=>MEM2Reg,
                Y(15 downto 0)=>WrData(15 downto 0));
   
   MUX2z4 : MUX2x4
      port map (I0(3 downto 0)=>Instr(18 downto 15),
                I1(3 downto 0)=>Instr(14 downto 11),
                Selectie=>RegBase,
                Y(3 downto 0)=>muxBase(3 downto 0));
   
   PC_Updates : PC_Update
      port map (Branch=>Branch,
                Branch_Type(2 downto 0)=>Instr(18 downto 16),
                C=>C,
                N=>N,
                Offset(4 downto 0)=>Instr(4 downto 0),
                OV=>OV,
                PC(5 downto 0)=>PC(5 downto 0),
                Z=>Z,
                New_PC(5 downto 0)=>New_PC(5 downto 0));
   
   ProgCounter : ProgCnt
      port map (Clk=>Clk,
                New_PC(5 downto 0)=>New_PC(5 downto 0),
                PC(5 downto 0)=>PC(5 downto 0));
   
   ROM32v24 : ROM32x24
      port map (Addr(4 downto 0)=>PC(5 downto 1),
                Data(23 downto 0)=>Instr(23 downto 0));
   
end BEHAVIORAL;


