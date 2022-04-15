VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL PC(5:0)
        SIGNAL Instr(23:0)
        SIGNAL N
        SIGNAL OV
        SIGNAL Z
        SIGNAL C
        SIGNAL Branch
        SIGNAL New_PC(5:0)
        SIGNAL PC(5:1)
        SIGNAL Instr(18:16)
        SIGNAL Clk
        SIGNAL Instr(18:15)
        SIGNAL Instr(14:11)
        SIGNAL RegBase
        SIGNAL RegDest
        SIGNAL Instr(10:7)
        SIGNAL XLXN_25(3:0)
        SIGNAL WrReg(3:0)
        SIGNAL Instr(3:0)
        SIGNAL RegWr
        SIGNAL Instr(23:19)
        SIGNAL Instr(6:5)
        SIGNAL ALUOP(2:0)
        SIGNAL N_EN
        SIGNAL OV_EN
        SIGNAL Z_EN
        SIGNAL C_EN
        SIGNAL Mem2Reg
        SIGNAL MemWr
        SIGNAL INW0(15:0)
        SIGNAL INW1(15:0)
        SIGNAL OUTW0(15:0)
        SIGNAL RdData2(15:0)
        SIGNAL Instr(8:4)
        SIGNAL WRData2(15:0)
        SIGNAL MemOut(15:0)
        SIGNAL ALUOut(15:0)
        SIGNAL Instr(4:0)
        SIGNAL RdData1(15:0)
        PORT Input Clk
        PORT Input INW0(15:0)
        PORT Input INW1(15:0)
        PORT Output OUTW0(15:0)
        BEGIN BLOCKDEF PC_Update
            TIMESTAMP 2022 1 9 14 54 41
            LINE N 64 240 0 240 
            LINE N 64 320 0 320 
            LINE N 64 400 0 400 
            LINE N 64 480 0 480 
            RECTANGLE N 0 548 64 572 
            LINE N 64 560 0 560 
            LINE N 0 -112 64 -112 
            RECTANGLE N 0 -124 64 -100 
            LINE N 384 -16 320 -16 
            RECTANGLE N 320 148 384 172 
            LINE N 384 160 320 160 
            LINE N 384 64 320 64 
            RECTANGLE N 320 52 384 76 
            RECTANGLE N 64 -136 320 592 
        END BLOCKDEF
        BEGIN BLOCKDEF ProgCnt
            TIMESTAMP 2022 1 9 14 54 52
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF File_Regs
            TIMESTAMP 2022 1 12 15 24 35
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
            RECTANGLE N 384 -44 448 -20 
            LINE N 384 -32 448 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF DataMem
            TIMESTAMP 2022 1 12 14 13 50
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
        BEGIN BLOCKDEF MUX2V16
            TIMESTAMP 2022 1 12 14 13 37
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF CTRL
            TIMESTAMP 2022 1 12 14 13 56
            RECTANGLE N 64 -704 368 0 
            RECTANGLE N 0 -684 64 -660 
            LINE N 64 -672 0 -672 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 368 -672 432 -672 
            LINE N 368 -608 432 -608 
            LINE N 368 -544 432 -544 
            LINE N 368 -480 432 -480 
            LINE N 368 -416 432 -416 
            LINE N 368 -352 432 -352 
            LINE N 368 -288 432 -288 
            LINE N 368 -224 432 -224 
            LINE N 368 -160 432 -160 
            LINE N 368 -96 432 -96 
            RECTANGLE N 368 -44 432 -20 
            LINE N 368 -32 432 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF ALU
            TIMESTAMP 2022 1 13 15 12 56
            RECTANGLE N 64 -576 320 0 
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
            LINE N 320 -544 384 -544 
            LINE N 320 -416 384 -416 
            LINE N 320 -288 384 -288 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V4
            TIMESTAMP 2022 1 12 16 35 37
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF ROM32x24
            TIMESTAMP 2022 1 13 14 23 21
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK U_New_PC PC_Update
            PIN Branch Branch
            PIN Offset(4:0) Instr(4:0)
            PIN PC(5:0) PC(5:0)
            PIN New_PC(5:0) New_PC(5:0)
            PIN N N
            PIN OV OV
            PIN Z Z
            PIN C C
            PIN Branch_Type(2:0) Instr(18:16)
        END BLOCK
        BEGIN BLOCK U_PC ProgCnt
            PIN Clk Clk
            PIN New_PC(5:0) New_PC(5:0)
            PIN PC(5:0) PC(5:0)
        END BLOCK
        BEGIN BLOCK U_Regs File_Regs
            PIN Clk Clk
            PIN WrEn RegWr
            PIN RdReg1(3:0) XLXN_25(3:0)
            PIN RdReg2(3:0) Instr(3:0)
            PIN WrReg(3:0) WrReg(3:0)
            PIN WRData(15:0) WRData2(15:0)
            PIN RdData1(15:0) RdData1(15:0)
            PIN RdData2(15:0) RdData2(15:0)
        END BLOCK
        BEGIN BLOCK U_DataMem DataMem
            PIN Clk Clk
            PIN Wr MemWr
            PIN INW0(15:0) INW0(15:0)
            PIN INW1(15:0) INW1(15:0)
            PIN Addr(4:0) Instr(8:4)
            PIN DataIn(15:0) RdData2(15:0)
            PIN OUTW0(15:0) OUTW0(15:0)
            PIN DataOut(15:0) MemOut(15:0)
        END BLOCK
        BEGIN BLOCK U_MUX2V16 MUX2V16
            PIN Sel Mem2Reg
            PIN I0(15:0) ALUOut(15:0)
            PIN I1(15:0) MemOut(15:0)
            PIN Y(15:0) WRData2(15:0)
        END BLOCK
        BEGIN BLOCK U_CTRL CTRL
            PIN OP(4:0) Instr(23:19)
            PIN IOR_Type(1:0) Instr(6:5)
            PIN MemWr MemWr
            PIN Mem2Reg Mem2Reg
            PIN RegWr RegWr
            PIN RegDest RegBase
            PIN RegBase RegDest
            PIN Branch Branch
            PIN C_EN C_EN
            PIN Z_EN Z_EN
            PIN OV_EN OV_EN
            PIN N_EN N_EN
            PIN ALUOP(2:0) ALUOP(2:0)
        END BLOCK
        BEGIN BLOCK U_ALU ALU
            PIN Z_EN Z_EN
            PIN OV_EN OV_EN
            PIN N_EN N_EN
            PIN C_EN C_EN
            PIN Clk Clk
            PIN RdData1(15:0) RdData1(15:0)
            PIN RdData2(15:0) RdData2(15:0)
            PIN ALUOP(2:0) ALUOP(2:0)
            PIN lit5(4:0) Instr(4:0)
            PIN Z Z
            PIN OV OV
            PIN N N
            PIN C C
            PIN Y(15:0) ALUOut(15:0)
        END BLOCK
        BEGIN BLOCK U_MUX2V4_Base MUX2V4
            PIN Sel RegBase
            PIN I0(3:0) Instr(14:11)
            PIN I1(3:0) Instr(18:15)
            PIN Y(3:0) XLXN_25(3:0)
        END BLOCK
        BEGIN BLOCK U_MUX2V4_Dest MUX2V4
            PIN Sel RegDest
            PIN I0(3:0) Instr(10:7)
            PIN I1(3:0) Instr(3:0)
            PIN Y(3:0) WrReg(3:0)
        END BLOCK
        BEGIN BLOCK XLXI_12 ROM32x24
            PIN Addr(4:0) PC(5:1)
            PIN Data(23:0) Instr(23:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 7040 5440
        BEGIN INSTANCE U_New_PC 512 384 R0
            BEGIN DISPLAY 112 636 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE U_PC 512 1344 R0
            BEGIN DISPLAY 128 40 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH PC(5:0)
            WIRE 896 544 912 544
            WIRE 912 544 912 800
            WIRE 912 800 912 928
            WIRE 912 928 912 1248
            WIRE 896 1248 912 1248
            BEGIN DISPLAY 912 928 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH N
            WIRE 272 624 368 624
            WIRE 368 624 512 624
            BEGIN DISPLAY 368 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OV
            WIRE 272 704 384 704
            WIRE 384 704 512 704
            BEGIN DISPLAY 384 704 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Z
            WIRE 272 784 368 784
            WIRE 368 784 512 784
            BEGIN DISPLAY 368 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH C
            WIRE 272 864 368 864
            WIRE 368 864 512 864
            BEGIN DISPLAY 368 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Branch
            WIRE 896 368 992 368
            WIRE 992 368 1120 368
            BEGIN DISPLAY 992 368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH New_PC(5:0)
            WIRE 128 272 512 272
            WIRE 128 272 128 656
            WIRE 128 656 128 1312
            WIRE 128 1312 512 1312
            BEGIN DISPLAY 128 656 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(23:0)
            WIRE 1568 800 1584 800
            WIRE 1584 800 1712 800
            WIRE 1712 800 1712 944
            WIRE 1712 944 1712 1056
            WIRE 1712 1056 1712 1232
            WIRE 1712 1232 1712 1408
            WIRE 1712 1408 1712 1504
            WIRE 1712 1504 1712 1712
            WIRE 1712 1712 1712 2336
            WIRE 1712 2336 1712 2416
            WIRE 1712 272 1712 448
            WIRE 1712 448 1712 640
            WIRE 1712 640 1712 720
            WIRE 1712 720 1712 800
            BEGIN DISPLAY 1712 1504 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 912 800 1008 800
        BEGIN BRANCH PC(5:1)
            WIRE 1008 800 1040 800
            WIRE 1040 800 1184 800
            BEGIN DISPLAY 1040 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1712 1056 1616 1056
        BEGIN BRANCH Instr(18:16)
            WIRE 272 944 512 944
            WIRE 272 944 272 1056
            WIRE 272 1056 496 1056
            WIRE 496 1056 1616 1056
            BEGIN DISPLAY 496 1056 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 480 1248 512 1248
        END BRANCH
        IOMARKER 480 1248 Clk R180 28
        BUSTAP 1712 448 1616 448
        BEGIN BRANCH Instr(4:0)
            WIRE 896 448 1200 448
            WIRE 1200 448 1616 448
            BEGIN DISPLAY 1200 448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1712 1232 1808 1232
        BUSTAP 1712 640 1808 640
        BUSTAP 1712 720 1808 720
        BEGIN BRANCH Instr(18:15)
            WIRE 1808 720 1936 720
            WIRE 1936 704 2128 704
            WIRE 1936 704 1936 720
            BEGIN DISPLAY 1936 720 ATTR Name
                ALIGNMENT SOFT-TCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(14:11)
            WIRE 1808 640 1888 640
            WIRE 1888 640 2128 640
            BEGIN DISPLAY 1888 640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegBase
            WIRE 1872 576 1920 576
            WIRE 1920 576 2128 576
            BEGIN DISPLAY 1920 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 1872 1104 1936 1104
            WIRE 1936 1104 2112 1104
            BEGIN DISPLAY 1936 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(10:7)
            WIRE 1808 1232 1984 1232
            WIRE 1984 1168 2112 1168
            WIRE 1984 1168 1984 1232
            BEGIN DISPLAY 1984 1232 ATTR Name
                ALIGNMENT SOFT-TCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_Regs 2688 1040 R0
            BEGIN DISPLAY 160 24 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH XLXN_25(3:0)
            WIRE 2512 576 2672 576
            WIRE 2672 576 2672 816
            WIRE 2672 816 2688 816
        END BRANCH
        BEGIN BRANCH WrReg(3:0)
            WIRE 2496 1104 2576 1104
            WIRE 2576 944 2688 944
            WIRE 2576 944 2576 1104
            BEGIN DISPLAY 2576 1104 ATTR Name
                ALIGNMENT SOFT-TCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1712 944 1808 944
        BEGIN BRANCH Instr(3:0)
            WIRE 1808 944 1936 944
            WIRE 1936 944 2016 944
            WIRE 2016 944 2016 1232
            WIRE 2016 1232 2112 1232
            WIRE 1936 880 1936 944
            WIRE 1936 880 2048 880
            WIRE 2048 880 2688 880
            BEGIN DISPLAY 2048 880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 2592 752 2640 752
            WIRE 2640 752 2688 752
            BEGIN DISPLAY 2640 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 2592 688 2640 688
            WIRE 2640 688 2688 688
            BEGIN DISPLAY 2640 688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 2592 688 Clk R180 28
        BEGIN INSTANCE U_DataMem 4560 800 R0
            BEGIN DISPLAY 128 24 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE U_MUX2V16 4560 1536 R0
            BEGIN DISPLAY 96 24 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE U_CTRL 2016 2384 R0
            BEGIN DISPLAY 160 24 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 1712 1712 1808 1712
        BEGIN BRANCH Instr(23:19)
            WIRE 1808 1712 1872 1712
            WIRE 1872 1712 2016 1712
            BEGIN DISPLAY 1872 1712 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1712 2336 1808 2336
        BEGIN BRANCH Instr(6:5)
            WIRE 1808 2336 1872 2336
            WIRE 1872 2336 1904 2336
            WIRE 1904 2336 1904 2352
            WIRE 1904 2352 2016 2352
            BEGIN DISPLAY 1872 2336 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOP(2:0)
            WIRE 2448 2352 2544 2352
            WIRE 2544 2352 2656 2352
            BEGIN DISPLAY 2544 2352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH N_EN
            WIRE 2448 2288 2528 2288
            WIRE 2528 2288 2656 2288
            BEGIN DISPLAY 2528 2288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OV_EN
            WIRE 2448 2224 2496 2224
            WIRE 2496 2224 2656 2224
            BEGIN DISPLAY 2496 2224 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Z_EN
            WIRE 2448 2160 2512 2160
            WIRE 2512 2160 2656 2160
            BEGIN DISPLAY 2512 2160 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH C_EN
            WIRE 2448 2096 2528 2096
            WIRE 2528 2096 2656 2096
            BEGIN DISPLAY 2528 2096 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Branch
            WIRE 2448 2032 2544 2032
            WIRE 2544 2032 2656 2032
            BEGIN DISPLAY 2544 2032 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 2448 1968 2528 1968
            WIRE 2528 1968 2656 1968
            BEGIN DISPLAY 2528 1968 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegBase
            WIRE 2448 1904 2528 1904
            WIRE 2528 1904 2656 1904
            BEGIN DISPLAY 2528 1904 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 2448 1840 2512 1840
            WIRE 2512 1840 2656 1840
            BEGIN DISPLAY 2512 1840 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Mem2Reg
            WIRE 2448 1776 2512 1776
            WIRE 2512 1776 2656 1776
            BEGIN DISPLAY 2512 1776 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemWr
            WIRE 2448 1712 2512 1712
            WIRE 2512 1712 2656 1712
            BEGIN DISPLAY 2512 1712 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 4368 448 4448 448
            WIRE 4448 448 4560 448
            BEGIN DISPLAY 4448 448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH INW0(15:0)
            WIRE 4528 576 4560 576
        END BRANCH
        IOMARKER 4528 576 INW0(15:0) R180 28
        BEGIN BRANCH INW1(15:0)
            WIRE 4528 640 4560 640
        END BRANCH
        IOMARKER 4528 640 INW1(15:0) R180 28
        BEGIN BRANCH OUTW0(15:0)
            WIRE 4992 448 5024 448
        END BRANCH
        IOMARKER 5024 448 OUTW0(15:0) R0 28
        BEGIN BRANCH MemWr
            WIRE 4368 512 4448 512
            WIRE 4448 512 4560 512
            BEGIN DISPLAY 4448 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Mem2Reg
            WIRE 4368 1376 4464 1376
            WIRE 4464 1376 4560 1376
            BEGIN DISPLAY 4464 1376 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RdData2(15:0)
            WIRE 4352 768 4432 768
            WIRE 4432 768 4560 768
            BEGIN DISPLAY 4432 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1712 1408 1808 1408
        BEGIN BRANCH Instr(8:4)
            WIRE 1808 1408 2080 1408
            WIRE 2080 1408 3488 1408
            WIRE 3488 704 4560 704
            WIRE 3488 704 3488 1408
            BEGIN DISPLAY 2080 1408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WRData2(15:0)
            WIRE 2672 1008 2688 1008
            WIRE 2672 1008 2672 1248
            WIRE 2672 1248 2672 1648
            WIRE 2672 1648 5024 1648
            WIRE 4944 1376 5024 1376
            WIRE 5024 1376 5024 1648
            BEGIN DISPLAY 2672 1248 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_ALU 3552 1216 R0
            BEGIN DISPLAY 144 24 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Clk
            WIRE 3392 928 3440 928
            WIRE 3440 928 3552 928
            BEGIN DISPLAY 3440 928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH C_EN
            WIRE 3392 864 3456 864
            WIRE 3456 864 3552 864
            BEGIN DISPLAY 3456 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH N_EN
            WIRE 3392 800 3424 800
            WIRE 3424 800 3552 800
            BEGIN DISPLAY 3424 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OV_EN
            WIRE 3392 736 3440 736
            WIRE 3440 736 3552 736
            BEGIN DISPLAY 3440 736 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Z_EN
            WIRE 3392 672 3488 672
            WIRE 3488 672 3552 672
            BEGIN DISPLAY 3488 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Z
            WIRE 3936 672 3984 672
            WIRE 3984 672 4080 672
            BEGIN DISPLAY 3984 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OV
            WIRE 3936 800 4000 800
            WIRE 4000 800 4080 800
            BEGIN DISPLAY 4000 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH N
            WIRE 3936 928 4000 928
            WIRE 4000 928 4080 928
            BEGIN DISPLAY 4000 928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH C
            WIRE 3936 1056 4000 1056
            WIRE 4000 1056 4080 1056
            BEGIN DISPLAY 4000 1056 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemOut(15:0)
            WIRE 4480 1072 4624 1072
            WIRE 4624 1072 5008 1072
            WIRE 4480 1072 4480 1504
            WIRE 4480 1504 4560 1504
            WIRE 4992 768 5008 768
            WIRE 5008 768 5008 1072
            BEGIN DISPLAY 4624 1072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOut(15:0)
            WIRE 3936 1184 4224 1184
            WIRE 4224 1184 4320 1184
            WIRE 4320 1184 4320 1504
            WIRE 4320 1504 4432 1504
            WIRE 4432 1440 4432 1504
            WIRE 4432 1440 4560 1440
            BEGIN DISPLAY 4224 1184 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(4:0)
            WIRE 3392 1184 3456 1184
            WIRE 3456 1184 3552 1184
            BEGIN DISPLAY 3456 1184 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOP(2:0)
            WIRE 3392 1120 3440 1120
            WIRE 3440 1120 3552 1120
            BEGIN DISPLAY 3440 1120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RdData1(15:0)
            WIRE 3136 688 3232 688
            WIRE 3232 688 3232 832
            WIRE 3232 832 3232 912
            WIRE 3232 912 3232 992
            WIRE 3232 992 3552 992
            BEGIN DISPLAY 3232 832 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RdData2(15:0)
            WIRE 3136 1008 3344 1008
            WIRE 3344 1008 3344 1056
            WIRE 3344 1056 3392 1056
            WIRE 3392 1056 3552 1056
            BEGIN DISPLAY 3392 1056 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_MUX2V4_Base 2128 736 R0
            BEGIN DISPLAY 64 24 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE U_MUX2V4_Dest 2112 1264 R0
            BEGIN DISPLAY 80 24 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_12 1184 832 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
