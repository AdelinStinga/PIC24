--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: PIC24_synthesis.vhd
-- /___/   /\     Timestamp: Fri Jan 15 15:15:36 2021
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm PIC24 -w -dir netgen/synthesis -ofmt vhdl -sim PIC24.ngc PIC24_synthesis.vhd 
-- Device	: xc3s400-4-ft256
-- Input file	: PIC24.ngc
-- Output file	: D:\Adelin\Facultate\ANUL3\Project\PIC24\netgen\synthesis\PIC24_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: PIC24
-- Xilinx	: C:\Xilinx92i
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Development System Reference Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity PIC24 is
  port (
    Clk : in STD_LOGIC := 'X'; 
    OUTW0 : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    INW0 : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    INW1 : in STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end PIC24;

architecture Structure of PIC24 is
  signal Clk_BUFGP_0 : STD_LOGIC; 
  signal MEMWr : STD_LOGIC; 
  signal ALUU_C_1 : STD_LOGIC; 
  signal ALUU_N_2 : STD_LOGIC; 
  signal ALUU_Z_3 : STD_LOGIC; 
  signal ALUU_OV_4 : STD_LOGIC; 
  signal Flag_C : STD_LOGIC; 
  signal Flag_N : STD_LOGIC; 
  signal Flag_Z : STD_LOGIC; 
  signal RegDest : STD_LOGIC; 
  signal RegWr : STD_LOGIC; 
  signal Flag_OV : STD_LOGIC; 
  signal INW0_15_IBUF_5 : STD_LOGIC; 
  signal INW0_14_IBUF_6 : STD_LOGIC; 
  signal INW0_13_IBUF_7 : STD_LOGIC; 
  signal INW0_12_IBUF_8 : STD_LOGIC; 
  signal INW0_11_IBUF_9 : STD_LOGIC; 
  signal INW0_10_IBUF_10 : STD_LOGIC; 
  signal INW0_9_IBUF_11 : STD_LOGIC; 
  signal INW0_8_IBUF_12 : STD_LOGIC; 
  signal INW0_7_IBUF_13 : STD_LOGIC; 
  signal INW0_6_IBUF_14 : STD_LOGIC; 
  signal INW0_5_IBUF_15 : STD_LOGIC; 
  signal INW0_4_IBUF_16 : STD_LOGIC; 
  signal INW0_3_IBUF_17 : STD_LOGIC; 
  signal INW0_2_IBUF_18 : STD_LOGIC; 
  signal INW0_1_IBUF_19 : STD_LOGIC; 
  signal INW0_0_IBUF_20 : STD_LOGIC; 
  signal INW1_15_IBUF_21 : STD_LOGIC; 
  signal INW1_14_IBUF_22 : STD_LOGIC; 
  signal INW1_13_IBUF_23 : STD_LOGIC; 
  signal INW1_12_IBUF_24 : STD_LOGIC; 
  signal INW1_11_IBUF_25 : STD_LOGIC; 
  signal INW1_10_IBUF_26 : STD_LOGIC; 
  signal INW1_9_IBUF_27 : STD_LOGIC; 
  signal INW1_8_IBUF_28 : STD_LOGIC; 
  signal INW1_7_IBUF_29 : STD_LOGIC; 
  signal INW1_6_IBUF_30 : STD_LOGIC; 
  signal INW1_5_IBUF_31 : STD_LOGIC; 
  signal INW1_4_IBUF_32 : STD_LOGIC; 
  signal INW1_3_IBUF_33 : STD_LOGIC; 
  signal INW1_2_IBUF_34 : STD_LOGIC; 
  signal INW1_1_IBUF_35 : STD_LOGIC; 
  signal INW1_0_IBUF_36 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal DataMemory_and0000 : STD_LOGIC; 
  signal DataMemory_OUTW0_and0000 : STD_LOGIC; 
  signal PC_Updates_N0 : STD_LOGIC; 
  signal PC_Updates_N8 : STD_LOGIC; 
  signal PC_Updates_N7 : STD_LOGIC; 
  signal PC_Updates_N6 : STD_LOGIC; 
  signal PC_Updates_N5 : STD_LOGIC; 
  signal ALUU_Result_mux0000_0_bdd12 : STD_LOGIC; 
  signal ALUU_Result_mux0000_1_bdd17 : STD_LOGIC; 
  signal ALUU_Result_mux0000_1_bdd26 : STD_LOGIC; 
  signal ALUU_zero_bdd0 : STD_LOGIC; 
  signal ALUU_N19 : STD_LOGIC; 
  signal ALUU_N18 : STD_LOGIC; 
  signal ALUU_N17 : STD_LOGIC; 
  signal ALUU_N16 : STD_LOGIC; 
  signal ALUU_N15 : STD_LOGIC; 
  signal ALUU_N14 : STD_LOGIC; 
  signal ALUU_N13 : STD_LOGIC; 
  signal ALUU_N12 : STD_LOGIC; 
  signal ALUU_N11 : STD_LOGIC; 
  signal ALUU_N10 : STD_LOGIC; 
  signal ALUU_N9 : STD_LOGIC; 
  signal ALUU_N8 : STD_LOGIC; 
  signal ALUU_N7 : STD_LOGIC; 
  signal ALUU_N6 : STD_LOGIC; 
  signal ALUU_N5 : STD_LOGIC; 
  signal ALUU_N4 : STD_LOGIC; 
  signal ALUU_Carry_16_and0001 : STD_LOGIC; 
  signal ALUU_Carry_16_and0000 : STD_LOGIC; 
  signal ALUU_Carry_15_and0001 : STD_LOGIC; 
  signal ALUU_Carry_15_and0000 : STD_LOGIC; 
  signal ALUU_Carry_14_and0001 : STD_LOGIC; 
  signal ALUU_Carry_14_and0000 : STD_LOGIC; 
  signal ALUU_Carry_13_and0001 : STD_LOGIC; 
  signal ALUU_Carry_13_and0000 : STD_LOGIC; 
  signal ALUU_Carry_12_and0001 : STD_LOGIC; 
  signal ALUU_Carry_12_and0000 : STD_LOGIC; 
  signal ALUU_Carry_11_and0001 : STD_LOGIC; 
  signal ALUU_Carry_11_and0000 : STD_LOGIC; 
  signal ALUU_Carry_10_and0001 : STD_LOGIC; 
  signal ALUU_Carry_10_and0000 : STD_LOGIC; 
  signal ALUU_Carry_9_and0001 : STD_LOGIC; 
  signal ALUU_Carry_9_and0000 : STD_LOGIC; 
  signal ALUU_Carry_8_and0001 : STD_LOGIC; 
  signal ALUU_Carry_8_and0000 : STD_LOGIC; 
  signal ALUU_Carry_7_and0001 : STD_LOGIC; 
  signal ALUU_Carry_7_and0000 : STD_LOGIC; 
  signal ALUU_Carry_6_and0001 : STD_LOGIC; 
  signal ALUU_Carry_6_and0000 : STD_LOGIC; 
  signal ALUU_Carry_5_and0001 : STD_LOGIC; 
  signal ALUU_Carry_5_and0000 : STD_LOGIC; 
  signal ALUU_Carry_4_and0001 : STD_LOGIC; 
  signal ALUU_Carry_4_and0000 : STD_LOGIC; 
  signal ALUU_Carry_3_and0001 : STD_LOGIC; 
  signal ALUU_Carry_3_and0000 : STD_LOGIC; 
  signal ALUU_Carry_2_and0001 : STD_LOGIC; 
  signal ALUU_Carry_2_and0000 : STD_LOGIC; 
  signal ALUU_Carry_1_and0001 : STD_LOGIC; 
  signal ALUU_Carry_1_and0000 : STD_LOGIC; 
  signal ALUU_Carry_0_and0001 : STD_LOGIC; 
  signal ALUU_Carry_0_and0000 : STD_LOGIC; 
  signal ALUU_Carry_cmp_eq0000 : STD_LOGIC; 
  signal ALUU_zero : STD_LOGIC; 
  signal ALUU_flag_carry : STD_LOGIC; 
  signal ALUU_overflow : STD_LOGIC; 
  signal ALUU_Carry_mux0002 : STD_LOGIC; 
  signal ALUU_Result_not0002 : STD_LOGIC; 
  signal CONTROL_N10 : STD_LOGIC; 
  signal CONTROL_N9 : STD_LOGIC; 
  signal CONTROL_N31 : STD_LOGIC; 
  signal CONTROL_ALU_OP_not0001 : STD_LOGIC; 
  signal ALUU_zero2_map5 : STD_LOGIC; 
  signal ALUU_zero2_map9 : STD_LOGIC; 
  signal ALUU_zero2_map12 : STD_LOGIC; 
  signal ALUU_Result_mux0000_3_1_map27 : STD_LOGIC; 
  signal ALUU_Result_mux0000_3_1_map34 : STD_LOGIC; 
  signal ALUU_Result_mux0000_3_1_map41 : STD_LOGIC; 
  signal ALUU_Result_mux0000_3_1_map44 : STD_LOGIC; 
  signal ALUU_Result_mux0000_3_1_map48 : STD_LOGIC; 
  signal ALUU_Result_mux0000_2_1_map35 : STD_LOGIC; 
  signal ALUU_Result_mux0000_2_1_map43 : STD_LOGIC; 
  signal ALUU_Result_mux0000_2_1_map48 : STD_LOGIC; 
  signal ALUU_Result_mux0000_2_1_map50 : STD_LOGIC; 
  signal ALUU_Result_mux0000_2_1_map54 : STD_LOGIC; 
  signal ALUU_Result_mux0000_2_1_map75 : STD_LOGIC; 
  signal ALUU_Result_mux0000_2_1_map81 : STD_LOGIC; 
  signal ALUU_Result_mux0000_2_1_map83 : STD_LOGIC; 
  signal ALUU_Result_mux0000_2_1_map85 : STD_LOGIC; 
  signal ALUU_Result_mux0000_0_5_map35 : STD_LOGIC; 
  signal ALUU_Result_mux0000_0_5_map87 : STD_LOGIC; 
  signal ALUU_Result_mux0000_0_5_map90 : STD_LOGIC; 
  signal ALUU_Result_mux0000_0_5_map97 : STD_LOGIC; 
  signal ALUU_Result_mux0000_0_5_map102 : STD_LOGIC; 
  signal ALUU_Result_mux0000_0_5_map105 : STD_LOGIC; 
  signal ALUU_Result_mux0000_1_1_map90 : STD_LOGIC; 
  signal ALUU_Result_mux0000_1_1_map95 : STD_LOGIC; 
  signal ALUU_Result_mux0000_1_1_map105 : STD_LOGIC; 
  signal MUX2v16_Y_9_map6 : STD_LOGIC; 
  signal MUX2v16_Y_8_map6 : STD_LOGIC; 
  signal MUX2v16_Y_7_map6 : STD_LOGIC; 
  signal MUX2v16_Y_6_map6 : STD_LOGIC; 
  signal MUX2v16_Y_5_map6 : STD_LOGIC; 
  signal MUX2v16_Y_4_map6 : STD_LOGIC; 
  signal MUX2v16_Y_3_map6 : STD_LOGIC; 
  signal MUX2v16_Y_2_map6 : STD_LOGIC; 
  signal MUX2v16_Y_1_map6 : STD_LOGIC; 
  signal MUX2v16_Y_15_map6 : STD_LOGIC; 
  signal MUX2v16_Y_14_map6 : STD_LOGIC; 
  signal MUX2v16_Y_13_map6 : STD_LOGIC; 
  signal MUX2v16_Y_12_map6 : STD_LOGIC; 
  signal MUX2v16_Y_11_map6 : STD_LOGIC; 
  signal MUX2v16_Y_10_map6 : STD_LOGIC; 
  signal MUX2v16_Y_0_map6 : STD_LOGIC; 
  signal PC_Updates_New_PC_5_1_map6 : STD_LOGIC; 
  signal PC_Updates_New_PC_5_1_map14 : STD_LOGIC; 
  signal PC_Updates_New_PC_5_1_map15 : STD_LOGIC; 
  signal PC_Updates_New_PC_5_1_map20 : STD_LOGIC; 
  signal N2584 : STD_LOGIC; 
  signal N2585 : STD_LOGIC; 
  signal ALUU_flag_carry1_map4 : STD_LOGIC; 
  signal ALUU_flag_carry1_map5 : STD_LOGIC; 
  signal ALUU_flag_carry1_map8 : STD_LOGIC; 
  signal ALUU_flag_carry1_map11 : STD_LOGIC; 
  signal ALUU_flag_carry1_map12 : STD_LOGIC; 
  signal ALUU_flag_carry1_map20 : STD_LOGIC; 
  signal ALUU_flag_carry1_map27 : STD_LOGIC; 
  signal ALUU_flag_carry1_map28 : STD_LOGIC; 
  signal ALUU_flag_carry1_map35 : STD_LOGIC; 
  signal ALUU_flag_carry1_map41 : STD_LOGIC; 
  signal ALUU_flag_carry1_map43 : STD_LOGIC; 
  signal ALUU_flag_carry1_map50 : STD_LOGIC; 
  signal ALUU_zero1_map7 : STD_LOGIC; 
  signal ALUU_zero1_map12 : STD_LOGIC; 
  signal ALUU_zero1_map20 : STD_LOGIC; 
  signal ALUU_zero1_map25 : STD_LOGIC; 
  signal ALUU_zero1_map32 : STD_LOGIC; 
  signal ALUU_zero1_map36 : STD_LOGIC; 
  signal ALUU_zero1_map41 : STD_LOGIC; 
  signal ALUU_zero1_map49 : STD_LOGIC; 
  signal ALUU_zero1_map54 : STD_LOGIC; 
  signal ALUU_zero1_map62 : STD_LOGIC; 
  signal N2909 : STD_LOGIC; 
  signal N2910 : STD_LOGIC; 
  signal N2911 : STD_LOGIC; 
  signal N2912 : STD_LOGIC; 
  signal N2917 : STD_LOGIC; 
  signal N2919 : STD_LOGIC; 
  signal N2921 : STD_LOGIC; 
  signal N2927 : STD_LOGIC; 
  signal N2929 : STD_LOGIC; 
  signal N2931 : STD_LOGIC; 
  signal N2933 : STD_LOGIC; 
  signal N2935 : STD_LOGIC; 
  signal N2937 : STD_LOGIC; 
  signal N2939 : STD_LOGIC; 
  signal N2941 : STD_LOGIC; 
  signal N2943 : STD_LOGIC; 
  signal N2945 : STD_LOGIC; 
  signal N2947 : STD_LOGIC; 
  signal N2949 : STD_LOGIC; 
  signal N2951 : STD_LOGIC; 
  signal N2953 : STD_LOGIC; 
  signal N2955 : STD_LOGIC; 
  signal N2957 : STD_LOGIC; 
  signal N2959 : STD_LOGIC; 
  signal N2961 : STD_LOGIC; 
  signal N2963 : STD_LOGIC; 
  signal N2965 : STD_LOGIC; 
  signal N2967 : STD_LOGIC; 
  signal N2969 : STD_LOGIC; 
  signal N2971 : STD_LOGIC; 
  signal N2973 : STD_LOGIC; 
  signal N2975 : STD_LOGIC; 
  signal N2979 : STD_LOGIC; 
  signal N2981 : STD_LOGIC; 
  signal N2983 : STD_LOGIC; 
  signal N2984 : STD_LOGIC; 
  signal N2985 : STD_LOGIC; 
  signal N2986 : STD_LOGIC; 
  signal N2987 : STD_LOGIC; 
  signal N2988 : STD_LOGIC; 
  signal N2989 : STD_LOGIC; 
  signal N2990 : STD_LOGIC; 
  signal N2991 : STD_LOGIC; 
  signal N2992 : STD_LOGIC; 
  signal N2993 : STD_LOGIC; 
  signal N2994 : STD_LOGIC; 
  signal N2995 : STD_LOGIC; 
  signal N2996 : STD_LOGIC; 
  signal N2997 : STD_LOGIC; 
  signal N2998 : STD_LOGIC; 
  signal N2999 : STD_LOGIC; 
  signal N3000 : STD_LOGIC; 
  signal N3001 : STD_LOGIC; 
  signal N3002 : STD_LOGIC; 
  signal N3003 : STD_LOGIC; 
  signal N3004 : STD_LOGIC; 
  signal N3005 : STD_LOGIC; 
  signal N3006 : STD_LOGIC; 
  signal N3007 : STD_LOGIC; 
  signal N3008 : STD_LOGIC; 
  signal N3009 : STD_LOGIC; 
  signal N3010 : STD_LOGIC; 
  signal N3011 : STD_LOGIC; 
  signal N3012 : STD_LOGIC; 
  signal N3013 : STD_LOGIC; 
  signal N3014 : STD_LOGIC; 
  signal N3015 : STD_LOGIC; 
  signal N3016 : STD_LOGIC; 
  signal N3017 : STD_LOGIC; 
  signal N3018 : STD_LOGIC; 
  signal N3019 : STD_LOGIC; 
  signal N3020 : STD_LOGIC; 
  signal N3021 : STD_LOGIC; 
  signal N3022 : STD_LOGIC; 
  signal N3023 : STD_LOGIC; 
  signal N3024 : STD_LOGIC; 
  signal N3025 : STD_LOGIC; 
  signal N3026 : STD_LOGIC; 
  signal N3027 : STD_LOGIC; 
  signal N3028 : STD_LOGIC; 
  signal N3029 : STD_LOGIC; 
  signal N3030 : STD_LOGIC; 
  signal N3031 : STD_LOGIC; 
  signal N3032 : STD_LOGIC; 
  signal N3033 : STD_LOGIC; 
  signal N3034 : STD_LOGIC; 
  signal N3035 : STD_LOGIC; 
  signal N3036 : STD_LOGIC; 
  signal N3037 : STD_LOGIC; 
  signal N3038 : STD_LOGIC; 
  signal N3039 : STD_LOGIC; 
  signal N3040 : STD_LOGIC; 
  signal N3041 : STD_LOGIC; 
  signal N3042 : STD_LOGIC; 
  signal N3043 : STD_LOGIC; 
  signal N3044 : STD_LOGIC; 
  signal N3045 : STD_LOGIC; 
  signal N3046 : STD_LOGIC; 
  signal N3047 : STD_LOGIC; 
  signal N3048 : STD_LOGIC; 
  signal N3049 : STD_LOGIC; 
  signal N3050 : STD_LOGIC; 
  signal N3051 : STD_LOGIC; 
  signal N3052 : STD_LOGIC; 
  signal N3053 : STD_LOGIC; 
  signal N3054 : STD_LOGIC; 
  signal N3055 : STD_LOGIC; 
  signal N3056 : STD_LOGIC; 
  signal N3057 : STD_LOGIC; 
  signal N3058 : STD_LOGIC; 
  signal N3059 : STD_LOGIC; 
  signal N3060 : STD_LOGIC; 
  signal N3061 : STD_LOGIC; 
  signal N3062 : STD_LOGIC; 
  signal N3063 : STD_LOGIC; 
  signal N3064 : STD_LOGIC; 
  signal N3065 : STD_LOGIC; 
  signal N3066 : STD_LOGIC; 
  signal N3067 : STD_LOGIC; 
  signal N3068 : STD_LOGIC; 
  signal N3069 : STD_LOGIC; 
  signal N3070 : STD_LOGIC; 
  signal N3071 : STD_LOGIC; 
  signal N3072 : STD_LOGIC; 
  signal N3073 : STD_LOGIC; 
  signal N3074 : STD_LOGIC; 
  signal N3076 : STD_LOGIC; 
  signal N3077 : STD_LOGIC; 
  signal N3078 : STD_LOGIC; 
  signal N3079 : STD_LOGIC; 
  signal N3080 : STD_LOGIC; 
  signal N3081 : STD_LOGIC; 
  signal NLW_inst_Mram_mem_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_Mram_mem1_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_Mram_mem2_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_Mram_mem3_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_Mram_mem4_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_Mram_mem7_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_Mram_mem5_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_Mram_mem6_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_Mram_mem8_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_Mram_mem9_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_Mram_mem10_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_Mram_mem11_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_Mram_mem12_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_Mram_mem13_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_Mram_mem16_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_Mram_mem14_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_Mram_mem15_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_Mram_mem17_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_Mram_mem18_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_Mram_mem19_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_Mram_mem20_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_Mram_mem21_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_Mram_mem22_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_Mram_mem25_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_Mram_mem23_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_Mram_mem24_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_Mram_mem26_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_Mram_mem27_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_Mram_mem28_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_Mram_mem29_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_Mram_mem30_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_inst_Mram_mem31_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_ROM32v24_Mrom_Data_rom00001_DO_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_ROM32v24_Mrom_Data_rom00001_DO_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_ROM32v24_Mrom_Data_rom00001_DO_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_ROM32v24_Mrom_Data_rom00001_DO_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_ROM32v24_Mrom_Data_rom00001_DO_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_ROM32v24_Mrom_Data_rom00001_DO_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_ROM32v24_Mrom_Data_rom00001_DO_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_ROM32v24_Mrom_Data_rom00001_DO_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_ROM32v24_Mrom_Data_rom00001_DOP_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ROM32v24_Mrom_Data_rom00001_DOP_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ROM32v24_Mrom_Data_rom00001_DOP_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ROM32v24_Mrom_Data_rom00001_DOP_0_UNCONNECTED : STD_LOGIC; 
  signal DataMemory_OUTW0 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal RdDataBase : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal RdDataSource : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal CONTROL_ALU_OP : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Instr : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal muxBase : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal muxDest : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal WrData : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal ALUU_Result : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal ProgCounter_PC : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal New_PC : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal PC : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal DataMemory_MemData : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal PC_Updates_Madd_New_PC_share0000_cy : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal PC_Updates_PC_P2 : STD_LOGIC_VECTOR ( 4 downto 3 ); 
  signal PC_Updates_New_PC_share0000 : STD_LOGIC_VECTOR ( 4 downto 2 ); 
  signal ALUU_Madd_Carry_mux0000_cy : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal ALUU_Carry_mux0000 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal ALUU_Carry : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal ALUU_Result_mux0000 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal CONTROL_ALU_OP_mux0000 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => PC(0)
    );
  ProgCounter_PC_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_0,
      D => New_PC(1),
      Q => ProgCounter_PC(1)
    );
  ProgCounter_PC_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_0,
      D => New_PC(2),
      Q => ProgCounter_PC(2)
    );
  ProgCounter_PC_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_0,
      D => New_PC(3),
      Q => ProgCounter_PC(3)
    );
  ProgCounter_PC_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_0,
      D => New_PC(4),
      Q => ProgCounter_PC(4)
    );
  XST_VCC : VCC
    port map (
      P => N2
    );
  inst_Mram_mem : RAM16X1D
    port map (
      A0 => muxDest(0),
      A1 => muxDest(1),
      A2 => muxDest(2),
      A3 => muxDest(3),
      D => WrData(0),
      DPRA0 => muxBase(0),
      DPRA1 => muxBase(1),
      DPRA2 => muxBase(2),
      DPRA3 => muxBase(3),
      WCLK => Clk_BUFGP_0,
      WE => RegWr,
      SPO => NLW_inst_Mram_mem_SPO_UNCONNECTED,
      DPO => RdDataBase(0)
    );
  inst_Mram_mem1 : RAM16X1D
    port map (
      A0 => muxDest(0),
      A1 => muxDest(1),
      A2 => muxDest(2),
      A3 => muxDest(3),
      D => WrData(1),
      DPRA0 => muxBase(0),
      DPRA1 => muxBase(1),
      DPRA2 => muxBase(2),
      DPRA3 => muxBase(3),
      WCLK => Clk_BUFGP_0,
      WE => RegWr,
      SPO => NLW_inst_Mram_mem1_SPO_UNCONNECTED,
      DPO => RdDataBase(1)
    );
  inst_Mram_mem2 : RAM16X1D
    port map (
      A0 => muxDest(0),
      A1 => muxDest(1),
      A2 => muxDest(2),
      A3 => muxDest(3),
      D => WrData(2),
      DPRA0 => muxBase(0),
      DPRA1 => muxBase(1),
      DPRA2 => muxBase(2),
      DPRA3 => muxBase(3),
      WCLK => Clk_BUFGP_0,
      WE => RegWr,
      SPO => NLW_inst_Mram_mem2_SPO_UNCONNECTED,
      DPO => RdDataBase(2)
    );
  inst_Mram_mem3 : RAM16X1D
    port map (
      A0 => muxDest(0),
      A1 => muxDest(1),
      A2 => muxDest(2),
      A3 => muxDest(3),
      D => WrData(3),
      DPRA0 => muxBase(0),
      DPRA1 => muxBase(1),
      DPRA2 => muxBase(2),
      DPRA3 => muxBase(3),
      WCLK => Clk_BUFGP_0,
      WE => RegWr,
      SPO => NLW_inst_Mram_mem3_SPO_UNCONNECTED,
      DPO => RdDataBase(3)
    );
  inst_Mram_mem4 : RAM16X1D
    port map (
      A0 => muxDest(0),
      A1 => muxDest(1),
      A2 => muxDest(2),
      A3 => muxDest(3),
      D => WrData(4),
      DPRA0 => muxBase(0),
      DPRA1 => muxBase(1),
      DPRA2 => muxBase(2),
      DPRA3 => muxBase(3),
      WCLK => Clk_BUFGP_0,
      WE => RegWr,
      SPO => NLW_inst_Mram_mem4_SPO_UNCONNECTED,
      DPO => RdDataBase(4)
    );
  inst_Mram_mem7 : RAM16X1D
    port map (
      A0 => muxDest(0),
      A1 => muxDest(1),
      A2 => muxDest(2),
      A3 => muxDest(3),
      D => WrData(7),
      DPRA0 => muxBase(0),
      DPRA1 => muxBase(1),
      DPRA2 => muxBase(2),
      DPRA3 => muxBase(3),
      WCLK => Clk_BUFGP_0,
      WE => RegWr,
      SPO => NLW_inst_Mram_mem7_SPO_UNCONNECTED,
      DPO => RdDataBase(7)
    );
  inst_Mram_mem5 : RAM16X1D
    port map (
      A0 => muxDest(0),
      A1 => muxDest(1),
      A2 => muxDest(2),
      A3 => muxDest(3),
      D => WrData(5),
      DPRA0 => muxBase(0),
      DPRA1 => muxBase(1),
      DPRA2 => muxBase(2),
      DPRA3 => muxBase(3),
      WCLK => Clk_BUFGP_0,
      WE => RegWr,
      SPO => NLW_inst_Mram_mem5_SPO_UNCONNECTED,
      DPO => RdDataBase(5)
    );
  inst_Mram_mem6 : RAM16X1D
    port map (
      A0 => muxDest(0),
      A1 => muxDest(1),
      A2 => muxDest(2),
      A3 => muxDest(3),
      D => WrData(6),
      DPRA0 => muxBase(0),
      DPRA1 => muxBase(1),
      DPRA2 => muxBase(2),
      DPRA3 => muxBase(3),
      WCLK => Clk_BUFGP_0,
      WE => RegWr,
      SPO => NLW_inst_Mram_mem6_SPO_UNCONNECTED,
      DPO => RdDataBase(6)
    );
  inst_Mram_mem8 : RAM16X1D
    port map (
      A0 => muxDest(0),
      A1 => muxDest(1),
      A2 => muxDest(2),
      A3 => muxDest(3),
      D => WrData(8),
      DPRA0 => muxBase(0),
      DPRA1 => muxBase(1),
      DPRA2 => muxBase(2),
      DPRA3 => muxBase(3),
      WCLK => Clk_BUFGP_0,
      WE => RegWr,
      SPO => NLW_inst_Mram_mem8_SPO_UNCONNECTED,
      DPO => RdDataBase(8)
    );
  inst_Mram_mem9 : RAM16X1D
    port map (
      A0 => muxDest(0),
      A1 => muxDest(1),
      A2 => muxDest(2),
      A3 => muxDest(3),
      D => WrData(9),
      DPRA0 => muxBase(0),
      DPRA1 => muxBase(1),
      DPRA2 => muxBase(2),
      DPRA3 => muxBase(3),
      WCLK => Clk_BUFGP_0,
      WE => RegWr,
      SPO => NLW_inst_Mram_mem9_SPO_UNCONNECTED,
      DPO => RdDataBase(9)
    );
  inst_Mram_mem10 : RAM16X1D
    port map (
      A0 => muxDest(0),
      A1 => muxDest(1),
      A2 => muxDest(2),
      A3 => muxDest(3),
      D => WrData(10),
      DPRA0 => muxBase(0),
      DPRA1 => muxBase(1),
      DPRA2 => muxBase(2),
      DPRA3 => muxBase(3),
      WCLK => Clk_BUFGP_0,
      WE => RegWr,
      SPO => NLW_inst_Mram_mem10_SPO_UNCONNECTED,
      DPO => RdDataBase(10)
    );
  inst_Mram_mem11 : RAM16X1D
    port map (
      A0 => muxDest(0),
      A1 => muxDest(1),
      A2 => muxDest(2),
      A3 => muxDest(3),
      D => WrData(11),
      DPRA0 => muxBase(0),
      DPRA1 => muxBase(1),
      DPRA2 => muxBase(2),
      DPRA3 => muxBase(3),
      WCLK => Clk_BUFGP_0,
      WE => RegWr,
      SPO => NLW_inst_Mram_mem11_SPO_UNCONNECTED,
      DPO => RdDataBase(11)
    );
  inst_Mram_mem12 : RAM16X1D
    port map (
      A0 => muxDest(0),
      A1 => muxDest(1),
      A2 => muxDest(2),
      A3 => muxDest(3),
      D => WrData(12),
      DPRA0 => muxBase(0),
      DPRA1 => muxBase(1),
      DPRA2 => muxBase(2),
      DPRA3 => muxBase(3),
      WCLK => Clk_BUFGP_0,
      WE => RegWr,
      SPO => NLW_inst_Mram_mem12_SPO_UNCONNECTED,
      DPO => RdDataBase(12)
    );
  inst_Mram_mem13 : RAM16X1D
    port map (
      A0 => muxDest(0),
      A1 => muxDest(1),
      A2 => muxDest(2),
      A3 => muxDest(3),
      D => WrData(13),
      DPRA0 => muxBase(0),
      DPRA1 => muxBase(1),
      DPRA2 => muxBase(2),
      DPRA3 => muxBase(3),
      WCLK => Clk_BUFGP_0,
      WE => RegWr,
      SPO => NLW_inst_Mram_mem13_SPO_UNCONNECTED,
      DPO => RdDataBase(13)
    );
  inst_Mram_mem16 : RAM16X1D
    port map (
      A0 => muxDest(0),
      A1 => muxDest(1),
      A2 => muxDest(2),
      A3 => muxDest(3),
      D => WrData(0),
      DPRA0 => Instr(0),
      DPRA1 => Instr(1),
      DPRA2 => Instr(2),
      DPRA3 => Instr(3),
      WCLK => Clk_BUFGP_0,
      WE => RegWr,
      SPO => NLW_inst_Mram_mem16_SPO_UNCONNECTED,
      DPO => RdDataSource(0)
    );
  inst_Mram_mem14 : RAM16X1D
    port map (
      A0 => muxDest(0),
      A1 => muxDest(1),
      A2 => muxDest(2),
      A3 => muxDest(3),
      D => WrData(14),
      DPRA0 => muxBase(0),
      DPRA1 => muxBase(1),
      DPRA2 => muxBase(2),
      DPRA3 => muxBase(3),
      WCLK => Clk_BUFGP_0,
      WE => RegWr,
      SPO => NLW_inst_Mram_mem14_SPO_UNCONNECTED,
      DPO => RdDataBase(14)
    );
  inst_Mram_mem15 : RAM16X1D
    port map (
      A0 => muxDest(0),
      A1 => muxDest(1),
      A2 => muxDest(2),
      A3 => muxDest(3),
      D => WrData(15),
      DPRA0 => muxBase(0),
      DPRA1 => muxBase(1),
      DPRA2 => muxBase(2),
      DPRA3 => muxBase(3),
      WCLK => Clk_BUFGP_0,
      WE => RegWr,
      SPO => NLW_inst_Mram_mem15_SPO_UNCONNECTED,
      DPO => RdDataBase(15)
    );
  inst_Mram_mem17 : RAM16X1D
    port map (
      A0 => muxDest(0),
      A1 => muxDest(1),
      A2 => muxDest(2),
      A3 => muxDest(3),
      D => WrData(1),
      DPRA0 => Instr(0),
      DPRA1 => Instr(1),
      DPRA2 => Instr(2),
      DPRA3 => Instr(3),
      WCLK => Clk_BUFGP_0,
      WE => RegWr,
      SPO => NLW_inst_Mram_mem17_SPO_UNCONNECTED,
      DPO => RdDataSource(1)
    );
  inst_Mram_mem18 : RAM16X1D
    port map (
      A0 => muxDest(0),
      A1 => muxDest(1),
      A2 => muxDest(2),
      A3 => muxDest(3),
      D => WrData(2),
      DPRA0 => Instr(0),
      DPRA1 => Instr(1),
      DPRA2 => Instr(2),
      DPRA3 => Instr(3),
      WCLK => Clk_BUFGP_0,
      WE => RegWr,
      SPO => NLW_inst_Mram_mem18_SPO_UNCONNECTED,
      DPO => RdDataSource(2)
    );
  inst_Mram_mem19 : RAM16X1D
    port map (
      A0 => muxDest(0),
      A1 => muxDest(1),
      A2 => muxDest(2),
      A3 => muxDest(3),
      D => WrData(3),
      DPRA0 => Instr(0),
      DPRA1 => Instr(1),
      DPRA2 => Instr(2),
      DPRA3 => Instr(3),
      WCLK => Clk_BUFGP_0,
      WE => RegWr,
      SPO => NLW_inst_Mram_mem19_SPO_UNCONNECTED,
      DPO => RdDataSource(3)
    );
  inst_Mram_mem20 : RAM16X1D
    port map (
      A0 => muxDest(0),
      A1 => muxDest(1),
      A2 => muxDest(2),
      A3 => muxDest(3),
      D => WrData(4),
      DPRA0 => Instr(0),
      DPRA1 => Instr(1),
      DPRA2 => Instr(2),
      DPRA3 => Instr(3),
      WCLK => Clk_BUFGP_0,
      WE => RegWr,
      SPO => NLW_inst_Mram_mem20_SPO_UNCONNECTED,
      DPO => RdDataSource(4)
    );
  inst_Mram_mem21 : RAM16X1D
    port map (
      A0 => muxDest(0),
      A1 => muxDest(1),
      A2 => muxDest(2),
      A3 => muxDest(3),
      D => WrData(5),
      DPRA0 => Instr(0),
      DPRA1 => Instr(1),
      DPRA2 => Instr(2),
      DPRA3 => Instr(3),
      WCLK => Clk_BUFGP_0,
      WE => RegWr,
      SPO => NLW_inst_Mram_mem21_SPO_UNCONNECTED,
      DPO => RdDataSource(5)
    );
  inst_Mram_mem22 : RAM16X1D
    port map (
      A0 => muxDest(0),
      A1 => muxDest(1),
      A2 => muxDest(2),
      A3 => muxDest(3),
      D => WrData(6),
      DPRA0 => Instr(0),
      DPRA1 => Instr(1),
      DPRA2 => Instr(2),
      DPRA3 => Instr(3),
      WCLK => Clk_BUFGP_0,
      WE => RegWr,
      SPO => NLW_inst_Mram_mem22_SPO_UNCONNECTED,
      DPO => RdDataSource(6)
    );
  inst_Mram_mem25 : RAM16X1D
    port map (
      A0 => muxDest(0),
      A1 => muxDest(1),
      A2 => muxDest(2),
      A3 => muxDest(3),
      D => WrData(9),
      DPRA0 => Instr(0),
      DPRA1 => Instr(1),
      DPRA2 => Instr(2),
      DPRA3 => Instr(3),
      WCLK => Clk_BUFGP_0,
      WE => RegWr,
      SPO => NLW_inst_Mram_mem25_SPO_UNCONNECTED,
      DPO => RdDataSource(9)
    );
  inst_Mram_mem23 : RAM16X1D
    port map (
      A0 => muxDest(0),
      A1 => muxDest(1),
      A2 => muxDest(2),
      A3 => muxDest(3),
      D => WrData(7),
      DPRA0 => Instr(0),
      DPRA1 => Instr(1),
      DPRA2 => Instr(2),
      DPRA3 => Instr(3),
      WCLK => Clk_BUFGP_0,
      WE => RegWr,
      SPO => NLW_inst_Mram_mem23_SPO_UNCONNECTED,
      DPO => RdDataSource(7)
    );
  inst_Mram_mem24 : RAM16X1D
    port map (
      A0 => muxDest(0),
      A1 => muxDest(1),
      A2 => muxDest(2),
      A3 => muxDest(3),
      D => WrData(8),
      DPRA0 => Instr(0),
      DPRA1 => Instr(1),
      DPRA2 => Instr(2),
      DPRA3 => Instr(3),
      WCLK => Clk_BUFGP_0,
      WE => RegWr,
      SPO => NLW_inst_Mram_mem24_SPO_UNCONNECTED,
      DPO => RdDataSource(8)
    );
  inst_Mram_mem26 : RAM16X1D
    port map (
      A0 => muxDest(0),
      A1 => muxDest(1),
      A2 => muxDest(2),
      A3 => muxDest(3),
      D => WrData(10),
      DPRA0 => Instr(0),
      DPRA1 => Instr(1),
      DPRA2 => Instr(2),
      DPRA3 => Instr(3),
      WCLK => Clk_BUFGP_0,
      WE => RegWr,
      SPO => NLW_inst_Mram_mem26_SPO_UNCONNECTED,
      DPO => RdDataSource(10)
    );
  inst_Mram_mem27 : RAM16X1D
    port map (
      A0 => muxDest(0),
      A1 => muxDest(1),
      A2 => muxDest(2),
      A3 => muxDest(3),
      D => WrData(11),
      DPRA0 => Instr(0),
      DPRA1 => Instr(1),
      DPRA2 => Instr(2),
      DPRA3 => Instr(3),
      WCLK => Clk_BUFGP_0,
      WE => RegWr,
      SPO => NLW_inst_Mram_mem27_SPO_UNCONNECTED,
      DPO => RdDataSource(11)
    );
  inst_Mram_mem28 : RAM16X1D
    port map (
      A0 => muxDest(0),
      A1 => muxDest(1),
      A2 => muxDest(2),
      A3 => muxDest(3),
      D => WrData(12),
      DPRA0 => Instr(0),
      DPRA1 => Instr(1),
      DPRA2 => Instr(2),
      DPRA3 => Instr(3),
      WCLK => Clk_BUFGP_0,
      WE => RegWr,
      SPO => NLW_inst_Mram_mem28_SPO_UNCONNECTED,
      DPO => RdDataSource(12)
    );
  inst_Mram_mem29 : RAM16X1D
    port map (
      A0 => muxDest(0),
      A1 => muxDest(1),
      A2 => muxDest(2),
      A3 => muxDest(3),
      D => WrData(13),
      DPRA0 => Instr(0),
      DPRA1 => Instr(1),
      DPRA2 => Instr(2),
      DPRA3 => Instr(3),
      WCLK => Clk_BUFGP_0,
      WE => RegWr,
      SPO => NLW_inst_Mram_mem29_SPO_UNCONNECTED,
      DPO => RdDataSource(13)
    );
  inst_Mram_mem30 : RAM16X1D
    port map (
      A0 => muxDest(0),
      A1 => muxDest(1),
      A2 => muxDest(2),
      A3 => muxDest(3),
      D => WrData(14),
      DPRA0 => Instr(0),
      DPRA1 => Instr(1),
      DPRA2 => Instr(2),
      DPRA3 => Instr(3),
      WCLK => Clk_BUFGP_0,
      WE => RegWr,
      SPO => NLW_inst_Mram_mem30_SPO_UNCONNECTED,
      DPO => RdDataSource(14)
    );
  inst_Mram_mem31 : RAM16X1D
    port map (
      A0 => muxDest(0),
      A1 => muxDest(1),
      A2 => muxDest(2),
      A3 => muxDest(3),
      D => WrData(15),
      DPRA0 => Instr(0),
      DPRA1 => Instr(1),
      DPRA2 => Instr(2),
      DPRA3 => Instr(3),
      WCLK => Clk_BUFGP_0,
      WE => RegWr,
      SPO => NLW_inst_Mram_mem31_SPO_UNCONNECTED,
      DPO => RdDataSource(15)
    );
  DataMemory_inst_Mram_mem15 : RAM16X1S
    port map (
      A0 => Instr(4),
      A1 => Instr(5),
      A2 => Instr(6),
      A3 => Instr(7),
      D => RdDataSource(15),
      WCLK => Clk_BUFGP_0,
      WE => DataMemory_and0000,
      O => DataMemory_MemData(15)
    );
  DataMemory_inst_Mram_mem14 : RAM16X1S
    port map (
      A0 => Instr(4),
      A1 => Instr(5),
      A2 => Instr(6),
      A3 => Instr(7),
      D => RdDataSource(14),
      WCLK => Clk_BUFGP_0,
      WE => DataMemory_and0000,
      O => DataMemory_MemData(14)
    );
  DataMemory_inst_Mram_mem13 : RAM16X1S
    port map (
      A0 => Instr(4),
      A1 => Instr(5),
      A2 => Instr(6),
      A3 => Instr(7),
      D => RdDataSource(13),
      WCLK => Clk_BUFGP_0,
      WE => DataMemory_and0000,
      O => DataMemory_MemData(13)
    );
  DataMemory_inst_Mram_mem12 : RAM16X1S
    port map (
      A0 => Instr(4),
      A1 => Instr(5),
      A2 => Instr(6),
      A3 => Instr(7),
      D => RdDataSource(12),
      WCLK => Clk_BUFGP_0,
      WE => DataMemory_and0000,
      O => DataMemory_MemData(12)
    );
  DataMemory_inst_Mram_mem11 : RAM16X1S
    port map (
      A0 => Instr(4),
      A1 => Instr(5),
      A2 => Instr(6),
      A3 => Instr(7),
      D => RdDataSource(11),
      WCLK => Clk_BUFGP_0,
      WE => DataMemory_and0000,
      O => DataMemory_MemData(11)
    );
  DataMemory_inst_Mram_mem10 : RAM16X1S
    port map (
      A0 => Instr(4),
      A1 => Instr(5),
      A2 => Instr(6),
      A3 => Instr(7),
      D => RdDataSource(10),
      WCLK => Clk_BUFGP_0,
      WE => DataMemory_and0000,
      O => DataMemory_MemData(10)
    );
  DataMemory_inst_Mram_mem9 : RAM16X1S
    port map (
      A0 => Instr(4),
      A1 => Instr(5),
      A2 => Instr(6),
      A3 => Instr(7),
      D => RdDataSource(9),
      WCLK => Clk_BUFGP_0,
      WE => DataMemory_and0000,
      O => DataMemory_MemData(9)
    );
  DataMemory_inst_Mram_mem8 : RAM16X1S
    port map (
      A0 => Instr(4),
      A1 => Instr(5),
      A2 => Instr(6),
      A3 => Instr(7),
      D => RdDataSource(8),
      WCLK => Clk_BUFGP_0,
      WE => DataMemory_and0000,
      O => DataMemory_MemData(8)
    );
  DataMemory_inst_Mram_mem7 : RAM16X1S
    port map (
      A0 => Instr(4),
      A1 => Instr(5),
      A2 => Instr(6),
      A3 => Instr(7),
      D => RdDataSource(7),
      WCLK => Clk_BUFGP_0,
      WE => DataMemory_and0000,
      O => DataMemory_MemData(7)
    );
  DataMemory_inst_Mram_mem6 : RAM16X1S
    port map (
      A0 => Instr(4),
      A1 => Instr(5),
      A2 => Instr(6),
      A3 => Instr(7),
      D => RdDataSource(6),
      WCLK => Clk_BUFGP_0,
      WE => DataMemory_and0000,
      O => DataMemory_MemData(6)
    );
  DataMemory_inst_Mram_mem5 : RAM16X1S
    port map (
      A0 => Instr(4),
      A1 => Instr(5),
      A2 => Instr(6),
      A3 => Instr(7),
      D => RdDataSource(5),
      WCLK => Clk_BUFGP_0,
      WE => DataMemory_and0000,
      O => DataMemory_MemData(5)
    );
  DataMemory_inst_Mram_mem4 : RAM16X1S
    port map (
      A0 => Instr(4),
      A1 => Instr(5),
      A2 => Instr(6),
      A3 => Instr(7),
      D => RdDataSource(4),
      WCLK => Clk_BUFGP_0,
      WE => DataMemory_and0000,
      O => DataMemory_MemData(4)
    );
  DataMemory_inst_Mram_mem3 : RAM16X1S
    port map (
      A0 => Instr(4),
      A1 => Instr(5),
      A2 => Instr(6),
      A3 => Instr(7),
      D => RdDataSource(3),
      WCLK => Clk_BUFGP_0,
      WE => DataMemory_and0000,
      O => DataMemory_MemData(3)
    );
  DataMemory_inst_Mram_mem2 : RAM16X1S
    port map (
      A0 => Instr(4),
      A1 => Instr(5),
      A2 => Instr(6),
      A3 => Instr(7),
      D => RdDataSource(2),
      WCLK => Clk_BUFGP_0,
      WE => DataMemory_and0000,
      O => DataMemory_MemData(2)
    );
  DataMemory_inst_Mram_mem1 : RAM16X1S
    port map (
      A0 => Instr(4),
      A1 => Instr(5),
      A2 => Instr(6),
      A3 => Instr(7),
      D => RdDataSource(1),
      WCLK => Clk_BUFGP_0,
      WE => DataMemory_and0000,
      O => DataMemory_MemData(1)
    );
  DataMemory_inst_Mram_mem : RAM16X1S
    port map (
      A0 => Instr(4),
      A1 => Instr(5),
      A2 => Instr(6),
      A3 => Instr(7),
      D => RdDataSource(0),
      WCLK => Clk_BUFGP_0,
      WE => DataMemory_and0000,
      O => DataMemory_MemData(0)
    );
  DataMemory_OUTW0_15 : FDE
    port map (
      C => Clk_BUFGP_0,
      CE => DataMemory_OUTW0_and0000,
      D => RdDataSource(15),
      Q => DataMemory_OUTW0(15)
    );
  DataMemory_OUTW0_14 : FDE
    port map (
      C => Clk_BUFGP_0,
      CE => DataMemory_OUTW0_and0000,
      D => RdDataSource(14),
      Q => DataMemory_OUTW0(14)
    );
  DataMemory_OUTW0_13 : FDE
    port map (
      C => Clk_BUFGP_0,
      CE => DataMemory_OUTW0_and0000,
      D => RdDataSource(13),
      Q => DataMemory_OUTW0(13)
    );
  DataMemory_OUTW0_12 : FDE
    port map (
      C => Clk_BUFGP_0,
      CE => DataMemory_OUTW0_and0000,
      D => RdDataSource(12),
      Q => DataMemory_OUTW0(12)
    );
  DataMemory_OUTW0_11 : FDE
    port map (
      C => Clk_BUFGP_0,
      CE => DataMemory_OUTW0_and0000,
      D => RdDataSource(11),
      Q => DataMemory_OUTW0(11)
    );
  DataMemory_OUTW0_10 : FDE
    port map (
      C => Clk_BUFGP_0,
      CE => DataMemory_OUTW0_and0000,
      D => RdDataSource(10),
      Q => DataMemory_OUTW0(10)
    );
  DataMemory_OUTW0_9 : FDE
    port map (
      C => Clk_BUFGP_0,
      CE => DataMemory_OUTW0_and0000,
      D => RdDataSource(9),
      Q => DataMemory_OUTW0(9)
    );
  DataMemory_OUTW0_8 : FDE
    port map (
      C => Clk_BUFGP_0,
      CE => DataMemory_OUTW0_and0000,
      D => RdDataSource(8),
      Q => DataMemory_OUTW0(8)
    );
  DataMemory_OUTW0_7 : FDE
    port map (
      C => Clk_BUFGP_0,
      CE => DataMemory_OUTW0_and0000,
      D => RdDataSource(7),
      Q => DataMemory_OUTW0(7)
    );
  DataMemory_OUTW0_6 : FDE
    port map (
      C => Clk_BUFGP_0,
      CE => DataMemory_OUTW0_and0000,
      D => RdDataSource(6),
      Q => DataMemory_OUTW0(6)
    );
  DataMemory_OUTW0_5 : FDE
    port map (
      C => Clk_BUFGP_0,
      CE => DataMemory_OUTW0_and0000,
      D => RdDataSource(5),
      Q => DataMemory_OUTW0(5)
    );
  DataMemory_OUTW0_4 : FDE
    port map (
      C => Clk_BUFGP_0,
      CE => DataMemory_OUTW0_and0000,
      D => RdDataSource(4),
      Q => DataMemory_OUTW0(4)
    );
  DataMemory_OUTW0_3 : FDE
    port map (
      C => Clk_BUFGP_0,
      CE => DataMemory_OUTW0_and0000,
      D => RdDataSource(3),
      Q => DataMemory_OUTW0(3)
    );
  DataMemory_OUTW0_2 : FDE
    port map (
      C => Clk_BUFGP_0,
      CE => DataMemory_OUTW0_and0000,
      D => RdDataSource(2),
      Q => DataMemory_OUTW0(2)
    );
  DataMemory_OUTW0_1 : FDE
    port map (
      C => Clk_BUFGP_0,
      CE => DataMemory_OUTW0_and0000,
      D => RdDataSource(1),
      Q => DataMemory_OUTW0(1)
    );
  DataMemory_OUTW0_0 : FDE
    port map (
      C => Clk_BUFGP_0,
      CE => DataMemory_OUTW0_and0000,
      D => RdDataSource(0),
      Q => DataMemory_OUTW0(0)
    );
  PC_Updates_Madd_New_PC_share0000_xor_4_Q : XORCY
    port map (
      CI => PC_Updates_Madd_New_PC_share0000_cy(3),
      LI => PC_Updates_N8,
      O => PC_Updates_New_PC_share0000(4)
    );
  PC_Updates_Madd_New_PC_share0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => PC_Updates_PC_P2(4),
      I1 => Instr(3),
      O => PC_Updates_N8
    );
  PC_Updates_Madd_New_PC_share0000_xor_3_Q : XORCY
    port map (
      CI => PC_Updates_Madd_New_PC_share0000_cy(2),
      LI => PC_Updates_N7,
      O => PC_Updates_New_PC_share0000(3)
    );
  PC_Updates_Madd_New_PC_share0000_cy_3_Q : MUXCY
    port map (
      CI => PC_Updates_Madd_New_PC_share0000_cy(2),
      DI => Instr(2),
      S => PC_Updates_N7,
      O => PC_Updates_Madd_New_PC_share0000_cy(3)
    );
  PC_Updates_Madd_New_PC_share0000_xor_2_Q : XORCY
    port map (
      CI => PC_Updates_Madd_New_PC_share0000_cy(1),
      LI => PC_Updates_N6,
      O => PC_Updates_New_PC_share0000(2)
    );
  PC_Updates_Madd_New_PC_share0000_cy_2_Q : MUXCY
    port map (
      CI => PC_Updates_Madd_New_PC_share0000_cy(1),
      DI => Instr(1),
      S => PC_Updates_N6,
      O => PC_Updates_Madd_New_PC_share0000_cy(2)
    );
  PC_Updates_Madd_New_PC_share0000_cy_1_Q : MUXCY
    port map (
      CI => PC(0),
      DI => Instr(0),
      S => PC_Updates_N5,
      O => PC_Updates_Madd_New_PC_share0000_cy(1)
    );
  ALUU_Madd_Carry_mux0000_xor_15_Q : XORCY
    port map (
      CI => ALUU_Madd_Carry_mux0000_cy(14),
      LI => ALUU_N19,
      O => ALUU_Carry_mux0000(15)
    );
  ALUU_Madd_Carry_mux0000_cy_15_Q : MUXCY
    port map (
      CI => ALUU_Madd_Carry_mux0000_cy(14),
      DI => RdDataBase(15),
      S => ALUU_N19,
      O => ALUU_Madd_Carry_mux0000_cy(15)
    );
  ALUU_Madd_Carry_mux0000_xor_14_Q : XORCY
    port map (
      CI => ALUU_Madd_Carry_mux0000_cy(13),
      LI => ALUU_N18,
      O => ALUU_Carry_mux0000(14)
    );
  ALUU_Madd_Carry_mux0000_cy_14_Q : MUXCY
    port map (
      CI => ALUU_Madd_Carry_mux0000_cy(13),
      DI => RdDataBase(14),
      S => ALUU_N18,
      O => ALUU_Madd_Carry_mux0000_cy(14)
    );
  ALUU_Madd_Carry_mux0000_xor_13_Q : XORCY
    port map (
      CI => ALUU_Madd_Carry_mux0000_cy(12),
      LI => ALUU_N17,
      O => ALUU_Carry_mux0000(13)
    );
  ALUU_Madd_Carry_mux0000_cy_13_Q : MUXCY
    port map (
      CI => ALUU_Madd_Carry_mux0000_cy(12),
      DI => RdDataBase(13),
      S => ALUU_N17,
      O => ALUU_Madd_Carry_mux0000_cy(13)
    );
  ALUU_Madd_Carry_mux0000_xor_12_Q : XORCY
    port map (
      CI => ALUU_Madd_Carry_mux0000_cy(11),
      LI => ALUU_N16,
      O => ALUU_Carry_mux0000(12)
    );
  ALUU_Madd_Carry_mux0000_cy_12_Q : MUXCY
    port map (
      CI => ALUU_Madd_Carry_mux0000_cy(11),
      DI => RdDataBase(12),
      S => ALUU_N16,
      O => ALUU_Madd_Carry_mux0000_cy(12)
    );
  ALUU_Madd_Carry_mux0000_xor_11_Q : XORCY
    port map (
      CI => ALUU_Madd_Carry_mux0000_cy(10),
      LI => ALUU_N15,
      O => ALUU_Carry_mux0000(11)
    );
  ALUU_Madd_Carry_mux0000_cy_11_Q : MUXCY
    port map (
      CI => ALUU_Madd_Carry_mux0000_cy(10),
      DI => RdDataBase(11),
      S => ALUU_N15,
      O => ALUU_Madd_Carry_mux0000_cy(11)
    );
  ALUU_Madd_Carry_mux0000_xor_10_Q : XORCY
    port map (
      CI => ALUU_Madd_Carry_mux0000_cy(9),
      LI => ALUU_N14,
      O => ALUU_Carry_mux0000(10)
    );
  ALUU_Madd_Carry_mux0000_cy_10_Q : MUXCY
    port map (
      CI => ALUU_Madd_Carry_mux0000_cy(9),
      DI => RdDataBase(10),
      S => ALUU_N14,
      O => ALUU_Madd_Carry_mux0000_cy(10)
    );
  ALUU_Madd_Carry_mux0000_xor_9_Q : XORCY
    port map (
      CI => ALUU_Madd_Carry_mux0000_cy(8),
      LI => ALUU_N13,
      O => ALUU_Carry_mux0000(9)
    );
  ALUU_Madd_Carry_mux0000_cy_9_Q : MUXCY
    port map (
      CI => ALUU_Madd_Carry_mux0000_cy(8),
      DI => RdDataBase(9),
      S => ALUU_N13,
      O => ALUU_Madd_Carry_mux0000_cy(9)
    );
  ALUU_Madd_Carry_mux0000_xor_8_Q : XORCY
    port map (
      CI => ALUU_Madd_Carry_mux0000_cy(7),
      LI => ALUU_N12,
      O => ALUU_Carry_mux0000(8)
    );
  ALUU_Madd_Carry_mux0000_cy_8_Q : MUXCY
    port map (
      CI => ALUU_Madd_Carry_mux0000_cy(7),
      DI => RdDataBase(8),
      S => ALUU_N12,
      O => ALUU_Madd_Carry_mux0000_cy(8)
    );
  ALUU_Madd_Carry_mux0000_xor_7_Q : XORCY
    port map (
      CI => ALUU_Madd_Carry_mux0000_cy(6),
      LI => ALUU_N11,
      O => ALUU_Carry_mux0000(7)
    );
  ALUU_Madd_Carry_mux0000_cy_7_Q : MUXCY
    port map (
      CI => ALUU_Madd_Carry_mux0000_cy(6),
      DI => RdDataBase(7),
      S => ALUU_N11,
      O => ALUU_Madd_Carry_mux0000_cy(7)
    );
  ALUU_Madd_Carry_mux0000_xor_6_Q : XORCY
    port map (
      CI => ALUU_Madd_Carry_mux0000_cy(5),
      LI => ALUU_N10,
      O => ALUU_Carry_mux0000(6)
    );
  ALUU_Madd_Carry_mux0000_cy_6_Q : MUXCY
    port map (
      CI => ALUU_Madd_Carry_mux0000_cy(5),
      DI => RdDataBase(6),
      S => ALUU_N10,
      O => ALUU_Madd_Carry_mux0000_cy(6)
    );
  ALUU_Madd_Carry_mux0000_xor_5_Q : XORCY
    port map (
      CI => ALUU_Madd_Carry_mux0000_cy(4),
      LI => ALUU_N9,
      O => ALUU_Carry_mux0000(5)
    );
  ALUU_Madd_Carry_mux0000_cy_5_Q : MUXCY
    port map (
      CI => ALUU_Madd_Carry_mux0000_cy(4),
      DI => RdDataBase(5),
      S => ALUU_N9,
      O => ALUU_Madd_Carry_mux0000_cy(5)
    );
  ALUU_Madd_Carry_mux0000_xor_4_Q : XORCY
    port map (
      CI => ALUU_Madd_Carry_mux0000_cy(3),
      LI => ALUU_N8,
      O => ALUU_Carry_mux0000(4)
    );
  ALUU_Madd_Carry_mux0000_cy_4_Q : MUXCY
    port map (
      CI => ALUU_Madd_Carry_mux0000_cy(3),
      DI => RdDataBase(4),
      S => ALUU_N8,
      O => ALUU_Madd_Carry_mux0000_cy(4)
    );
  ALUU_Madd_Carry_mux0000_xor_3_Q : XORCY
    port map (
      CI => ALUU_Madd_Carry_mux0000_cy(2),
      LI => ALUU_N7,
      O => ALUU_Carry_mux0000(3)
    );
  ALUU_Madd_Carry_mux0000_cy_3_Q : MUXCY
    port map (
      CI => ALUU_Madd_Carry_mux0000_cy(2),
      DI => RdDataBase(3),
      S => ALUU_N7,
      O => ALUU_Madd_Carry_mux0000_cy(3)
    );
  ALUU_Madd_Carry_mux0000_xor_2_Q : XORCY
    port map (
      CI => ALUU_Madd_Carry_mux0000_cy(1),
      LI => ALUU_N6,
      O => ALUU_Carry_mux0000(2)
    );
  ALUU_Madd_Carry_mux0000_cy_2_Q : MUXCY
    port map (
      CI => ALUU_Madd_Carry_mux0000_cy(1),
      DI => RdDataBase(2),
      S => ALUU_N6,
      O => ALUU_Madd_Carry_mux0000_cy(2)
    );
  ALUU_Madd_Carry_mux0000_xor_1_Q : XORCY
    port map (
      CI => ALUU_Madd_Carry_mux0000_cy(0),
      LI => ALUU_N5,
      O => ALUU_Carry_mux0000(1)
    );
  ALUU_Madd_Carry_mux0000_cy_1_Q : MUXCY
    port map (
      CI => ALUU_Madd_Carry_mux0000_cy(0),
      DI => RdDataBase(1),
      S => ALUU_N5,
      O => ALUU_Madd_Carry_mux0000_cy(1)
    );
  ALUU_Madd_Carry_mux0000_xor_0_Q : XORCY
    port map (
      CI => ALUU_Carry_mux0002,
      LI => ALUU_N4,
      O => ALUU_Carry_mux0000(0)
    );
  ALUU_Madd_Carry_mux0000_cy_0_Q : MUXCY
    port map (
      CI => ALUU_Carry_mux0002,
      DI => RdDataBase(0),
      S => ALUU_N4,
      O => ALUU_Madd_Carry_mux0000_cy(0)
    );
  ALUU_Carry_16 : LDCP
    port map (
      CLR => ALUU_Carry_16_and0000,
      D => ALUU_Madd_Carry_mux0000_cy(15),
      G => ALUU_Carry_cmp_eq0000,
      PRE => ALUU_Carry_16_and0001,
      Q => ALUU_Carry(16)
    );
  ALUU_Carry_15 : LDCP
    port map (
      CLR => ALUU_Carry_15_and0000,
      D => ALUU_Carry_mux0000(15),
      G => ALUU_Carry_cmp_eq0000,
      PRE => ALUU_Carry_15_and0001,
      Q => ALUU_Carry(15)
    );
  ALUU_Carry_14 : LDCP
    port map (
      CLR => ALUU_Carry_14_and0000,
      D => ALUU_Carry_mux0000(14),
      G => ALUU_Carry_cmp_eq0000,
      PRE => ALUU_Carry_14_and0001,
      Q => ALUU_Carry(14)
    );
  ALUU_Carry_13 : LDCP
    port map (
      CLR => ALUU_Carry_13_and0000,
      D => ALUU_Carry_mux0000(13),
      G => ALUU_Carry_cmp_eq0000,
      PRE => ALUU_Carry_13_and0001,
      Q => ALUU_Carry(13)
    );
  ALUU_Carry_12 : LDCP
    port map (
      CLR => ALUU_Carry_12_and0000,
      D => ALUU_Carry_mux0000(12),
      G => ALUU_Carry_cmp_eq0000,
      PRE => ALUU_Carry_12_and0001,
      Q => ALUU_Carry(12)
    );
  ALUU_Carry_11 : LDCP
    port map (
      CLR => ALUU_Carry_11_and0000,
      D => ALUU_Carry_mux0000(11),
      G => ALUU_Carry_cmp_eq0000,
      PRE => ALUU_Carry_11_and0001,
      Q => ALUU_Carry(11)
    );
  ALUU_Carry_10 : LDCP
    port map (
      CLR => ALUU_Carry_10_and0000,
      D => ALUU_Carry_mux0000(10),
      G => ALUU_Carry_cmp_eq0000,
      PRE => ALUU_Carry_10_and0001,
      Q => ALUU_Carry(10)
    );
  ALUU_Carry_9 : LDCP
    port map (
      CLR => ALUU_Carry_9_and0000,
      D => ALUU_Carry_mux0000(9),
      G => ALUU_Carry_cmp_eq0000,
      PRE => ALUU_Carry_9_and0001,
      Q => ALUU_Carry(9)
    );
  ALUU_Carry_8 : LDCP
    port map (
      CLR => ALUU_Carry_8_and0000,
      D => ALUU_Carry_mux0000(8),
      G => ALUU_Carry_cmp_eq0000,
      PRE => ALUU_Carry_8_and0001,
      Q => ALUU_Carry(8)
    );
  ALUU_Carry_7 : LDCP
    port map (
      CLR => ALUU_Carry_7_and0000,
      D => ALUU_Carry_mux0000(7),
      G => ALUU_Carry_cmp_eq0000,
      PRE => ALUU_Carry_7_and0001,
      Q => ALUU_Carry(7)
    );
  ALUU_Carry_6 : LDCP
    port map (
      CLR => ALUU_Carry_6_and0000,
      D => ALUU_Carry_mux0000(6),
      G => ALUU_Carry_cmp_eq0000,
      PRE => ALUU_Carry_6_and0001,
      Q => ALUU_Carry(6)
    );
  ALUU_Carry_5 : LDCP
    port map (
      CLR => ALUU_Carry_5_and0000,
      D => ALUU_Carry_mux0000(5),
      G => ALUU_Carry_cmp_eq0000,
      PRE => ALUU_Carry_5_and0001,
      Q => ALUU_Carry(5)
    );
  ALUU_Carry_4 : LDCP
    port map (
      CLR => ALUU_Carry_4_and0000,
      D => ALUU_Carry_mux0000(4),
      G => ALUU_Carry_cmp_eq0000,
      PRE => ALUU_Carry_4_and0001,
      Q => ALUU_Carry(4)
    );
  ALUU_Carry_3 : LDCP
    port map (
      CLR => ALUU_Carry_3_and0000,
      D => ALUU_Carry_mux0000(3),
      G => ALUU_Carry_cmp_eq0000,
      PRE => ALUU_Carry_3_and0001,
      Q => ALUU_Carry(3)
    );
  ALUU_Carry_2 : LDCP
    port map (
      CLR => ALUU_Carry_2_and0000,
      D => ALUU_Carry_mux0000(2),
      G => ALUU_Carry_cmp_eq0000,
      PRE => ALUU_Carry_2_and0001,
      Q => ALUU_Carry(2)
    );
  ALUU_Carry_1 : LDCP
    port map (
      CLR => ALUU_Carry_1_and0000,
      D => ALUU_Carry_mux0000(1),
      G => ALUU_Carry_cmp_eq0000,
      PRE => ALUU_Carry_1_and0001,
      Q => ALUU_Carry(1)
    );
  ALUU_Carry_0 : LDCP
    port map (
      CLR => ALUU_Carry_0_and0000,
      D => ALUU_Carry_mux0000(0),
      G => ALUU_Carry_cmp_eq0000,
      PRE => ALUU_Carry_0_and0001,
      Q => ALUU_Carry(0)
    );
  ALUU_Result_15 : LD
    port map (
      D => ALUU_Result_mux0000(15),
      G => ALUU_Result_not0002,
      Q => ALUU_Result(15)
    );
  ALUU_Result_14 : LD
    port map (
      D => ALUU_Result_mux0000(14),
      G => ALUU_Result_not0002,
      Q => ALUU_Result(14)
    );
  ALUU_Result_13 : LD
    port map (
      D => ALUU_Result_mux0000(13),
      G => ALUU_Result_not0002,
      Q => ALUU_Result(13)
    );
  ALUU_Result_12 : LD
    port map (
      D => ALUU_Result_mux0000(12),
      G => ALUU_Result_not0002,
      Q => ALUU_Result(12)
    );
  ALUU_Result_11 : LD
    port map (
      D => ALUU_Result_mux0000(11),
      G => ALUU_Result_not0002,
      Q => ALUU_Result(11)
    );
  ALUU_Result_10 : LD
    port map (
      D => ALUU_Result_mux0000(10),
      G => ALUU_Result_not0002,
      Q => ALUU_Result(10)
    );
  ALUU_Result_9 : LD
    port map (
      D => ALUU_Result_mux0000(9),
      G => ALUU_Result_not0002,
      Q => ALUU_Result(9)
    );
  ALUU_Result_8 : LD
    port map (
      D => ALUU_Result_mux0000(8),
      G => ALUU_Result_not0002,
      Q => ALUU_Result(8)
    );
  ALUU_Result_7 : LD
    port map (
      D => ALUU_Result_mux0000(7),
      G => ALUU_Result_not0002,
      Q => ALUU_Result(7)
    );
  ALUU_Result_6 : LD
    port map (
      D => ALUU_Result_mux0000(6),
      G => ALUU_Result_not0002,
      Q => ALUU_Result(6)
    );
  ALUU_Result_5 : LD
    port map (
      D => ALUU_Result_mux0000(5),
      G => ALUU_Result_not0002,
      Q => ALUU_Result(5)
    );
  ALUU_Result_4 : LD
    port map (
      D => ALUU_Result_mux0000(4),
      G => ALUU_Result_not0002,
      Q => ALUU_Result(4)
    );
  ALUU_Result_3 : LD
    port map (
      D => ALUU_Result_mux0000(3),
      G => ALUU_Result_not0002,
      Q => ALUU_Result(3)
    );
  ALUU_Result_2 : LD
    port map (
      D => ALUU_Result_mux0000(2),
      G => ALUU_Result_not0002,
      Q => ALUU_Result(2)
    );
  ALUU_Result_1 : LD
    port map (
      D => ALUU_Result_mux0000(1),
      G => ALUU_Result_not0002,
      Q => ALUU_Result(1)
    );
  ALUU_Result_0 : LD
    port map (
      D => ALUU_Result_mux0000(0),
      G => ALUU_Result_not0002,
      Q => ALUU_Result(0)
    );
  ALUU_N : FDE
    port map (
      C => Clk_BUFGP_0,
      CE => Flag_N,
      D => ALUU_Result(15),
      Q => ALUU_N_2
    );
  ALUU_OV : FDE
    port map (
      C => Clk_BUFGP_0,
      CE => Flag_OV,
      D => ALUU_overflow,
      Q => ALUU_OV_4
    );
  ALUU_Z : FDE
    port map (
      C => Clk_BUFGP_0,
      CE => Flag_Z,
      D => ALUU_zero,
      Q => ALUU_Z_3
    );
  ALUU_C : FDE
    port map (
      C => Clk_BUFGP_0,
      CE => Flag_C,
      D => ALUU_flag_carry,
      Q => ALUU_C_1
    );
  CONTROL_ALU_OP_2 : LD
    port map (
      D => CONTROL_ALU_OP_mux0000(2),
      G => CONTROL_ALU_OP_not0001,
      Q => CONTROL_ALU_OP(2)
    );
  CONTROL_ALU_OP_1 : LD
    port map (
      D => CONTROL_ALU_OP_mux0000(1),
      G => CONTROL_ALU_OP_not0001,
      Q => CONTROL_ALU_OP(1)
    );
  CONTROL_ALU_OP_0 : LD
    port map (
      D => CONTROL_ALU_OP_mux0000(0),
      G => CONTROL_ALU_OP_not0001,
      Q => CONTROL_ALU_OP(0)
    );
  DataMemory_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => MEMWr,
      I1 => Instr(8),
      O => DataMemory_and0000
    );
  CONTROL_Branch_cmp_eq000011 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => Instr(19),
      I1 => Instr(23),
      O => CONTROL_N10
    );
  ALUU_Result_mux0000_0_151 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RdDataSource(12),
      I1 => RdDataSource(11),
      O => ALUU_Result_mux0000_0_bdd12
    );
  DataMemory_OUTW0_and00001 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => MEMWr,
      I1 => Instr(5),
      I2 => Instr(8),
      O => DataMemory_OUTW0_and0000
    );
  CONTROL_RegWr_or00002 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => RegDest,
      I1 => CONTROL_N31,
      I2 => Instr(21),
      O => RegWr
    );
  CONTROL_ALU_OP_mux0000_0_11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Instr(21),
      I1 => Instr(19),
      I2 => Instr(20),
      O => CONTROL_N9
    );
  ALUU_Result_not000211 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => CONTROL_ALU_OP(2),
      I1 => CONTROL_ALU_OP(1),
      I2 => CONTROL_ALU_OP(0),
      O => ALUU_Result_not0002
    );
  ALUU_Carry_mux00021 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => CONTROL_ALU_OP(0),
      I1 => CONTROL_ALU_OP(2),
      I2 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_mux0002
    );
  ALUU_Carry_cmp_eq000011 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => CONTROL_ALU_OP(1),
      I1 => CONTROL_ALU_OP(2),
      I2 => CONTROL_ALU_OP(0),
      O => ALUU_Carry_cmp_eq0000
    );
  MUX2v4_Y_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RegDest,
      I1 => Instr(3),
      I2 => Instr(10),
      O => muxDest(3)
    );
  MUX2v4_Y_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RegDest,
      I1 => Instr(2),
      I2 => Instr(9),
      O => muxDest(2)
    );
  MUX2v4_Y_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RegDest,
      I1 => Instr(1),
      I2 => Instr(8),
      O => muxDest(1)
    );
  MUX2v4_Y_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RegDest,
      I1 => Instr(0),
      I2 => Instr(7),
      O => muxDest(0)
    );
  CONTROL_ALU_OP_mux0000_1_11 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => Instr(23),
      I1 => Instr(19),
      I2 => Instr(22),
      I3 => Instr(20),
      O => CONTROL_N31
    );
  CONTROL_ALU_OP_mux0000_0_1 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => Instr(22),
      I1 => CONTROL_N9,
      I2 => CONTROL_N10,
      I3 => Instr(20),
      O => CONTROL_ALU_OP_mux0000(0)
    );
  ALUU_zero29 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => ALUU_Result(12),
      I1 => ALUU_Result(2),
      I2 => ALUU_Result(13),
      I3 => ALUU_Result(3),
      O => ALUU_zero2_map5
    );
  ALUU_zero221 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => ALUU_Result(14),
      I1 => ALUU_Result(4),
      I2 => ALUU_Result(15),
      I3 => ALUU_Result(5),
      O => ALUU_zero2_map9
    );
  ALUU_zero226 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => ALUU_Result(6),
      I1 => ALUU_Result(7),
      I2 => ALUU_Result(8),
      I3 => ALUU_Result(9),
      O => ALUU_zero2_map12
    );
  ALUU_Result_mux0000_3_179 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => RdDataSource(13),
      I1 => RdDataSource(10),
      I2 => RdDataSource(9),
      I3 => RdDataSource(8),
      O => ALUU_Result_mux0000_3_1_map27
    );
  ALUU_Result_mux0000_3_192 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => RdDataSource(7),
      I1 => RdDataSource(12),
      I2 => RdDataSource(11),
      I3 => RdDataSource(6),
      O => ALUU_Result_mux0000_3_1_map34
    );
  ALUU_Result_mux0000_3_1135 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => RdDataSource(13),
      I1 => RdDataSource(10),
      I2 => RdDataSource(9),
      I3 => RdDataSource(8),
      O => ALUU_Result_mux0000_3_1_map41
    );
  ALUU_Result_mux0000_3_1140 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => RdDataSource(7),
      I1 => RdDataSource(12),
      I2 => RdDataSource(11),
      I3 => RdDataSource(6),
      O => ALUU_Result_mux0000_3_1_map44
    );
  ALUU_Result_mux0000_2_188 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => RdDataSource(5),
      I1 => RdDataSource(3),
      I2 => RdDataSource(2),
      I3 => RdDataSource(4),
      O => ALUU_Result_mux0000_2_1_map35
    );
  ALUU_Result_mux0000_2_1159 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => RdDataSource(12),
      I1 => RdDataSource(11),
      I2 => RdDataSource(8),
      O => ALUU_Result_mux0000_2_1_map48
    );
  ALUU_Result_mux0000_2_1180 : LUT4
    generic map(
      INIT => X"AF2F"
    )
    port map (
      I0 => ALUU_Result_mux0000_2_1_map48,
      I1 => RdDataSource(8),
      I2 => RdDataSource(9),
      I3 => ALUU_Result_mux0000_2_1_map43,
      O => ALUU_Result_mux0000_2_1_map50
    );
  ALUU_Result_mux0000_2_1199 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => RdDataSource(12),
      I1 => RdDataSource(11),
      I2 => RdDataSource(9),
      O => ALUU_Result_mux0000_2_1_map54
    );
  ALUU_Result_mux0000_2_1388 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => RdDataSource(9),
      I1 => RdDataSource(12),
      I2 => ALUU_Result_mux0000_2_1_map81,
      I3 => RdDataSource(11),
      O => ALUU_Result_mux0000_2_1_map83
    );
  ALUU_Result_mux0000_2_1413 : LUT4
    generic map(
      INIT => X"3332"
    )
    port map (
      I0 => RdDataSource(13),
      I1 => RdDataSource(14),
      I2 => RdDataSource(10),
      I3 => ALUU_Result_mux0000_2_1_map83,
      O => ALUU_Result_mux0000_2_1_map85
    );
  ALUU_Result_mux0000_0_5380 : LUT4
    generic map(
      INIT => X"0405"
    )
    port map (
      I0 => RdDataSource(2),
      I1 => RdDataSource(1),
      I2 => RdDataSource(4),
      I3 => RdDataSource(0),
      O => ALUU_Result_mux0000_0_5_map87
    );
  ALUU_Result_mux0000_0_5410 : LUT4
    generic map(
      INIT => X"FF4E"
    )
    port map (
      I0 => RdDataSource(3),
      I1 => ALUU_Result_mux0000_0_5_map87,
      I2 => RdDataSource(4),
      I3 => RdDataSource(5),
      O => ALUU_Result_mux0000_0_5_map90
    );
  MUX2v16_Y_9_17 : LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => INW1_9_IBUF_27,
      I1 => Instr(4),
      I2 => Instr(5),
      I3 => INW0_9_IBUF_11,
      O => MUX2v16_Y_9_map6
    );
  MUX2v16_Y_8_17 : LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => INW1_8_IBUF_28,
      I1 => Instr(4),
      I2 => Instr(5),
      I3 => INW0_8_IBUF_12,
      O => MUX2v16_Y_8_map6
    );
  MUX2v16_Y_7_17 : LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => INW1_7_IBUF_29,
      I1 => Instr(4),
      I2 => Instr(5),
      I3 => INW0_7_IBUF_13,
      O => MUX2v16_Y_7_map6
    );
  MUX2v16_Y_6_17 : LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => INW1_6_IBUF_30,
      I1 => Instr(4),
      I2 => Instr(5),
      I3 => INW0_6_IBUF_14,
      O => MUX2v16_Y_6_map6
    );
  MUX2v16_Y_5_17 : LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => INW1_5_IBUF_31,
      I1 => Instr(4),
      I2 => Instr(5),
      I3 => INW0_5_IBUF_15,
      O => MUX2v16_Y_5_map6
    );
  MUX2v16_Y_4_17 : LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => INW1_4_IBUF_32,
      I1 => Instr(4),
      I2 => Instr(5),
      I3 => INW0_4_IBUF_16,
      O => MUX2v16_Y_4_map6
    );
  MUX2v16_Y_3_17 : LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => INW1_3_IBUF_33,
      I1 => Instr(4),
      I2 => Instr(5),
      I3 => INW0_3_IBUF_17,
      O => MUX2v16_Y_3_map6
    );
  MUX2v16_Y_2_17 : LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => INW1_2_IBUF_34,
      I1 => Instr(4),
      I2 => Instr(5),
      I3 => INW0_2_IBUF_18,
      O => MUX2v16_Y_2_map6
    );
  MUX2v16_Y_1_17 : LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => INW1_1_IBUF_35,
      I1 => Instr(4),
      I2 => Instr(5),
      I3 => INW0_1_IBUF_19,
      O => MUX2v16_Y_1_map6
    );
  MUX2v16_Y_15_17 : LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => INW1_15_IBUF_21,
      I1 => Instr(4),
      I2 => Instr(5),
      I3 => INW0_15_IBUF_5,
      O => MUX2v16_Y_15_map6
    );
  MUX2v16_Y_14_17 : LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => INW1_14_IBUF_22,
      I1 => Instr(4),
      I2 => Instr(5),
      I3 => INW0_14_IBUF_6,
      O => MUX2v16_Y_14_map6
    );
  MUX2v16_Y_13_17 : LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => INW1_13_IBUF_23,
      I1 => Instr(4),
      I2 => Instr(5),
      I3 => INW0_13_IBUF_7,
      O => MUX2v16_Y_13_map6
    );
  MUX2v16_Y_12_17 : LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => INW1_12_IBUF_24,
      I1 => Instr(4),
      I2 => Instr(5),
      I3 => INW0_12_IBUF_8,
      O => MUX2v16_Y_12_map6
    );
  MUX2v16_Y_11_17 : LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => INW1_11_IBUF_25,
      I1 => Instr(4),
      I2 => Instr(5),
      I3 => INW0_11_IBUF_9,
      O => MUX2v16_Y_11_map6
    );
  MUX2v16_Y_10_17 : LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => INW1_10_IBUF_26,
      I1 => Instr(4),
      I2 => Instr(5),
      I3 => INW0_10_IBUF_10,
      O => MUX2v16_Y_10_map6
    );
  MUX2v16_Y_0_17 : LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => INW1_0_IBUF_36,
      I1 => Instr(4),
      I2 => Instr(5),
      I3 => INW0_0_IBUF_20,
      O => MUX2v16_Y_0_map6
    );
  PC_Updates_New_PC_5_134 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => Instr(16),
      I1 => Instr(18),
      O => PC_Updates_New_PC_5_1_map14
    );
  PC_Updates_New_PC_5_139 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => PC_Updates_New_PC_5_1_map14,
      I1 => Instr(17),
      I2 => ALUU_OV_4,
      I3 => ALUU_Z_3,
      O => PC_Updates_New_PC_5_1_map15
    );
  PC_Updates_New_PC_5_162 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => Instr(20),
      I1 => Instr(21),
      I2 => CONTROL_N10,
      I3 => Instr(22),
      O => PC_Updates_New_PC_5_1_map20
    );
  PC_Updates_New_PC_5_165 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => PC_Updates_New_PC_5_1_map20,
      I1 => PC_Updates_New_PC_5_1_map15,
      I2 => Instr(16),
      I3 => PC_Updates_New_PC_5_1_map6,
      O => PC_Updates_N0
    );
  ALUU_overflow1_SW0 : LUT4
    generic map(
      INIT => X"FFDB"
    )
    port map (
      I0 => RdDataBase(15),
      I1 => ALUU_Result(15),
      I2 => CONTROL_ALU_OP(0),
      I3 => CONTROL_ALU_OP(1),
      O => N2584
    );
  ALUU_overflow1_SW1 : LUT4
    generic map(
      INIT => X"FFDB"
    )
    port map (
      I0 => ALUU_Result(15),
      I1 => RdDataBase(15),
      I2 => CONTROL_ALU_OP(0),
      I3 => CONTROL_ALU_OP(1),
      O => N2585
    );
  ALUU_overflow1 : LUT4
    generic map(
      INIT => X"0213"
    )
    port map (
      I0 => RdDataSource(15),
      I1 => CONTROL_ALU_OP(2),
      I2 => N2585,
      I3 => N2584,
      O => ALUU_overflow
    );
  PC_Updates_Madd_PC_P2_xor_3_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => ProgCounter_PC(3),
      I1 => ProgCounter_PC(2),
      I2 => ProgCounter_PC(1),
      O => PC_Updates_PC_P2(3)
    );
  PC_Updates_New_PC_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => PC_Updates_N0,
      I1 => PC_Updates_PC_P2(3),
      I2 => PC_Updates_New_PC_share0000(3),
      O => New_PC(3)
    );
  PC_Updates_New_PC_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => PC_Updates_N0,
      I1 => N3081,
      I2 => PC_Updates_New_PC_share0000(4),
      O => New_PC(4)
    );
  ALUU_Result_mux0000_1_152 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => RdDataSource(1),
      I1 => RdDataSource(4),
      O => ALUU_Result_mux0000_1_bdd26
    );
  ALUU_Result_mux0000_1_102 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => RdDataSource(1),
      I1 => RdDataSource(4),
      O => ALUU_Result_mux0000_1_bdd17
    );
  ALUU_flag_carry123 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => RdDataSource(5),
      I1 => RdDataSource(3),
      I2 => RdDataSource(0),
      I3 => RdDataSource(2),
      O => ALUU_flag_carry1_map11
    );
  ALUU_flag_carry124 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ALUU_flag_carry1_map11,
      I1 => ALUU_flag_carry1_map8,
      O => ALUU_flag_carry1_map12
    );
  ALUU_flag_carry154 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => RdDataSource(10),
      I1 => RdDataSource(13),
      I2 => RdDataSource(15),
      I3 => RdDataSource(14),
      O => ALUU_flag_carry1_map20
    );
  ALUU_flag_carry168 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ALUU_flag_carry1_map27,
      I1 => ALUU_flag_carry1_map20,
      O => ALUU_flag_carry1_map28
    );
  ALUU_flag_carry1172 : LUT3
    generic map(
      INIT => X"32"
    )
    port map (
      I0 => ALUU_Carry(16),
      I1 => CONTROL_ALU_OP(1),
      I2 => CONTROL_ALU_OP(2),
      O => ALUU_flag_carry1_map50
    );
  ALUU_zero114 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RdDataBase(3),
      I1 => RdDataSource(7),
      I2 => RdDataSource(15),
      O => ALUU_zero1_map7
    );
  ALUU_zero127 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RdDataBase(3),
      I1 => RdDataSource(3),
      I2 => RdDataSource(11),
      O => ALUU_zero1_map12
    );
  ALUU_zero167 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RdDataBase(3),
      I1 => RdDataSource(5),
      I2 => RdDataSource(13),
      O => ALUU_zero1_map20
    );
  ALUU_zero180 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RdDataBase(3),
      I1 => RdDataSource(1),
      I2 => RdDataSource(9),
      O => ALUU_zero1_map25
    );
  ALUU_zero1150 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RdDataBase(3),
      I1 => RdDataSource(6),
      I2 => RdDataSource(14),
      O => ALUU_zero1_map36
    );
  ALUU_zero1163 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RdDataBase(3),
      I1 => RdDataSource(2),
      I2 => RdDataSource(10),
      O => ALUU_zero1_map41
    );
  ALUU_zero1203 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RdDataBase(3),
      I1 => RdDataSource(4),
      I2 => RdDataSource(12),
      O => ALUU_zero1_map49
    );
  ALUU_zero1216 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RdDataBase(3),
      I1 => RdDataSource(0),
      I2 => RdDataSource(8),
      O => ALUU_zero1_map54
    );
  INW0_15_IBUF : IBUF
    port map (
      I => INW0(15),
      O => INW0_15_IBUF_5
    );
  INW0_14_IBUF : IBUF
    port map (
      I => INW0(14),
      O => INW0_14_IBUF_6
    );
  INW0_13_IBUF : IBUF
    port map (
      I => INW0(13),
      O => INW0_13_IBUF_7
    );
  INW0_12_IBUF : IBUF
    port map (
      I => INW0(12),
      O => INW0_12_IBUF_8
    );
  INW0_11_IBUF : IBUF
    port map (
      I => INW0(11),
      O => INW0_11_IBUF_9
    );
  INW0_10_IBUF : IBUF
    port map (
      I => INW0(10),
      O => INW0_10_IBUF_10
    );
  INW0_9_IBUF : IBUF
    port map (
      I => INW0(9),
      O => INW0_9_IBUF_11
    );
  INW0_8_IBUF : IBUF
    port map (
      I => INW0(8),
      O => INW0_8_IBUF_12
    );
  INW0_7_IBUF : IBUF
    port map (
      I => INW0(7),
      O => INW0_7_IBUF_13
    );
  INW0_6_IBUF : IBUF
    port map (
      I => INW0(6),
      O => INW0_6_IBUF_14
    );
  INW0_5_IBUF : IBUF
    port map (
      I => INW0(5),
      O => INW0_5_IBUF_15
    );
  INW0_4_IBUF : IBUF
    port map (
      I => INW0(4),
      O => INW0_4_IBUF_16
    );
  INW0_3_IBUF : IBUF
    port map (
      I => INW0(3),
      O => INW0_3_IBUF_17
    );
  INW0_2_IBUF : IBUF
    port map (
      I => INW0(2),
      O => INW0_2_IBUF_18
    );
  INW0_1_IBUF : IBUF
    port map (
      I => INW0(1),
      O => INW0_1_IBUF_19
    );
  INW0_0_IBUF : IBUF
    port map (
      I => INW0(0),
      O => INW0_0_IBUF_20
    );
  INW1_15_IBUF : IBUF
    port map (
      I => INW1(15),
      O => INW1_15_IBUF_21
    );
  INW1_14_IBUF : IBUF
    port map (
      I => INW1(14),
      O => INW1_14_IBUF_22
    );
  INW1_13_IBUF : IBUF
    port map (
      I => INW1(13),
      O => INW1_13_IBUF_23
    );
  INW1_12_IBUF : IBUF
    port map (
      I => INW1(12),
      O => INW1_12_IBUF_24
    );
  INW1_11_IBUF : IBUF
    port map (
      I => INW1(11),
      O => INW1_11_IBUF_25
    );
  INW1_10_IBUF : IBUF
    port map (
      I => INW1(10),
      O => INW1_10_IBUF_26
    );
  INW1_9_IBUF : IBUF
    port map (
      I => INW1(9),
      O => INW1_9_IBUF_27
    );
  INW1_8_IBUF : IBUF
    port map (
      I => INW1(8),
      O => INW1_8_IBUF_28
    );
  INW1_7_IBUF : IBUF
    port map (
      I => INW1(7),
      O => INW1_7_IBUF_29
    );
  INW1_6_IBUF : IBUF
    port map (
      I => INW1(6),
      O => INW1_6_IBUF_30
    );
  INW1_5_IBUF : IBUF
    port map (
      I => INW1(5),
      O => INW1_5_IBUF_31
    );
  INW1_4_IBUF : IBUF
    port map (
      I => INW1(4),
      O => INW1_4_IBUF_32
    );
  INW1_3_IBUF : IBUF
    port map (
      I => INW1(3),
      O => INW1_3_IBUF_33
    );
  INW1_2_IBUF : IBUF
    port map (
      I => INW1(2),
      O => INW1_2_IBUF_34
    );
  INW1_1_IBUF : IBUF
    port map (
      I => INW1(1),
      O => INW1_1_IBUF_35
    );
  INW1_0_IBUF : IBUF
    port map (
      I => INW1(0),
      O => INW1_0_IBUF_36
    );
  OUTW0_15_OBUF : OBUF
    port map (
      I => DataMemory_OUTW0(15),
      O => OUTW0(15)
    );
  OUTW0_14_OBUF : OBUF
    port map (
      I => DataMemory_OUTW0(14),
      O => OUTW0(14)
    );
  OUTW0_13_OBUF : OBUF
    port map (
      I => DataMemory_OUTW0(13),
      O => OUTW0(13)
    );
  OUTW0_12_OBUF : OBUF
    port map (
      I => DataMemory_OUTW0(12),
      O => OUTW0(12)
    );
  OUTW0_11_OBUF : OBUF
    port map (
      I => DataMemory_OUTW0(11),
      O => OUTW0(11)
    );
  OUTW0_10_OBUF : OBUF
    port map (
      I => DataMemory_OUTW0(10),
      O => OUTW0(10)
    );
  OUTW0_9_OBUF : OBUF
    port map (
      I => DataMemory_OUTW0(9),
      O => OUTW0(9)
    );
  OUTW0_8_OBUF : OBUF
    port map (
      I => DataMemory_OUTW0(8),
      O => OUTW0(8)
    );
  OUTW0_7_OBUF : OBUF
    port map (
      I => DataMemory_OUTW0(7),
      O => OUTW0(7)
    );
  OUTW0_6_OBUF : OBUF
    port map (
      I => DataMemory_OUTW0(6),
      O => OUTW0(6)
    );
  OUTW0_5_OBUF : OBUF
    port map (
      I => DataMemory_OUTW0(5),
      O => OUTW0(5)
    );
  OUTW0_4_OBUF : OBUF
    port map (
      I => DataMemory_OUTW0(4),
      O => OUTW0(4)
    );
  OUTW0_3_OBUF : OBUF
    port map (
      I => DataMemory_OUTW0(3),
      O => OUTW0(3)
    );
  OUTW0_2_OBUF : OBUF
    port map (
      I => DataMemory_OUTW0(2),
      O => OUTW0(2)
    );
  OUTW0_1_OBUF : OBUF
    port map (
      I => DataMemory_OUTW0(1),
      O => OUTW0(1)
    );
  OUTW0_0_OBUF : OBUF
    port map (
      I => DataMemory_OUTW0(0),
      O => OUTW0(0)
    );
  ALUU_flag_carry19 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => RdDataSource(15),
      I1 => RdDataSource(14),
      I2 => ALUU_Result_mux0000_1_bdd17,
      I3 => ALUU_flag_carry1_map4,
      O => ALUU_flag_carry1_map5
    );
  ALUU_flag_carry1103 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => RdDataSource(0),
      I1 => RdDataSource(2),
      I2 => ALUU_Result_mux0000_1_bdd26,
      I3 => ALUU_flag_carry1_map35,
      O => ALUU_flag_carry1_map41
    );
  ALUU_flag_carry1176 : LUT4
    generic map(
      INIT => X"4C44"
    )
    port map (
      I0 => CONTROL_ALU_OP(2),
      I1 => ALUU_flag_carry1_map50,
      I2 => CONTROL_ALU_OP(0),
      I3 => ALUU_flag_carry1_map43,
      O => ALUU_flag_carry
    );
  PC_Updates_Madd_New_PC_share0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => ProgCounter_PC(1),
      I1 => Instr(0),
      O => PC_Updates_N5
    );
  PC_Updates_Madd_New_PC_share0000_lut_3_Q : LUT4
    generic map(
      INIT => X"965A"
    )
    port map (
      I0 => ProgCounter_PC(3),
      I1 => ProgCounter_PC(2),
      I2 => Instr(2),
      I3 => ProgCounter_PC(1),
      O => PC_Updates_N7
    );
  PC_Updates_Madd_New_PC_share0000_lut_2_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => ProgCounter_PC(2),
      I1 => ProgCounter_PC(1),
      I2 => Instr(1),
      O => PC_Updates_N6
    );
  PC_Updates_New_PC_2_1 : LUT4
    generic map(
      INIT => X"BE14"
    )
    port map (
      I0 => PC_Updates_N0,
      I1 => ProgCounter_PC(2),
      I2 => ProgCounter_PC(1),
      I3 => PC_Updates_New_PC_share0000(2),
      O => New_PC(2)
    );
  ALUU_zero1130 : MUXF5
    port map (
      I0 => N2909,
      I1 => N2910,
      S => RdDataBase(1),
      O => ALUU_zero1_map32
    );
  ALUU_zero1130_F : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => RdDataBase(0),
      I1 => RdDataBase(2),
      I2 => ALUU_zero1_map25,
      I3 => ALUU_zero1_map20,
      O => N2909
    );
  ALUU_zero1130_G : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => RdDataBase(0),
      I1 => RdDataBase(2),
      I2 => ALUU_zero1_map12,
      I3 => ALUU_zero1_map7,
      O => N2910
    );
  ALUU_zero1271 : MUXF5
    port map (
      I0 => N2911,
      I1 => N2912,
      S => RdDataBase(1),
      O => ALUU_zero1_map62
    );
  ALUU_zero1271_F : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => RdDataBase(2),
      I1 => ALUU_zero1_map54,
      I2 => RdDataBase(0),
      I3 => ALUU_zero1_map49,
      O => N2911
    );
  ALUU_zero1271_G : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => RdDataBase(2),
      I1 => ALUU_zero1_map41,
      I2 => RdDataBase(0),
      I3 => ALUU_zero1_map36,
      O => N2912
    );
  ALUU_Result_mux0000_2_1124_SW0 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => RdDataSource(12),
      I1 => RdDataSource(11),
      O => N2919
    );
  ALUU_Result_mux0000_2_1124 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => RdDataSource(7),
      I1 => RdDataSource(6),
      I2 => ALUU_Result_mux0000_2_1_map35,
      I3 => N2919,
      O => ALUU_Result_mux0000_2_1_map43
    );
  ALUU_Result_mux0000_0_5118_SW0 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => RdDataSource(2),
      I1 => RdDataSource(1),
      I2 => RdDataSource(0),
      O => N2921
    );
  ALUU_Result_mux0000_0_5118 : LUT4
    generic map(
      INIT => X"AF2F"
    )
    port map (
      I0 => RdDataSource(4),
      I1 => RdDataSource(3),
      I2 => RdDataSource(5),
      I3 => N2921,
      O => ALUU_Result_mux0000_0_5_map35
    );
  ALUU_Result_mux0000_3_1250_SW0 : LUT4
    generic map(
      INIT => X"7D28"
    )
    port map (
      I0 => CONTROL_ALU_OP(0),
      I1 => Instr(3),
      I2 => RdDataBase(3),
      I3 => ALUU_Result_mux0000_3_1_map48,
      O => N2953
    );
  ALUU_Result_mux0000_2_1440_SW0 : LUT4
    generic map(
      INIT => X"D5FF"
    )
    port map (
      I0 => RdDataSource(13),
      I1 => ALUU_Result_mux0000_2_1_map50,
      I2 => ALUU_Result_mux0000_2_1_map54,
      I3 => RdDataSource(10),
      O => N2955
    );
  ALUU_Result_mux0000_0_5709_SW0 : LUT4
    generic map(
      INIT => X"7D28"
    )
    port map (
      I0 => CONTROL_ALU_OP(0),
      I1 => Instr(0),
      I2 => RdDataBase(0),
      I3 => ALUU_Result_mux0000_0_5_map105,
      O => N2959
    );
  ALUU_Madd_Carry_mux0000_lut_15_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => RdDataBase(15),
      I1 => ALUU_Carry_mux0002,
      I2 => RdDataSource(15),
      O => ALUU_N19
    );
  ALUU_Madd_Carry_mux0000_lut_14_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => RdDataBase(14),
      I1 => ALUU_Carry_mux0002,
      I2 => RdDataSource(14),
      O => ALUU_N18
    );
  ALUU_Madd_Carry_mux0000_lut_13_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => RdDataBase(13),
      I1 => ALUU_Carry_mux0002,
      I2 => RdDataSource(13),
      O => ALUU_N17
    );
  ALUU_Madd_Carry_mux0000_lut_12_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => RdDataBase(12),
      I1 => ALUU_Carry_mux0002,
      I2 => RdDataSource(12),
      O => ALUU_N16
    );
  ALUU_Madd_Carry_mux0000_lut_11_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => RdDataBase(11),
      I1 => ALUU_Carry_mux0002,
      I2 => RdDataSource(11),
      O => ALUU_N15
    );
  ALUU_Madd_Carry_mux0000_lut_10_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => RdDataBase(10),
      I1 => ALUU_Carry_mux0002,
      I2 => RdDataSource(10),
      O => ALUU_N14
    );
  ALUU_Madd_Carry_mux0000_lut_9_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => RdDataBase(9),
      I1 => ALUU_Carry_mux0002,
      I2 => RdDataSource(9),
      O => ALUU_N13
    );
  ALUU_Madd_Carry_mux0000_lut_8_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => RdDataBase(8),
      I1 => ALUU_Carry_mux0002,
      I2 => RdDataSource(8),
      O => ALUU_N12
    );
  ALUU_Madd_Carry_mux0000_lut_7_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => RdDataBase(7),
      I1 => ALUU_Carry_mux0002,
      I2 => RdDataSource(7),
      O => ALUU_N11
    );
  ALUU_Madd_Carry_mux0000_lut_6_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => RdDataBase(6),
      I1 => ALUU_Carry_mux0002,
      I2 => RdDataSource(6),
      O => ALUU_N10
    );
  ALUU_Madd_Carry_mux0000_lut_5_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => RdDataBase(5),
      I1 => ALUU_Carry_mux0002,
      I2 => RdDataSource(5),
      O => ALUU_N9
    );
  ALUU_Madd_Carry_mux0000_lut_4_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => RdDataBase(4),
      I1 => ALUU_Carry_mux0002,
      I2 => RdDataSource(4),
      O => ALUU_N8
    );
  ALUU_Madd_Carry_mux0000_lut_3_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => RdDataBase(3),
      I1 => ALUU_Carry_mux0002,
      I2 => RdDataSource(3),
      O => ALUU_N7
    );
  ALUU_Madd_Carry_mux0000_lut_2_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => RdDataBase(2),
      I1 => ALUU_Carry_mux0002,
      I2 => RdDataSource(2),
      O => ALUU_N6
    );
  ALUU_Madd_Carry_mux0000_lut_1_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => RdDataBase(1),
      I1 => ALUU_Carry_mux0002,
      I2 => RdDataSource(1),
      O => ALUU_N5
    );
  ALUU_Madd_Carry_mux0000_lut_0_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => RdDataBase(0),
      I1 => ALUU_Carry_mux0002,
      I2 => RdDataSource(0),
      O => ALUU_N4
    );
  ALUU_zero235_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => ALUU_Result(11),
      I1 => ALUU_Result(10),
      I2 => ALUU_Result(1),
      I3 => ALUU_Result(0),
      O => N2965
    );
  ALUU_zero235 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => ALUU_zero2_map9,
      I1 => ALUU_zero2_map5,
      I2 => ALUU_zero2_map12,
      I3 => N2965,
      O => ALUU_zero_bdd0
    );
  PC_Updates_New_PC_1_1 : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => ProgCounter_PC(1),
      I1 => PC_Updates_N0,
      I2 => Instr(0),
      O => New_PC(1)
    );
  ALUU_Result_mux0000_0_5520 : LUT4
    generic map(
      INIT => X"2031"
    )
    port map (
      I0 => RdDataSource(8),
      I1 => RdDataSource(12),
      I2 => RdDataSource(11),
      I3 => N2967,
      O => ALUU_Result_mux0000_0_5_map97
    );
  ALUU_Result_mux0000_1_1450 : LUT4
    generic map(
      INIT => X"FF32"
    )
    port map (
      I0 => RdDataSource(0),
      I1 => RdDataSource(2),
      I2 => RdDataSource(1),
      I3 => RdDataSource(4),
      O => ALUU_Result_mux0000_1_1_map90
    );
  CONTROL_ALU_OP_not00011 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => RegDest,
      I1 => Instr(21),
      I2 => CONTROL_N31,
      O => CONTROL_ALU_OP_not0001
    );
  ALUU_Carry_9_and00011 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => ALUU_Carry_mux0000(9),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_9_and0001
    );
  ALUU_Carry_9_and00001 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => ALUU_Carry_mux0000(9),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_9_and0000
    );
  ALUU_Carry_8_and00011 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => ALUU_Carry_mux0000(8),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_8_and0001
    );
  ALUU_Carry_8_and00001 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => ALUU_Carry_mux0000(8),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_8_and0000
    );
  ALUU_Carry_7_and00011 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => ALUU_Carry_mux0000(7),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_7_and0001
    );
  ALUU_Carry_7_and00001 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => ALUU_Carry_mux0000(7),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_7_and0000
    );
  ALUU_Carry_6_and00011 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => ALUU_Carry_mux0000(6),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_6_and0001
    );
  ALUU_Carry_6_and00001 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => ALUU_Carry_mux0000(6),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_6_and0000
    );
  ALUU_Carry_5_and00011 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => ALUU_Carry_mux0000(5),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_5_and0001
    );
  ALUU_Carry_5_and00001 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => ALUU_Carry_mux0000(5),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_5_and0000
    );
  ALUU_Carry_4_and00011 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => ALUU_Carry_mux0000(4),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_4_and0001
    );
  ALUU_Carry_4_and00001 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => ALUU_Carry_mux0000(4),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_4_and0000
    );
  ALUU_Carry_3_and00011 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => ALUU_Carry_mux0000(3),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_3_and0001
    );
  ALUU_Carry_3_and00001 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => ALUU_Carry_mux0000(3),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_3_and0000
    );
  ALUU_Carry_2_and00011 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => ALUU_Carry_mux0000(2),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_2_and0001
    );
  ALUU_Carry_2_and00001 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => ALUU_Carry_mux0000(2),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_2_and0000
    );
  ALUU_Carry_1_and00011 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => ALUU_Carry_mux0000(1),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_1_and0001
    );
  ALUU_Carry_1_and00001 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => ALUU_Carry_mux0000(1),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_1_and0000
    );
  ALUU_Carry_16_and00011 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => ALUU_Madd_Carry_mux0000_cy(15),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_16_and0001
    );
  ALUU_Carry_16_and00001 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => ALUU_Madd_Carry_mux0000_cy(15),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_16_and0000
    );
  ALUU_Carry_15_and00011 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => ALUU_Carry_mux0000(15),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_15_and0001
    );
  ALUU_Carry_15_and00001 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => ALUU_Carry_mux0000(15),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_15_and0000
    );
  ALUU_Carry_14_and00011 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => ALUU_Carry_mux0000(14),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_14_and0001
    );
  ALUU_Carry_14_and00001 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => ALUU_Carry_mux0000(14),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_14_and0000
    );
  ALUU_Carry_13_and00011 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => ALUU_Carry_mux0000(13),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_13_and0001
    );
  ALUU_Carry_13_and00001 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => ALUU_Carry_mux0000(13),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_13_and0000
    );
  ALUU_Carry_12_and00011 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => ALUU_Carry_mux0000(12),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_12_and0001
    );
  ALUU_Carry_12_and00001 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => ALUU_Carry_mux0000(12),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_12_and0000
    );
  ALUU_Carry_11_and00011 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => ALUU_Carry_mux0000(11),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_11_and0001
    );
  ALUU_Carry_11_and00001 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => ALUU_Carry_mux0000(11),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_11_and0000
    );
  ALUU_Carry_10_and00011 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => ALUU_Carry_mux0000(10),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_10_and0001
    );
  ALUU_Carry_10_and00001 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => ALUU_Carry_mux0000(10),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_10_and0000
    );
  ALUU_Carry_0_and00011 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => ALUU_Carry_mux0000(0),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_0_and0001
    );
  ALUU_Carry_0_and00001 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => ALUU_Carry_mux0000(0),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => CONTROL_ALU_OP(1),
      O => ALUU_Carry_0_and0000
    );
  CONTROL_Flag_OV_or00001 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => Instr(22),
      I1 => Instr(19),
      I2 => Instr(23),
      I3 => Instr(21),
      O => Flag_OV
    );
  CONTROL_Flag_N_or00001 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => Instr(22),
      I1 => Instr(19),
      I2 => Instr(23),
      I3 => CONTROL_N9,
      O => Flag_N
    );
  MUX2z4_Y_3_1 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => Instr(21),
      I1 => Instr(18),
      I2 => CONTROL_N31,
      I3 => Instr(14),
      O => muxBase(3)
    );
  MUX2z4_Y_2_1 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => Instr(21),
      I1 => Instr(17),
      I2 => CONTROL_N31,
      I3 => Instr(13),
      O => muxBase(2)
    );
  MUX2z4_Y_1_1 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => Instr(21),
      I1 => Instr(16),
      I2 => CONTROL_N31,
      I3 => Instr(12),
      O => muxBase(1)
    );
  MUX2z4_Y_0_1 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => Instr(21),
      I1 => Instr(15),
      I2 => CONTROL_N31,
      I3 => Instr(11),
      O => muxBase(0)
    );
  ALUU_Result_mux0000_1_1624_SW0 : LUT4
    generic map(
      INIT => X"2722"
    )
    port map (
      I0 => RdDataSource(8),
      I1 => RdDataSource(11),
      I2 => RdDataSource(7),
      I3 => ALUU_Result_mux0000_1_1_map95,
      O => N2969
    );
  ALUU_Result_mux0000_1_1307_SW0 : LUT4
    generic map(
      INIT => X"D555"
    )
    port map (
      I0 => RdDataSource(12),
      I1 => RdDataSource(6),
      I2 => RdDataSource(7),
      I3 => N2973,
      O => N2917
    );
  ALUU_Result_mux0000_1_1707_SW0_SW0 : LUT4
    generic map(
      INIT => X"B133"
    )
    port map (
      I0 => RdDataSource(8),
      I1 => ALUU_Result_mux0000_0_bdd12,
      I2 => N2917,
      I3 => RdDataSource(9),
      O => N2975
    );
  ALUU_Result_mux0000_1_1707_SW0 : LUT4
    generic map(
      INIT => X"B1FF"
    )
    port map (
      I0 => RdDataSource(10),
      I1 => RdDataSource(12),
      I2 => N2975,
      I3 => RdDataSource(13),
      O => N2927
    );
  ALUU_Result_mux0000_0_5520_SW0 : LUT4
    generic map(
      INIT => X"0405"
    )
    port map (
      I0 => RdDataSource(7),
      I1 => RdDataSource(6),
      I2 => RdDataSource(11),
      I3 => ALUU_Result_mux0000_0_5_map90,
      O => N2967
    );
  ALUU_Result_mux0000_1_1148_SW0 : LUT4
    generic map(
      INIT => X"A222"
    )
    port map (
      I0 => RdDataSource(4),
      I1 => RdDataSource(2),
      I2 => RdDataSource(0),
      I3 => RdDataSource(1),
      O => N2961
    );
  ALUU_Result_mux0000_9_181_SW0 : LUT4
    generic map(
      INIT => X"EB41"
    )
    port map (
      I0 => CONTROL_ALU_OP(0),
      I1 => RdDataSource(15),
      I2 => RdDataSource(14),
      I3 => RdDataBase(9),
      O => N2929
    );
  ALUU_Result_mux0000_8_181_SW0 : LUT4
    generic map(
      INIT => X"EB41"
    )
    port map (
      I0 => CONTROL_ALU_OP(0),
      I1 => RdDataSource(15),
      I2 => RdDataSource(14),
      I3 => RdDataBase(8),
      O => N2931
    );
  ALUU_Result_mux0000_7_181_SW0 : LUT4
    generic map(
      INIT => X"EB41"
    )
    port map (
      I0 => CONTROL_ALU_OP(0),
      I1 => RdDataSource(15),
      I2 => RdDataSource(14),
      I3 => RdDataBase(7),
      O => N2933
    );
  ALUU_Result_mux0000_6_181_SW0 : LUT4
    generic map(
      INIT => X"EB41"
    )
    port map (
      I0 => CONTROL_ALU_OP(0),
      I1 => RdDataSource(15),
      I2 => RdDataSource(14),
      I3 => RdDataBase(6),
      O => N2935
    );
  ALUU_Result_mux0000_5_181_SW0 : LUT4
    generic map(
      INIT => X"EB41"
    )
    port map (
      I0 => CONTROL_ALU_OP(0),
      I1 => RdDataSource(15),
      I2 => RdDataSource(14),
      I3 => RdDataBase(5),
      O => N2937
    );
  ALUU_Result_mux0000_15_181_SW0 : LUT4
    generic map(
      INIT => X"EB41"
    )
    port map (
      I0 => CONTROL_ALU_OP(0),
      I1 => RdDataSource(15),
      I2 => RdDataSource(14),
      I3 => RdDataBase(15),
      O => N2939
    );
  ALUU_Result_mux0000_14_181_SW0 : LUT4
    generic map(
      INIT => X"EB41"
    )
    port map (
      I0 => CONTROL_ALU_OP(0),
      I1 => RdDataSource(15),
      I2 => RdDataSource(14),
      I3 => RdDataBase(14),
      O => N2941
    );
  ALUU_Result_mux0000_13_181_SW0 : LUT4
    generic map(
      INIT => X"EB41"
    )
    port map (
      I0 => CONTROL_ALU_OP(0),
      I1 => RdDataSource(15),
      I2 => RdDataSource(14),
      I3 => RdDataBase(13),
      O => N2943
    );
  ALUU_Result_mux0000_12_181_SW0 : LUT4
    generic map(
      INIT => X"EB41"
    )
    port map (
      I0 => CONTROL_ALU_OP(0),
      I1 => RdDataSource(15),
      I2 => RdDataSource(14),
      I3 => RdDataBase(12),
      O => N2945
    );
  ALUU_Result_mux0000_11_181_SW0 : LUT4
    generic map(
      INIT => X"EB41"
    )
    port map (
      I0 => CONTROL_ALU_OP(0),
      I1 => RdDataSource(15),
      I2 => RdDataSource(14),
      I3 => RdDataBase(11),
      O => N2947
    );
  ALUU_Result_mux0000_10_181_SW0 : LUT4
    generic map(
      INIT => X"EB41"
    )
    port map (
      I0 => CONTROL_ALU_OP(0),
      I1 => RdDataSource(15),
      I2 => RdDataSource(14),
      I3 => RdDataBase(10),
      O => N2949
    );
  ALUU_zero1359_SW0 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => CONTROL_ALU_OP(2),
      I1 => CONTROL_ALU_OP(1),
      I2 => CONTROL_ALU_OP(0),
      O => N2979
    );
  ALUU_zero1359 : LUT4
    generic map(
      INIT => X"DDD1"
    )
    port map (
      I0 => ALUU_zero_bdd0,
      I1 => N2979,
      I2 => ALUU_zero1_map62,
      I3 => ALUU_zero1_map32,
      O => ALUU_zero
    );
  ALUU_Result_mux0000_0_5639_SW0_SW0 : LUT4
    generic map(
      INIT => X"BB1B"
    )
    port map (
      I0 => RdDataSource(10),
      I1 => RdDataSource(11),
      I2 => RdDataSource(9),
      I3 => N2971,
      O => N2981
    );
  ALUU_Result_mux0000_3_1167 : MUXF5
    port map (
      I0 => N2983,
      I1 => N2984,
      S => RdDataSource(15),
      O => ALUU_Result_mux0000_3_1_map48
    );
  ALUU_Result_mux0000_3_1167_F : LUT3
    generic map(
      INIT => X"32"
    )
    port map (
      I0 => ALUU_Result_mux0000_3_1_map41,
      I1 => RdDataSource(14),
      I2 => ALUU_Result_mux0000_3_1_map44,
      O => N2983
    );
  ALUU_Result_mux0000_3_1167_G : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => RdDataSource(14),
      I1 => ALUU_Result_mux0000_3_1_map27,
      I2 => ALUU_Result_mux0000_3_1_map34,
      O => N2984
    );
  CONTROL_ALU_OP_mux0000_2_Q : MUXF5
    port map (
      I0 => N2985,
      I1 => N2986,
      S => Instr(21),
      O => CONTROL_ALU_OP_mux0000(2)
    );
  CONTROL_ALU_OP_mux0000_2_F : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Instr(23),
      I1 => Instr(22),
      I2 => Instr(20),
      I3 => Instr(19),
      O => N2985
    );
  CONTROL_ALU_OP_mux0000_2_G : LUT4
    generic map(
      INIT => X"AAEA"
    )
    port map (
      I0 => CONTROL_N31,
      I1 => Instr(19),
      I2 => Instr(22),
      I3 => Instr(20),
      O => N2986
    );
  ALUU_Result_mux0000_0_5596 : MUXF5
    port map (
      I0 => N2987,
      I1 => N2988,
      S => RdDataSource(10),
      O => ALUU_Result_mux0000_0_5_map102
    );
  ALUU_Result_mux0000_0_5596_F : LUT4
    generic map(
      INIT => X"FF4E"
    )
    port map (
      I0 => RdDataSource(9),
      I1 => ALUU_Result_mux0000_0_5_map97,
      I2 => RdDataSource(12),
      I3 => RdDataSource(13),
      O => N2987
    );
  ALUU_Result_mux0000_0_5596_G : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => RdDataSource(13),
      I1 => RdDataSource(11),
      I2 => RdDataSource(12),
      O => N2988
    );
  ALUU_Result_mux0000_9_191 : MUXF5
    port map (
      I0 => N2989,
      I1 => N2990,
      S => CONTROL_ALU_OP(1),
      O => ALUU_Result_mux0000(9)
    );
  ALUU_Result_mux0000_9_191_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => CONTROL_ALU_OP(2),
      I1 => ALUU_Carry(9),
      I2 => N2929,
      O => N2989
    );
  ALUU_Result_mux0000_9_191_G : LUT4
    generic map(
      INIT => X"4E48"
    )
    port map (
      I0 => RdDataSource(9),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => RdDataBase(9),
      O => N2990
    );
  ALUU_Result_mux0000_8_191 : MUXF5
    port map (
      I0 => N2991,
      I1 => N2992,
      S => CONTROL_ALU_OP(1),
      O => ALUU_Result_mux0000(8)
    );
  ALUU_Result_mux0000_8_191_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => CONTROL_ALU_OP(2),
      I1 => ALUU_Carry(8),
      I2 => N2931,
      O => N2991
    );
  ALUU_Result_mux0000_8_191_G : LUT4
    generic map(
      INIT => X"4E48"
    )
    port map (
      I0 => RdDataSource(8),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => RdDataBase(8),
      O => N2992
    );
  ALUU_Result_mux0000_7_191 : MUXF5
    port map (
      I0 => N2993,
      I1 => N2994,
      S => CONTROL_ALU_OP(1),
      O => ALUU_Result_mux0000(7)
    );
  ALUU_Result_mux0000_7_191_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => CONTROL_ALU_OP(2),
      I1 => ALUU_Carry(7),
      I2 => N2933,
      O => N2993
    );
  ALUU_Result_mux0000_7_191_G : LUT4
    generic map(
      INIT => X"4E48"
    )
    port map (
      I0 => RdDataSource(7),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => RdDataBase(7),
      O => N2994
    );
  ALUU_Result_mux0000_6_191 : MUXF5
    port map (
      I0 => N2995,
      I1 => N2996,
      S => CONTROL_ALU_OP(1),
      O => ALUU_Result_mux0000(6)
    );
  ALUU_Result_mux0000_6_191_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => CONTROL_ALU_OP(2),
      I1 => ALUU_Carry(6),
      I2 => N2935,
      O => N2995
    );
  ALUU_Result_mux0000_6_191_G : LUT4
    generic map(
      INIT => X"4E48"
    )
    port map (
      I0 => RdDataSource(6),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => RdDataBase(6),
      O => N2996
    );
  ALUU_Result_mux0000_5_191 : MUXF5
    port map (
      I0 => N2997,
      I1 => N2998,
      S => CONTROL_ALU_OP(1),
      O => ALUU_Result_mux0000(5)
    );
  ALUU_Result_mux0000_5_191_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => CONTROL_ALU_OP(2),
      I1 => ALUU_Carry(5),
      I2 => N2937,
      O => N2997
    );
  ALUU_Result_mux0000_5_191_G : LUT4
    generic map(
      INIT => X"4E48"
    )
    port map (
      I0 => RdDataSource(5),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => RdDataBase(5),
      O => N2998
    );
  ALUU_Result_mux0000_15_191 : MUXF5
    port map (
      I0 => N2999,
      I1 => N3000,
      S => CONTROL_ALU_OP(1),
      O => ALUU_Result_mux0000(15)
    );
  ALUU_Result_mux0000_15_191_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => CONTROL_ALU_OP(2),
      I1 => ALUU_Carry(15),
      I2 => N2939,
      O => N2999
    );
  ALUU_Result_mux0000_15_191_G : LUT4
    generic map(
      INIT => X"4E48"
    )
    port map (
      I0 => RdDataSource(15),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => RdDataBase(15),
      O => N3000
    );
  ALUU_Result_mux0000_14_191 : MUXF5
    port map (
      I0 => N3001,
      I1 => N3002,
      S => CONTROL_ALU_OP(1),
      O => ALUU_Result_mux0000(14)
    );
  ALUU_Result_mux0000_14_191_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => CONTROL_ALU_OP(2),
      I1 => ALUU_Carry(14),
      I2 => N2941,
      O => N3001
    );
  ALUU_Result_mux0000_14_191_G : LUT4
    generic map(
      INIT => X"4E48"
    )
    port map (
      I0 => RdDataSource(14),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => RdDataBase(14),
      O => N3002
    );
  ALUU_Result_mux0000_13_191 : MUXF5
    port map (
      I0 => N3003,
      I1 => N3004,
      S => CONTROL_ALU_OP(1),
      O => ALUU_Result_mux0000(13)
    );
  ALUU_Result_mux0000_13_191_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => CONTROL_ALU_OP(2),
      I1 => ALUU_Carry(13),
      I2 => N2943,
      O => N3003
    );
  ALUU_Result_mux0000_13_191_G : LUT4
    generic map(
      INIT => X"4E48"
    )
    port map (
      I0 => RdDataSource(13),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => RdDataBase(13),
      O => N3004
    );
  ALUU_Result_mux0000_12_191 : MUXF5
    port map (
      I0 => N3005,
      I1 => N3006,
      S => CONTROL_ALU_OP(1),
      O => ALUU_Result_mux0000(12)
    );
  ALUU_Result_mux0000_12_191_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => CONTROL_ALU_OP(2),
      I1 => ALUU_Carry(12),
      I2 => N2945,
      O => N3005
    );
  ALUU_Result_mux0000_12_191_G : LUT4
    generic map(
      INIT => X"4E48"
    )
    port map (
      I0 => RdDataSource(12),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => RdDataBase(12),
      O => N3006
    );
  ALUU_Result_mux0000_11_191 : MUXF5
    port map (
      I0 => N3007,
      I1 => N3008,
      S => CONTROL_ALU_OP(1),
      O => ALUU_Result_mux0000(11)
    );
  ALUU_Result_mux0000_11_191_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => CONTROL_ALU_OP(2),
      I1 => ALUU_Carry(11),
      I2 => N2947,
      O => N3007
    );
  ALUU_Result_mux0000_11_191_G : LUT4
    generic map(
      INIT => X"4E48"
    )
    port map (
      I0 => RdDataSource(11),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => RdDataBase(11),
      O => N3008
    );
  ALUU_Result_mux0000_10_191 : MUXF5
    port map (
      I0 => N3009,
      I1 => N3010,
      S => CONTROL_ALU_OP(1),
      O => ALUU_Result_mux0000(10)
    );
  ALUU_Result_mux0000_10_191_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => CONTROL_ALU_OP(2),
      I1 => ALUU_Carry(10),
      I2 => N2949,
      O => N3009
    );
  ALUU_Result_mux0000_10_191_G : LUT4
    generic map(
      INIT => X"4E48"
    )
    port map (
      I0 => RdDataSource(10),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => RdDataBase(10),
      O => N3010
    );
  ALUU_Result_mux0000_4_2105 : MUXF5
    port map (
      I0 => N3011,
      I1 => N3012,
      S => CONTROL_ALU_OP(1),
      O => ALUU_Result_mux0000(4)
    );
  ALUU_Result_mux0000_4_2105_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => CONTROL_ALU_OP(2),
      I1 => ALUU_Carry(4),
      I2 => N2951,
      O => N3011
    );
  ALUU_Result_mux0000_4_2105_G : LUT4
    generic map(
      INIT => X"4E48"
    )
    port map (
      I0 => RdDataSource(4),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => RdDataBase(4),
      O => N3012
    );
  ALUU_Result_mux0000_3_1264 : MUXF5
    port map (
      I0 => N3013,
      I1 => N3014,
      S => CONTROL_ALU_OP(1),
      O => ALUU_Result_mux0000(3)
    );
  ALUU_Result_mux0000_3_1264_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => CONTROL_ALU_OP(2),
      I1 => ALUU_Carry(3),
      I2 => N2953,
      O => N3013
    );
  ALUU_Result_mux0000_3_1264_G : LUT4
    generic map(
      INIT => X"4E48"
    )
    port map (
      I0 => RdDataSource(3),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => RdDataBase(3),
      O => N3014
    );
  ALUU_Result_mux0000_2_1539 : MUXF5
    port map (
      I0 => N3015,
      I1 => N3016,
      S => CONTROL_ALU_OP(1),
      O => ALUU_Result_mux0000(2)
    );
  ALUU_Result_mux0000_2_1539_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => CONTROL_ALU_OP(2),
      I1 => ALUU_Carry(2),
      I2 => N2957,
      O => N3015
    );
  ALUU_Result_mux0000_2_1539_G : LUT4
    generic map(
      INIT => X"4E48"
    )
    port map (
      I0 => RdDataSource(2),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => RdDataBase(2),
      O => N3016
    );
  ALUU_Result_mux0000_0_5723 : MUXF5
    port map (
      I0 => N3017,
      I1 => N3018,
      S => CONTROL_ALU_OP(1),
      O => ALUU_Result_mux0000(0)
    );
  ALUU_Result_mux0000_0_5723_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => CONTROL_ALU_OP(2),
      I1 => ALUU_Carry(0),
      I2 => N2959,
      O => N3017
    );
  ALUU_Result_mux0000_0_5723_G : LUT4
    generic map(
      INIT => X"4E48"
    )
    port map (
      I0 => RdDataSource(0),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => RdDataBase(0),
      O => N3018
    );
  ALUU_Result_mux0000_1_1804 : MUXF5
    port map (
      I0 => N3019,
      I1 => N3020,
      S => CONTROL_ALU_OP(1),
      O => ALUU_Result_mux0000(1)
    );
  ALUU_Result_mux0000_1_1804_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => CONTROL_ALU_OP(2),
      I1 => ALUU_Carry(1),
      I2 => N2963,
      O => N3019
    );
  ALUU_Result_mux0000_1_1804_G : LUT4
    generic map(
      INIT => X"4E48"
    )
    port map (
      I0 => RdDataSource(1),
      I1 => CONTROL_ALU_OP(0),
      I2 => CONTROL_ALU_OP(2),
      I3 => RdDataBase(1),
      O => N3020
    );
  MUX2v16_Y_9_56 : MUXF5
    port map (
      I0 => N3021,
      I1 => N3022,
      S => Instr(8),
      O => WrData(9)
    );
  MUX2v16_Y_9_56_F : LUT4
    generic map(
      INIT => X"DC8C"
    )
    port map (
      I0 => Instr(21),
      I1 => ALUU_Result(9),
      I2 => CONTROL_N31,
      I3 => DataMemory_MemData(9),
      O => N3021
    );
  MUX2v16_Y_9_56_G : LUT4
    generic map(
      INIT => X"DC8C"
    )
    port map (
      I0 => Instr(21),
      I1 => ALUU_Result(9),
      I2 => CONTROL_N31,
      I3 => MUX2v16_Y_9_map6,
      O => N3022
    );
  MUX2v16_Y_8_56 : MUXF5
    port map (
      I0 => N3023,
      I1 => N3024,
      S => Instr(8),
      O => WrData(8)
    );
  MUX2v16_Y_8_56_F : LUT4
    generic map(
      INIT => X"DC8C"
    )
    port map (
      I0 => Instr(21),
      I1 => ALUU_Result(8),
      I2 => CONTROL_N31,
      I3 => DataMemory_MemData(8),
      O => N3023
    );
  MUX2v16_Y_8_56_G : LUT4
    generic map(
      INIT => X"DC8C"
    )
    port map (
      I0 => Instr(21),
      I1 => ALUU_Result(8),
      I2 => CONTROL_N31,
      I3 => MUX2v16_Y_8_map6,
      O => N3024
    );
  MUX2v16_Y_7_56 : MUXF5
    port map (
      I0 => N3025,
      I1 => N3026,
      S => Instr(8),
      O => WrData(7)
    );
  MUX2v16_Y_7_56_F : LUT4
    generic map(
      INIT => X"DC8C"
    )
    port map (
      I0 => Instr(21),
      I1 => ALUU_Result(7),
      I2 => CONTROL_N31,
      I3 => DataMemory_MemData(7),
      O => N3025
    );
  MUX2v16_Y_7_56_G : LUT4
    generic map(
      INIT => X"DC8C"
    )
    port map (
      I0 => Instr(21),
      I1 => ALUU_Result(7),
      I2 => CONTROL_N31,
      I3 => MUX2v16_Y_7_map6,
      O => N3026
    );
  MUX2v16_Y_6_56 : MUXF5
    port map (
      I0 => N3027,
      I1 => N3028,
      S => Instr(8),
      O => WrData(6)
    );
  MUX2v16_Y_6_56_F : LUT4
    generic map(
      INIT => X"DC8C"
    )
    port map (
      I0 => Instr(21),
      I1 => ALUU_Result(6),
      I2 => CONTROL_N31,
      I3 => DataMemory_MemData(6),
      O => N3027
    );
  MUX2v16_Y_6_56_G : LUT4
    generic map(
      INIT => X"DC8C"
    )
    port map (
      I0 => Instr(21),
      I1 => ALUU_Result(6),
      I2 => CONTROL_N31,
      I3 => MUX2v16_Y_6_map6,
      O => N3028
    );
  MUX2v16_Y_5_56 : MUXF5
    port map (
      I0 => N3029,
      I1 => N3030,
      S => Instr(8),
      O => WrData(5)
    );
  MUX2v16_Y_5_56_F : LUT4
    generic map(
      INIT => X"DC8C"
    )
    port map (
      I0 => Instr(21),
      I1 => ALUU_Result(5),
      I2 => CONTROL_N31,
      I3 => DataMemory_MemData(5),
      O => N3029
    );
  MUX2v16_Y_5_56_G : LUT4
    generic map(
      INIT => X"DC8C"
    )
    port map (
      I0 => Instr(21),
      I1 => ALUU_Result(5),
      I2 => CONTROL_N31,
      I3 => MUX2v16_Y_5_map6,
      O => N3030
    );
  MUX2v16_Y_4_56 : MUXF5
    port map (
      I0 => N3031,
      I1 => N3032,
      S => Instr(8),
      O => WrData(4)
    );
  MUX2v16_Y_4_56_F : LUT4
    generic map(
      INIT => X"DC8C"
    )
    port map (
      I0 => Instr(21),
      I1 => ALUU_Result(4),
      I2 => CONTROL_N31,
      I3 => DataMemory_MemData(4),
      O => N3031
    );
  MUX2v16_Y_4_56_G : LUT4
    generic map(
      INIT => X"DC8C"
    )
    port map (
      I0 => Instr(21),
      I1 => ALUU_Result(4),
      I2 => CONTROL_N31,
      I3 => MUX2v16_Y_4_map6,
      O => N3032
    );
  MUX2v16_Y_3_56 : MUXF5
    port map (
      I0 => N3033,
      I1 => N3034,
      S => Instr(8),
      O => WrData(3)
    );
  MUX2v16_Y_3_56_F : LUT4
    generic map(
      INIT => X"DC8C"
    )
    port map (
      I0 => Instr(21),
      I1 => ALUU_Result(3),
      I2 => CONTROL_N31,
      I3 => DataMemory_MemData(3),
      O => N3033
    );
  MUX2v16_Y_3_56_G : LUT4
    generic map(
      INIT => X"DC8C"
    )
    port map (
      I0 => Instr(21),
      I1 => ALUU_Result(3),
      I2 => CONTROL_N31,
      I3 => MUX2v16_Y_3_map6,
      O => N3034
    );
  MUX2v16_Y_2_56 : MUXF5
    port map (
      I0 => N3035,
      I1 => N3036,
      S => Instr(8),
      O => WrData(2)
    );
  MUX2v16_Y_2_56_F : LUT4
    generic map(
      INIT => X"DC8C"
    )
    port map (
      I0 => Instr(21),
      I1 => ALUU_Result(2),
      I2 => CONTROL_N31,
      I3 => DataMemory_MemData(2),
      O => N3035
    );
  MUX2v16_Y_2_56_G : LUT4
    generic map(
      INIT => X"DC8C"
    )
    port map (
      I0 => Instr(21),
      I1 => ALUU_Result(2),
      I2 => CONTROL_N31,
      I3 => MUX2v16_Y_2_map6,
      O => N3036
    );
  MUX2v16_Y_1_56 : MUXF5
    port map (
      I0 => N3037,
      I1 => N3038,
      S => Instr(8),
      O => WrData(1)
    );
  MUX2v16_Y_1_56_F : LUT4
    generic map(
      INIT => X"DC8C"
    )
    port map (
      I0 => Instr(21),
      I1 => ALUU_Result(1),
      I2 => CONTROL_N31,
      I3 => DataMemory_MemData(1),
      O => N3037
    );
  MUX2v16_Y_1_56_G : LUT4
    generic map(
      INIT => X"DC8C"
    )
    port map (
      I0 => Instr(21),
      I1 => ALUU_Result(1),
      I2 => CONTROL_N31,
      I3 => MUX2v16_Y_1_map6,
      O => N3038
    );
  MUX2v16_Y_15_56 : MUXF5
    port map (
      I0 => N3039,
      I1 => N3040,
      S => Instr(8),
      O => WrData(15)
    );
  MUX2v16_Y_15_56_F : LUT4
    generic map(
      INIT => X"DC8C"
    )
    port map (
      I0 => Instr(21),
      I1 => ALUU_Result(15),
      I2 => CONTROL_N31,
      I3 => DataMemory_MemData(15),
      O => N3039
    );
  MUX2v16_Y_15_56_G : LUT4
    generic map(
      INIT => X"DC8C"
    )
    port map (
      I0 => Instr(21),
      I1 => ALUU_Result(15),
      I2 => CONTROL_N31,
      I3 => MUX2v16_Y_15_map6,
      O => N3040
    );
  MUX2v16_Y_14_56 : MUXF5
    port map (
      I0 => N3041,
      I1 => N3042,
      S => Instr(8),
      O => WrData(14)
    );
  MUX2v16_Y_14_56_F : LUT4
    generic map(
      INIT => X"DC8C"
    )
    port map (
      I0 => Instr(21),
      I1 => ALUU_Result(14),
      I2 => CONTROL_N31,
      I3 => DataMemory_MemData(14),
      O => N3041
    );
  MUX2v16_Y_14_56_G : LUT4
    generic map(
      INIT => X"DC8C"
    )
    port map (
      I0 => Instr(21),
      I1 => ALUU_Result(14),
      I2 => CONTROL_N31,
      I3 => MUX2v16_Y_14_map6,
      O => N3042
    );
  MUX2v16_Y_13_56 : MUXF5
    port map (
      I0 => N3043,
      I1 => N3044,
      S => Instr(8),
      O => WrData(13)
    );
  MUX2v16_Y_13_56_F : LUT4
    generic map(
      INIT => X"DC8C"
    )
    port map (
      I0 => Instr(21),
      I1 => ALUU_Result(13),
      I2 => CONTROL_N31,
      I3 => DataMemory_MemData(13),
      O => N3043
    );
  MUX2v16_Y_13_56_G : LUT4
    generic map(
      INIT => X"DC8C"
    )
    port map (
      I0 => Instr(21),
      I1 => ALUU_Result(13),
      I2 => CONTROL_N31,
      I3 => MUX2v16_Y_13_map6,
      O => N3044
    );
  MUX2v16_Y_12_56 : MUXF5
    port map (
      I0 => N3045,
      I1 => N3046,
      S => Instr(8),
      O => WrData(12)
    );
  MUX2v16_Y_12_56_F : LUT4
    generic map(
      INIT => X"DC8C"
    )
    port map (
      I0 => Instr(21),
      I1 => ALUU_Result(12),
      I2 => CONTROL_N31,
      I3 => DataMemory_MemData(12),
      O => N3045
    );
  MUX2v16_Y_12_56_G : LUT4
    generic map(
      INIT => X"DC8C"
    )
    port map (
      I0 => Instr(21),
      I1 => ALUU_Result(12),
      I2 => CONTROL_N31,
      I3 => MUX2v16_Y_12_map6,
      O => N3046
    );
  MUX2v16_Y_11_56 : MUXF5
    port map (
      I0 => N3047,
      I1 => N3048,
      S => Instr(8),
      O => WrData(11)
    );
  MUX2v16_Y_11_56_F : LUT4
    generic map(
      INIT => X"DC8C"
    )
    port map (
      I0 => Instr(21),
      I1 => ALUU_Result(11),
      I2 => CONTROL_N31,
      I3 => DataMemory_MemData(11),
      O => N3047
    );
  MUX2v16_Y_11_56_G : LUT4
    generic map(
      INIT => X"DC8C"
    )
    port map (
      I0 => Instr(21),
      I1 => ALUU_Result(11),
      I2 => CONTROL_N31,
      I3 => MUX2v16_Y_11_map6,
      O => N3048
    );
  MUX2v16_Y_10_56 : MUXF5
    port map (
      I0 => N3049,
      I1 => N3050,
      S => Instr(8),
      O => WrData(10)
    );
  MUX2v16_Y_10_56_F : LUT4
    generic map(
      INIT => X"DC8C"
    )
    port map (
      I0 => Instr(21),
      I1 => ALUU_Result(10),
      I2 => CONTROL_N31,
      I3 => DataMemory_MemData(10),
      O => N3049
    );
  MUX2v16_Y_10_56_G : LUT4
    generic map(
      INIT => X"DC8C"
    )
    port map (
      I0 => Instr(21),
      I1 => ALUU_Result(10),
      I2 => CONTROL_N31,
      I3 => MUX2v16_Y_10_map6,
      O => N3050
    );
  MUX2v16_Y_0_56 : MUXF5
    port map (
      I0 => N3051,
      I1 => N3052,
      S => Instr(8),
      O => WrData(0)
    );
  MUX2v16_Y_0_56_F : LUT4
    generic map(
      INIT => X"DC8C"
    )
    port map (
      I0 => Instr(21),
      I1 => ALUU_Result(0),
      I2 => CONTROL_N31,
      I3 => DataMemory_MemData(0),
      O => N3051
    );
  MUX2v16_Y_0_56_G : LUT4
    generic map(
      INIT => X"DC8C"
    )
    port map (
      I0 => Instr(21),
      I1 => ALUU_Result(0),
      I2 => CONTROL_N31,
      I3 => MUX2v16_Y_0_map6,
      O => N3052
    );
  CONTROL_Flag_C_or0000 : MUXF5
    port map (
      I0 => N3053,
      I1 => N3054,
      S => Instr(19),
      O => Flag_C
    );
  CONTROL_Flag_C_or0000_F : LUT4
    generic map(
      INIT => X"1018"
    )
    port map (
      I0 => Instr(21),
      I1 => Instr(23),
      I2 => Instr(22),
      I3 => Instr(20),
      O => N3053
    );
  CONTROL_Flag_C_or0000_G : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => Instr(20),
      I1 => Instr(22),
      I2 => Instr(23),
      I3 => Instr(21),
      O => N3054
    );
  Clk_BUFGP : BUFGP
    port map (
      I => Clk,
      O => Clk_BUFGP_0
    );
  ROM32v24_Mrom_Data_rom00001 : RAMB16_S36
    generic map(
      WRITE_MODE => "WRITE_FIRST",
      INIT_02 => X"000000000000000000000000000000000000000000000000000000000037FFEF",
      INIT => X"000000000",
      INIT_00 => X"0050840200510283004184020041820300410402004081820080811200808101",
      INIT_01 => X"0088812500888124008881230088812200888121007083020060828200528381",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      CLK => Clk_BUFGP_0,
      EN => N2,
      SSR => PC(0),
      WE => PC(0),
      ADDR(8) => PC(0),
      ADDR(7) => PC(0),
      ADDR(6) => PC(0),
      ADDR(5) => PC(0),
      ADDR(4) => New_PC(4),
      ADDR(3) => New_PC(3),
      ADDR(2) => New_PC(2),
      ADDR(1) => New_PC(1),
      ADDR(0) => PC(0),
      DI(31) => PC(0),
      DI(30) => PC(0),
      DI(29) => PC(0),
      DI(28) => PC(0),
      DI(27) => PC(0),
      DI(26) => PC(0),
      DI(25) => PC(0),
      DI(24) => PC(0),
      DI(23) => PC(0),
      DI(22) => PC(0),
      DI(21) => PC(0),
      DI(20) => PC(0),
      DI(19) => PC(0),
      DI(18) => PC(0),
      DI(17) => PC(0),
      DI(16) => PC(0),
      DI(15) => PC(0),
      DI(14) => PC(0),
      DI(13) => PC(0),
      DI(12) => PC(0),
      DI(11) => PC(0),
      DI(10) => PC(0),
      DI(9) => PC(0),
      DI(8) => PC(0),
      DI(7) => PC(0),
      DI(6) => PC(0),
      DI(5) => PC(0),
      DI(4) => PC(0),
      DI(3) => PC(0),
      DI(2) => PC(0),
      DI(1) => PC(0),
      DI(0) => PC(0),
      DIP(3) => PC(0),
      DIP(2) => PC(0),
      DIP(1) => PC(0),
      DIP(0) => PC(0),
      DO(31) => NLW_ROM32v24_Mrom_Data_rom00001_DO_31_UNCONNECTED,
      DO(30) => NLW_ROM32v24_Mrom_Data_rom00001_DO_30_UNCONNECTED,
      DO(29) => NLW_ROM32v24_Mrom_Data_rom00001_DO_29_UNCONNECTED,
      DO(28) => NLW_ROM32v24_Mrom_Data_rom00001_DO_28_UNCONNECTED,
      DO(27) => NLW_ROM32v24_Mrom_Data_rom00001_DO_27_UNCONNECTED,
      DO(26) => NLW_ROM32v24_Mrom_Data_rom00001_DO_26_UNCONNECTED,
      DO(25) => NLW_ROM32v24_Mrom_Data_rom00001_DO_25_UNCONNECTED,
      DO(24) => NLW_ROM32v24_Mrom_Data_rom00001_DO_24_UNCONNECTED,
      DO(23) => Instr(23),
      DO(22) => Instr(22),
      DO(21) => Instr(21),
      DO(20) => Instr(20),
      DO(19) => Instr(19),
      DO(18) => Instr(18),
      DO(17) => Instr(17),
      DO(16) => Instr(16),
      DO(15) => Instr(15),
      DO(14) => Instr(14),
      DO(13) => Instr(13),
      DO(12) => Instr(12),
      DO(11) => Instr(11),
      DO(10) => Instr(10),
      DO(9) => Instr(9),
      DO(8) => Instr(8),
      DO(7) => Instr(7),
      DO(6) => Instr(6),
      DO(5) => Instr(5),
      DO(4) => Instr(4),
      DO(3) => Instr(3),
      DO(2) => Instr(2),
      DO(1) => Instr(1),
      DO(0) => Instr(0),
      DOP(3) => NLW_ROM32v24_Mrom_Data_rom00001_DOP_3_UNCONNECTED,
      DOP(2) => NLW_ROM32v24_Mrom_Data_rom00001_DOP_2_UNCONNECTED,
      DOP(1) => NLW_ROM32v24_Mrom_Data_rom00001_DOP_1_UNCONNECTED,
      DOP(0) => NLW_ROM32v24_Mrom_Data_rom00001_DOP_0_UNCONNECTED
    );
  CONTROL_Flag_Z_or000011 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => CONTROL_N9,
      I1 => Instr(21),
      I2 => CONTROL_N31,
      I3 => CONTROL_N10,
      O => N3055
    );
  CONTROL_Flag_Z_or000012 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Instr(21),
      I1 => CONTROL_N31,
      O => N3056
    );
  CONTROL_Flag_Z_or00001_f5 : MUXF5
    port map (
      I0 => N3056,
      I1 => N3055,
      S => Instr(22),
      O => Flag_Z
    );
  CONTROL_MEMWr_cmp_eq00001 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => Instr(19),
      I1 => Instr(22),
      I2 => Instr(21),
      I3 => Instr(20),
      O => N3057
    );
  CONTROL_MEMWr_cmp_eq0000_f5 : MUXF5
    port map (
      I0 => PC(0),
      I1 => N3057,
      S => Instr(23),
      O => MEMWr
    );
  CONTROL_RegWr_or000011 : LUT4
    generic map(
      INIT => X"0880"
    )
    port map (
      I0 => Instr(22),
      I1 => Instr(19),
      I2 => Instr(21),
      I3 => Instr(20),
      O => N3058
    );
  CONTROL_RegWr_or000012 : LUT4
    generic map(
      INIT => X"20F0"
    )
    port map (
      I0 => Instr(21),
      I1 => Instr(20),
      I2 => Instr(22),
      I3 => Instr(19),
      O => N3059
    );
  CONTROL_RegWr_or00001_f5 : MUXF5
    port map (
      I0 => N3059,
      I1 => N3058,
      S => Instr(23),
      O => RegDest
    );
  ALUU_Result_mux0000_2_13041 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => RdDataSource(5),
      I1 => RdDataSource(3),
      I2 => RdDataSource(2),
      I3 => RdDataSource(4),
      O => N3060
    );
  ALUU_Result_mux0000_2_1304_f5 : MUXF5
    port map (
      I0 => N3060,
      I1 => PC(0),
      S => RdDataSource(6),
      O => ALUU_Result_mux0000_2_1_map75
    );
  ALUU_Result_mux0000_2_13601 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => RdDataSource(12),
      I1 => RdDataSource(11),
      O => N3061
    );
  ALUU_Result_mux0000_2_13602 : LUT4
    generic map(
      INIT => X"FFF2"
    )
    port map (
      I0 => ALUU_Result_mux0000_2_1_map75,
      I1 => RdDataSource(7),
      I2 => RdDataSource(11),
      I3 => RdDataSource(12),
      O => N3062
    );
  ALUU_Result_mux0000_2_1360_f5 : MUXF5
    port map (
      I0 => N3062,
      I1 => N3061,
      S => RdDataSource(8),
      O => ALUU_Result_mux0000_2_1_map81
    );
  ALUU_Result_mux0000_1_15101 : LUT4
    generic map(
      INIT => X"1110"
    )
    port map (
      I0 => RdDataSource(11),
      I1 => RdDataSource(6),
      I2 => RdDataSource(4),
      I3 => RdDataSource(5),
      O => N3063
    );
  ALUU_Result_mux0000_1_15102 : LUT4
    generic map(
      INIT => X"1110"
    )
    port map (
      I0 => RdDataSource(11),
      I1 => RdDataSource(6),
      I2 => ALUU_Result_mux0000_1_1_map90,
      I3 => RdDataSource(5),
      O => N3064
    );
  ALUU_Result_mux0000_1_1510_f5 : MUXF5
    port map (
      I0 => N3064,
      I1 => N3063,
      S => RdDataSource(3),
      O => ALUU_Result_mux0000_1_1_map95
    );
  ALUU_Result_mux0000_1_16651 : LUT4
    generic map(
      INIT => X"FFAB"
    )
    port map (
      I0 => RdDataSource(12),
      I1 => RdDataSource(11),
      I2 => RdDataSource(10),
      I3 => RdDataSource(13),
      O => N3065
    );
  ALUU_Result_mux0000_1_16652 : LUT4
    generic map(
      INIT => X"FFF2"
    )
    port map (
      I0 => N2969,
      I1 => RdDataSource(10),
      I2 => RdDataSource(12),
      I3 => RdDataSource(13),
      O => N3066
    );
  ALUU_Result_mux0000_1_1665_f5 : MUXF5
    port map (
      I0 => N3066,
      I1 => N3065,
      S => RdDataSource(9),
      O => ALUU_Result_mux0000_1_1_map105
    );
  ALUU_Result_mux0000_0_56391 : LUT4
    generic map(
      INIT => X"A222"
    )
    port map (
      I0 => RdDataSource(14),
      I1 => RdDataSource(13),
      I2 => RdDataSource(12),
      I3 => N2981,
      O => N3067
    );
  ALUU_Result_mux0000_0_56392 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ALUU_Result_mux0000_0_5_map102,
      I1 => RdDataSource(14),
      O => N3068
    );
  ALUU_Result_mux0000_0_5639_f5 : MUXF5
    port map (
      I0 => N3068,
      I1 => N3067,
      S => RdDataSource(15),
      O => ALUU_Result_mux0000_0_5_map105
    );
  ALUU_Result_mux0000_4_295_SW01 : LUT4
    generic map(
      INIT => X"7D28"
    )
    port map (
      I0 => CONTROL_ALU_OP(0),
      I1 => Instr(4),
      I2 => RdDataBase(4),
      I3 => RdDataSource(14),
      O => N3069
    );
  ALUU_Result_mux0000_4_295_SW02 : LUT4
    generic map(
      INIT => X"287D"
    )
    port map (
      I0 => CONTROL_ALU_OP(0),
      I1 => Instr(4),
      I2 => RdDataBase(4),
      I3 => RdDataSource(14),
      O => N3070
    );
  ALUU_Result_mux0000_4_295_SW0_f5 : MUXF5
    port map (
      I0 => N3070,
      I1 => N3069,
      S => RdDataSource(15),
      O => N2951
    );
  ALUU_Result_mux0000_2_1524_SW01 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Instr(2),
      I1 => RdDataBase(2),
      O => N3071
    );
  ALUU_Result_mux0000_2_1524_SW02 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => RdDataSource(15),
      I1 => ALUU_Result_mux0000_2_1_map85,
      I2 => RdDataSource(14),
      I3 => N2955,
      O => N3072
    );
  ALUU_Result_mux0000_2_1524_SW0_f5 : MUXF5
    port map (
      I0 => N3072,
      I1 => N3071,
      S => CONTROL_ALU_OP(0),
      O => N2957
    );
  ALUU_Result_mux0000_1_1789_SW01 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Instr(1),
      I1 => RdDataBase(1),
      O => N3073
    );
  ALUU_Result_mux0000_1_1789_SW02 : LUT4
    generic map(
      INIT => X"9810"
    )
    port map (
      I0 => RdDataSource(15),
      I1 => RdDataSource(14),
      I2 => ALUU_Result_mux0000_1_1_map105,
      I3 => N2927,
      O => N3074
    );
  ALUU_Result_mux0000_1_1789_SW0_f5 : MUXF5
    port map (
      I0 => N3074,
      I1 => N3073,
      S => CONTROL_ALU_OP(0),
      O => N2963
    );
  ALUU_Result_mux0000_0_5249_SW01 : LUT4
    generic map(
      INIT => X"D5FF"
    )
    port map (
      I0 => RdDataSource(7),
      I1 => ALUU_Result_mux0000_0_5_map35,
      I2 => RdDataSource(6),
      I3 => RdDataSource(11),
      O => N3076
    );
  ALUU_Result_mux0000_0_5249_SW0_f5 : MUXF5
    port map (
      I0 => N3077,
      I1 => N3076,
      S => RdDataSource(8),
      O => N2971
    );
  ALUU_Result_mux0000_1_1307_SW0_SW01 : LUT4
    generic map(
      INIT => X"082A"
    )
    port map (
      I0 => RdDataSource(11),
      I1 => RdDataSource(3),
      I2 => N2961,
      I3 => RdDataSource(4),
      O => N3078
    );
  ALUU_Result_mux0000_1_1307_SW0_SW0_f5 : MUXF5
    port map (
      I0 => RdDataSource(11),
      I1 => N3078,
      S => RdDataSource(5),
      O => N2973
    );
  CONTROL_ALU_OP_mux0000_1_1 : LUT4
    generic map(
      INIT => X"0082"
    )
    port map (
      I0 => Instr(21),
      I1 => Instr(22),
      I2 => Instr(19),
      I3 => Instr(20),
      O => N3079
    );
  CONTROL_ALU_OP_mux0000_1_2 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Instr(21),
      I1 => Instr(22),
      I2 => Instr(19),
      O => N3080
    );
  CONTROL_ALU_OP_mux0000_1_f5 : MUXF5
    port map (
      I0 => N3080,
      I1 => N3079,
      S => Instr(23),
      O => CONTROL_ALU_OP_mux0000(1)
    );
  PC_Updates_New_PC_5_115 : LUT4_L
    generic map(
      INIT => X"CCB8"
    )
    port map (
      I0 => ALUU_N_2,
      I1 => Instr(17),
      I2 => ALUU_C_1,
      I3 => Instr(18),
      LO => PC_Updates_New_PC_5_1_map6
    );
  ALUU_flag_carry17 : LUT4_L
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => RdDataSource(13),
      I1 => RdDataSource(10),
      I2 => RdDataSource(9),
      I3 => RdDataSource(8),
      LO => ALUU_flag_carry1_map4
    );
  ALUU_flag_carry118 : LUT4_L
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => RdDataSource(6),
      I1 => RdDataSource(7),
      I2 => RdDataSource(12),
      I3 => RdDataSource(11),
      LO => ALUU_flag_carry1_map8
    );
  ALUU_flag_carry167 : LUT4_L
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => RdDataSource(9),
      I1 => RdDataSource(8),
      I2 => RdDataSource(7),
      I3 => RdDataSource(12),
      LO => ALUU_flag_carry1_map27
    );
  ALUU_flag_carry191 : LUT4_L
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => RdDataSource(3),
      I1 => RdDataSource(5),
      I2 => RdDataSource(6),
      I3 => RdDataSource(11),
      LO => ALUU_flag_carry1_map35
    );
  ALUU_flag_carry1129 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => ALUU_flag_carry1_map5,
      I1 => ALUU_flag_carry1_map41,
      I2 => ALUU_flag_carry1_map12,
      I3 => ALUU_flag_carry1_map28,
      LO => ALUU_flag_carry1_map43
    );
  PC_Updates_Madd_PC_P2_xor_4_12 : LUT4_D
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => ProgCounter_PC(4),
      I1 => ProgCounter_PC(2),
      I2 => ProgCounter_PC(3),
      I3 => ProgCounter_PC(1),
      LO => N3081,
      O => PC_Updates_PC_P2(4)
    );
  ALUU_Result_mux0000_0_5249_SW02_INV_0 : INV
    port map (
      I => RdDataSource(11),
      O => N3077
    );

end Structure;

