VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Z
        SIGNAL C
        SIGNAL OV
        SIGNAL New_PC(5:0)
        SIGNAL RdDataBase(15:0)
        SIGNAL RdDataSource(15:0)
        SIGNAL Clk
        SIGNAL PC(5:0)
        SIGNAL PC(5:1)
        SIGNAL Instr(23:0)
        SIGNAL Instr(4:0)
        SIGNAL Instr(18:16)
        SIGNAL Instr(18:15)
        SIGNAL muxBase(3:0)
        SIGNAL muxDest(3:0)
        SIGNAL Instr(10:7)
        SIGNAL Instr(3:0)
        SIGNAL WrData(15:0)
        SIGNAL ALUOut(15:0)
        SIGNAL Instr(23:19)
        SIGNAL Instr(8:4)
        SIGNAL N
        SIGNAL OUTW0(15:0)
        SIGNAL INW0(15:0)
        SIGNAL INW1(15:0)
        SIGNAL Flag_N
        SIGNAL Flag_OV
        SIGNAL Flag_Z
        SIGNAL Flag_C
        SIGNAL MEMWr
        SIGNAL MEM2Reg
        SIGNAL RegWr
        SIGNAL RegBase
        SIGNAL RegDest
        SIGNAL Branch
        SIGNAL ALU_OP(2:0)
        SIGNAL Instr(14:11)
        SIGNAL DataOut(15:0)
        PORT Input Clk
        PORT Output OUTW0(15:0)
        PORT Input INW0(15:0)
        PORT Input INW1(15:0)
        BEGIN BLOCKDEF ROM32x24
            TIMESTAMP 2021 1 15 13 14 23
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF PC_Update
            TIMESTAMP 2021 1 14 11 13 52
            RECTANGLE N 320 -92 384 -68 
            LINE N 320 -80 384 -80 
            RECTANGLE N 64 -116 320 592 
            LINE N 64 256 0 256 
            LINE N 64 320 0 320 
            RECTANGLE N 0 372 64 396 
            LINE N 64 384 0 384 
            LINE N 64 64 0 64 
            LINE N 64 128 0 128 
            LINE N 64 192 0 192 
            RECTANGLE N 0 436 64 460 
            LINE N 64 448 0 448 
            RECTANGLE N 0 516 64 540 
            LINE N 64 528 0 528 
        END BLOCKDEF
        BEGIN BLOCKDEF ProgCnt
            TIMESTAMP 2021 1 13 12 3 22
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2x16
            TIMESTAMP 2021 1 14 19 21 53
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -60 64 -36 
            LINE N 64 -48 0 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2x4
            TIMESTAMP 2021 1 14 11 35 26
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            LINE N 64 -32 0 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF File_Regs
            TIMESTAMP 2021 1 14 11 12 10
            RECTANGLE N 64 -384 384 0 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 384 -364 448 -340 
            LINE N 384 -352 448 -352 
            RECTANGLE N 384 -300 448 -276 
            LINE N 384 -288 448 -288 
        END BLOCKDEF
        BEGIN BLOCKDEF DataMem
            TIMESTAMP 2021 1 13 13 1 37
            RECTANGLE N 64 -384 368 0 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 368 -364 432 -340 
            LINE N 368 -352 432 -352 
            RECTANGLE N 368 -44 432 -20 
            LINE N 368 -32 432 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF CTRL
            TIMESTAMP 2021 1 13 13 41 12
            RECTANGLE N 64 -704 352 0 
            RECTANGLE N 0 -684 64 -660 
            LINE N 64 -672 0 -672 
            LINE N 352 -672 416 -672 
            LINE N 352 -608 416 -608 
            LINE N 352 -544 416 -544 
            LINE N 352 -480 416 -480 
            LINE N 352 -416 416 -416 
            LINE N 352 -352 416 -352 
            LINE N 352 -288 416 -288 
            LINE N 352 -224 416 -224 
            LINE N 352 -160 416 -160 
            LINE N 352 -96 416 -96 
            RECTANGLE N 352 -44 416 -20 
            LINE N 352 -32 416 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF ALU
            TIMESTAMP 2021 1 14 11 3 32
            RECTANGLE N 64 -576 368 0 
            LINE N 64 -544 0 -544 
            LINE N 64 -480 0 -480 
            LINE N 64 -416 0 -416 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 368 -44 432 -20 
            LINE N 368 -32 432 -32 
            LINE N 368 -496 432 -496 
            LINE N 368 -432 432 -432 
            LINE N 368 -368 432 -368 
            LINE N 368 -304 432 -304 
        END BLOCKDEF
        BEGIN BLOCK ROM32v24 ROM32x24
            PIN Addr(4:0) PC(5:1)
            PIN Data(23:0) Instr(23:0)
        END BLOCK
        BEGIN BLOCK ProgCounter ProgCnt
            PIN Clk Clk
            PIN New_PC(5:0) New_PC(5:0)
            PIN PC(5:0) PC(5:0)
        END BLOCK
        BEGIN BLOCK MUX2v16 MUX2x16
            PIN Selectie MEM2Reg
            PIN Y(15:0) WrData(15:0)
            PIN I0(15:0) ALUOut(15:0)
            PIN I1(15:0) DataOut(15:0)
        END BLOCK
        BEGIN BLOCK File_Registers File_Regs
            PIN Clk Clk
            PIN WrEn RegWr
            PIN RdReg1(3:0) muxBase(3:0)
            PIN RdReg2(3:0) Instr(3:0)
            PIN WrReg(3:0) muxDest(3:0)
            PIN WrData(15:0) WrData(15:0)
            PIN RdData1(15:0) RdDataBase(15:0)
            PIN RdData2(15:0) RdDataSource(15:0)
        END BLOCK
        BEGIN BLOCK DataMemory DataMem
            PIN Clk Clk
            PIN Wr MEMWr
            PIN INW0(15:0) INW0(15:0)
            PIN INW1(15:0) INW1(15:0)
            PIN Addr(4:0) Instr(8:4)
            PIN DataIn(15:0) RdDataSource(15:0)
            PIN OUTW0(15:0) OUTW0(15:0)
            PIN DataOut(15:0) DataOut(15:0)
        END BLOCK
        BEGIN BLOCK CONTROL CTRL
            PIN Opcode(4:0) Instr(23:19)
            PIN Flag_N Flag_N
            PIN Flag_OV Flag_OV
            PIN Flag_Z Flag_Z
            PIN Flag_C Flag_C
            PIN MEMWr MEMWr
            PIN MEM2Reg MEM2Reg
            PIN RegWr RegWr
            PIN RegBase RegBase
            PIN RegDest RegDest
            PIN Branch Branch
            PIN ALU_OP(2:0) ALU_OP(2:0)
        END BLOCK
        BEGIN BLOCK PC_Updates PC_Update
            PIN New_PC(5:0) New_PC(5:0)
            PIN OV OV
            PIN Branch Branch
            PIN Offset(4:0) Instr(4:0)
            PIN N N
            PIN Z Z
            PIN C C
            PIN Branch_Type(2:0) Instr(18:16)
            PIN PC(5:0) PC(5:0)
        END BLOCK
        BEGIN BLOCK MUX2z4 MUX2x4
            PIN I0(3:0) Instr(18:15)
            PIN Y(3:0) muxBase(3:0)
            PIN I1(3:0) Instr(14:11)
            PIN Selectie RegBase
        END BLOCK
        BEGIN BLOCK MUX2v4 MUX2x4
            PIN I0(3:0) Instr(3:0)
            PIN Y(3:0) muxDest(3:0)
            PIN I1(3:0) Instr(10:7)
            PIN Selectie RegDest
        END BLOCK
        BEGIN BLOCK ALUU ALU
            PIN Clk Clk
            PIN Flag_N Flag_N
            PIN Flag_C Flag_C
            PIN Flag_Z Flag_Z
            PIN Flag_OV Flag_OV
            PIN RdDataBase(15:0) RdDataBase(15:0)
            PIN RdDataSource(15:0) RdDataSource(15:0)
            PIN ALU_OP(2:0) ALU_OP(2:0)
            PIN lit5(4:0) Instr(4:0)
            PIN Y(15:0) ALUOut(15:0)
            PIN OV OV
            PIN C C
            PIN Z Z
            PIN N N
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BEGIN BRANCH Z
            WIRE 608 480 656 480
            WIRE 656 80 656 480
            WIRE 656 80 1232 80
            WIRE 1232 80 3264 80
            WIRE 3264 80 3264 464
            WIRE 3152 464 3264 464
            BEGIN DISPLAY 1232 80 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH C
            WIRE 608 544 704 544
            WIRE 704 128 704 544
            WIRE 704 128 1232 128
            WIRE 1232 128 3216 128
            WIRE 3216 128 3216 400
            WIRE 3152 400 3216 400
            BEGIN DISPLAY 1232 128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH New_PC(5:0)
            WIRE 208 272 224 272
            WIRE 208 272 208 784
            WIRE 208 784 208 1456
            WIRE 208 1456 384 1456
            BEGIN DISPLAY 208 784 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RdDataSource(15:0)
            WIRE 2528 672 2592 672
            WIRE 2592 672 2592 1728
            WIRE 2592 1728 3584 1728
            WIRE 2592 672 2608 672
            WIRE 2608 672 2720 672
            BEGIN DISPLAY 2608 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE PC_Updates 608 352 M0
            BEGIN DISPLAY 240 644 ATTR InstName
                ALIGNMENT RIGHT
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH OV
            WIRE 608 608 752 608
            WIRE 752 176 752 608
            WIRE 752 176 1232 176
            WIRE 1232 176 3168 176
            WIRE 3168 176 3168 336
            WIRE 3152 336 3168 336
            BEGIN DISPLAY 1232 176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE ProgCounter 384 1488 R0
            BEGIN DISPLAY 128 40 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Clk
            WIRE 352 1392 384 1392
        END BRANCH
        IOMARKER 352 1392 Clk R180 28
        BEGIN BRANCH PC(5:0)
            WIRE 608 880 784 880
            WIRE 784 880 784 1040
            WIRE 784 1040 784 1200
            WIRE 784 1200 784 1392
            WIRE 768 1392 784 1392
            BEGIN DISPLAY 784 1040 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE ROM32v24 1072 1232 R0
            BEGIN DISPLAY 112 24 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 784 1200 880 1200
        BEGIN BRANCH PC(5:1)
            WIRE 880 1200 912 1200
            WIRE 912 1200 1072 1200
            BEGIN DISPLAY 912 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(23:0)
            WIRE 1456 1200 1632 1200
            WIRE 1632 1200 1632 1312
            WIRE 1632 1312 1632 1376
            WIRE 1632 1376 1632 1584
            WIRE 1632 1584 1632 1712
            WIRE 1632 1712 1632 2000
            WIRE 1632 2000 1632 2096
            WIRE 1632 2096 1632 2224
            WIRE 1632 2224 1632 2272
            WIRE 1632 496 1632 592
            WIRE 1632 592 1632 736
            WIRE 1632 736 1632 800
            WIRE 1632 800 1632 1200
            BEGIN DISPLAY 1632 592 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(4:0)
            WIRE 608 736 1168 736
            WIRE 1168 736 1536 736
            BEGIN DISPLAY 1168 736 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(18:16)
            WIRE 608 800 1136 800
            WIRE 1136 800 1536 800
            BEGIN DISPLAY 1136 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1632 736 1536 736
        BUSTAP 1632 800 1536 800
        BEGIN INSTANCE MUX2z4 1952 1472 R0
            BEGIN DISPLAY 128 24 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 1632 1312 1728 1312
        BUSTAP 1632 1376 1728 1376
        BEGIN BRANCH Instr(14:11)
            WIRE 1728 1312 1760 1312
            WIRE 1760 1312 1952 1312
            BEGIN DISPLAY 1760 1312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(18:15)
            WIRE 1728 1376 1776 1376
            WIRE 1776 1376 1952 1376
            BEGIN DISPLAY 1776 1376 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH muxBase(3:0)
            WIRE 1728 736 1728 1184
            WIRE 1728 1184 2384 1184
            WIRE 2384 1184 2384 1312
            WIRE 1728 736 1792 736
            WIRE 1792 736 2080 736
            WIRE 2336 1312 2384 1312
            BEGIN DISPLAY 1792 736 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE File_Registers 2080 960 R0
            BEGIN DISPLAY 128 24 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE MUX2v4 1936 1872 R0
            BEGIN DISPLAY 128 24 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH muxDest(3:0)
            WIRE 1904 864 1904 1088
            WIRE 1904 1088 2448 1088
            WIRE 2448 1088 2448 1712
            WIRE 1904 864 1936 864
            WIRE 1936 864 2080 864
            WIRE 2320 1712 2448 1712
            BEGIN DISPLAY 1936 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1632 1584 1728 1584
        BUSTAP 1632 1712 1728 1712
        BEGIN BRANCH Instr(10:7)
            WIRE 1728 1712 1744 1712
            WIRE 1744 1712 1936 1712
            BEGIN DISPLAY 1744 1712 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(3:0)
            WIRE 1728 1584 1808 1584
            WIRE 1808 1584 1808 1776
            WIRE 1808 1776 1936 1776
            WIRE 1808 1584 2016 1584
            WIRE 2016 1584 2416 1584
            WIRE 1792 800 2080 800
            WIRE 1792 800 1792 1136
            WIRE 1792 1136 2416 1136
            WIRE 2416 1136 2416 1584
            BEGIN DISPLAY 2016 1584 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WrData(15:0)
            WIRE 2064 928 2080 928
            WIRE 2064 928 2064 1040
            WIRE 2064 1040 3152 1040
            WIRE 3152 1040 3856 1040
            BEGIN DISPLAY 3152 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE MUX2v16 4240 1200 M0
            BEGIN DISPLAY 112 24 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 1632 2000 1728 2000
        BEGIN BRANCH Instr(4:0)
            WIRE 1728 2000 2224 2000
            WIRE 2224 2000 2544 2000
            WIRE 2544 800 2544 2000
            WIRE 2544 800 2720 800
            BEGIN DISPLAY 2224 2000 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE DataMemory 3584 1760 R0
            BEGIN DISPLAY 144 24 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH ALUOut(15:0)
            WIRE 3152 800 4720 800
            WIRE 4720 800 4720 1104
            WIRE 4240 1104 4448 1104
            WIRE 4448 1104 4720 1104
            BEGIN DISPLAY 4448 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1632 2224 1728 2224
        BUSTAP 1632 2096 1728 2096
        BEGIN BRANCH Instr(8:4)
            WIRE 1728 2096 2656 2096
            WIRE 2656 1664 2656 2096
            WIRE 2656 1664 2896 1664
            WIRE 2896 1664 3584 1664
            BEGIN DISPLAY 2896 1664 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH N
            WIRE 608 32 1232 32
            WIRE 1232 32 3312 32
            WIRE 3312 32 3312 528
            WIRE 608 32 608 416
            WIRE 3152 528 3312 528
            BEGIN DISPLAY 1232 32 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RdDataBase(15:0)
            WIRE 2528 608 2608 608
            WIRE 2608 608 2720 608
            BEGIN DISPLAY 2608 608 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE ALUU 2720 832 R0
            BEGIN DISPLAY 160 40 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH OUTW0(15:0)
            WIRE 4016 1408 4048 1408
        END BRANCH
        IOMARKER 4048 1408 OUTW0(15:0) R0 28
        BEGIN BRANCH INW0(15:0)
            WIRE 3552 1536 3584 1536
        END BRANCH
        IOMARKER 3552 1536 INW0(15:0) R180 28
        BEGIN BRANCH INW1(15:0)
            WIRE 3552 1600 3584 1600
        END BRANCH
        IOMARKER 3552 1600 INW1(15:0) R180 28
        BEGIN BRANCH Flag_N
            WIRE 2400 2224 2432 2224
            WIRE 2432 2224 2592 2224
            BEGIN DISPLAY 2432 2224 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Flag_OV
            WIRE 2400 2288 2448 2288
            WIRE 2448 2288 2592 2288
            BEGIN DISPLAY 2448 2288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Flag_Z
            WIRE 2400 2352 2432 2352
            WIRE 2432 2352 2592 2352
            BEGIN DISPLAY 2432 2352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Flag_C
            WIRE 2400 2416 2432 2416
            WIRE 2432 2416 2592 2416
            BEGIN DISPLAY 2432 2416 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MEMWr
            WIRE 2400 2480 2448 2480
            WIRE 2448 2480 2592 2480
            BEGIN DISPLAY 2448 2480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MEM2Reg
            WIRE 2400 2544 2464 2544
            WIRE 2464 2544 2592 2544
            BEGIN DISPLAY 2464 2544 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 2400 2608 2448 2608
            WIRE 2448 2608 2592 2608
            BEGIN DISPLAY 2448 2608 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegBase
            WIRE 2400 2672 2448 2672
            WIRE 2448 2672 2592 2672
            BEGIN DISPLAY 2448 2672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 2400 2736 2448 2736
            WIRE 2448 2736 2592 2736
            BEGIN DISPLAY 2448 2736 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Branch
            WIRE 2400 2800 2432 2800
            WIRE 2432 2800 2592 2800
            BEGIN DISPLAY 2432 2800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALU_OP(2:0)
            WIRE 2400 2864 2512 2864
            WIRE 2512 2864 2592 2864
            BEGIN DISPLAY 2512 2864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 1760 1840 1872 1840
            WIRE 1872 1840 1936 1840
            BEGIN DISPLAY 1872 1840 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegBase
            WIRE 1728 1440 1840 1440
            WIRE 1840 1440 1952 1440
            BEGIN DISPLAY 1840 1440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 2560 288 2656 288
            WIRE 2656 288 2720 288
            BEGIN DISPLAY 2656 288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Flag_N
            WIRE 2560 352 2640 352
            WIRE 2640 352 2720 352
            BEGIN DISPLAY 2640 352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Flag_C
            WIRE 2560 416 2640 416
            WIRE 2640 416 2720 416
            BEGIN DISPLAY 2640 416 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Flag_Z
            WIRE 2560 480 2640 480
            WIRE 2640 480 2720 480
            BEGIN DISPLAY 2640 480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Flag_OV
            WIRE 2560 544 2656 544
            WIRE 2656 544 2720 544
            BEGIN DISPLAY 2656 544 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 1888 672 1984 672
            WIRE 1984 672 2080 672
            BEGIN DISPLAY 1984 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 1888 608 1984 608
            WIRE 1984 608 2080 608
            BEGIN DISPLAY 1984 608 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Branch
            WIRE 608 672 656 672
            WIRE 656 672 832 672
            BEGIN DISPLAY 656 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(23:19)
            WIRE 1728 2224 1792 2224
            WIRE 1792 2224 1984 2224
            BEGIN DISPLAY 1792 2224 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE CONTROL 1984 2896 R0
            BEGIN DISPLAY 176 40 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH ALU_OP(2:0)
            WIRE 2608 736 2656 736
            WIRE 2656 736 2720 736
            BEGIN DISPLAY 2656 736 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 3488 1408 3552 1408
            WIRE 3552 1408 3584 1408
            BEGIN DISPLAY 3552 1408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MEMWr
            WIRE 3488 1472 3552 1472
            WIRE 3552 1472 3584 1472
            BEGIN DISPLAY 3552 1472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MEM2Reg
            WIRE 4240 1040 4272 1040
            WIRE 4272 1040 4384 1040
            BEGIN DISPLAY 4272 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH DataOut(15:0)
            WIRE 4016 1728 4240 1728
            WIRE 4240 1728 4512 1728
            WIRE 4240 1152 4512 1152
            WIRE 4512 1152 4512 1728
            BEGIN DISPLAY 4240 1728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
