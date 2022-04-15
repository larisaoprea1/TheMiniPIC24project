----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:28:00 03/27/2021 
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
    Port ( N               :in STD_LOGIC;
	       OV               :in STD_LOGIC;
	        Z               :in STD_LOGIC;
	        C               :in STD_LOGIC;
			  Offset          : in  STD_LOGIC_VECTOR (4 downto 0);
			  Branch_Type	   : in  STD_LOGIC_VECTOR (2 downto 0);
			  Branch          : in  STD_LOGIC;
	        PC              : in  STD_LOGIC_VECTOR (5 downto 0);
           New_PC          : out  STD_LOGIC_VECTOR (5 downto 0)
		    );
end PC_Update;

architecture Behavioral of PC_Update is
signal  PC_temp : std_logic_vector(5 downto 0);
signal  depl : std_logic_vector(5 downto 0);
begin
PC_temp <= PC+6;
depl <= Offset&"0";
    
    New_PC <= (PC_temp + depl )when (Branch = '1' and ((Branch_Type= b"011" and N='1')
	                                                or (Branch_Type= b"000"  and OV='1')       
                                                   or (Branch_Type= b"010"  and Z='1')
																	or (Branch_Type= b"001"  and C='1')
																	or (Branch_Type= b"111" ))) else
																	PC_temp;

end Behavioral;

