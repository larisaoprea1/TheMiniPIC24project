----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:19:15 04/09/2021 
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
    Port ( RdData1 : in  STD_LOGIC_VECTOR (15 downto 0);
           RdData2 : in  STD_LOGIC_VECTOR (15 downto 0);
           ALUOP : in  STD_LOGIC_VECTOR (2 downto 0);
			  lit5 : in STD_LOGIC_VECTOR (4 downto 0);
			  Z : out STD_LOGIC;
			  OV : out STD_LOGIC;
			  N : out STD_LOGIC;
			  C : out STD_LOGIC;
			  Z_EN : in STD_LOGIC;
			  OV_EN : in STD_LOGIC;
			  N_EN : in STD_LOGIC;
			  C_EN : in STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (15 downto 0);
			  Clk : in STD_LOGIC
			  
			 );
end ALU;

architecture Behavioral of ALU is

 
 signal result    : STD_LOGIC_VECTOR(16 downto 0);
 signal zero      : STD_LOGIC;
 signal negative  : STD_LOGIC;
 signal overflow  : STD_LOGIC;
 signal SE       : STD_LOGIC_VECTOR(15 downto 0);
 signal nullsignal : STD_LOGIC_VECTOR(15 downto 0):=x"0000";
 signal onesignal : STD_LOGIC_VECTOR(15 downto 0):=x"FFFF";
 signal LSR  : STD_LOGIC_VECTOR(16 downto 0);
 signal shift_val : STD_LOGIC_VECTOR(4 downto 0);
 signal carry : STD_LOGIC;
 
 
begin

SE <= onesignal(15 downto 8)&RdData2(7 downto 0) when RdData2(7)='1' else
		nullsignal(15 downto 8)&RdData2(7 downto 0) when RdData2(7)='0';
		
--- shift_val <= rddata2(4 downto 0)
---LSR(15 downto (16 - conv_integer(shift_val))) <= (others => '0');
---LSR((15 - conv_integer(shift_val)) downto 0) <= RdData1(15 downto conv_integer(shift_val));

shift_val <= RdData2(4 downto 0);
LSR <= (x"0000" & b"0" + RdData1(15 downto conv_integer(shift_val)));


with ALUOP select

       result <= (('0'&RdData1) + ('0'&RdData2)) when "000",                    -- ADD Wb, Ws, Wd
                 (('0'&RdData1) + ('0'&(not RdData2)) + 1) when "001",          -- SUB Wb, Ws, Wd 
                 (('0'&RdData1) and ('0'&RdData2)) when "010",                  -- AND Wb, Ws, Wd
                 (('0'&RdData1) or ('0'&RdData2)) when "011",                   -- IOR Wb, Ws, Wd
					   LSR when "100",                                               -- LSR Wb,Wns,Wnd                                   
					  (x"0000" & b"0") when  "101",                                  -- CLR Wd
					  ((b"0"&RdData1) or (x"000"&lit5)) when "110",                  -- IOR Wd,#lit5,Wd
				     '0'&SE when "111",                                             -- SE Ws, Wd
					  b"0" & x"0000" when others;
					  
    Z <= zero when rising_edge(Clk) and Z_En='1';
	 
	 carry <= result(16) when (ALUOP="000" or ALUOP="001" or ALUOP="101") else
	          (not negative) when ALUOP="101" else
				 '0';
    C <= '1' when (rising_edge(Clk) and C_EN = '1');
	 
    negative <= result(15);
	 N <= negative when rising_edge(Clk) and N_En='1';
    
    Y <= result(15 downto 0);              
	  
	 Overflow <= '1' when ((ALUOP = "000" and RdData1(15) = RdData2(15) and result(15) = (not RdData1(15))) or        -- ADD Wb ,Ws, Wd
                          (ALUOP = "001" and RdData1(15) = (not RdData2(15)) and result(15) = RdData2(15))) else   -- SUB Wb, Ws, Wd    
                           '0';
									
    OV <= Overflow when (rising_edge(Clk) and OV_EN = '1');


end Behavioral;

