----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:56:03 03/02/2022 
-- Design Name: 
-- Module Name:    jkff - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity jkff is
    Port ( j : in  STD_LOGIC;
           k : in  STD_LOGIC;
           clock : in  STD_LOGIC;
			  reset : in  STD_LOGIC;
           q : out  STD_LOGIC;
			  qb : out STD_LOGIC);
end jkff;

architecture Behavioral of jkff is

begin
	PROCESS(CLOCK, reset)
	variable TMP: std_logic;
	begin
		if(reset = '1')then
			Q <= '0';
			QB <= '1';
		
		elsif(CLOCK='1' and CLOCK'EVENT) then
			
			if(J='0' and K='0')then
			TMP:=TMP;
			elsif(J='1' and K='1')then
			TMP:= not TMP;
			elsif(J='0' and K='1')then
			TMP:='0';
			else
			TMP:='1';
			end if;
			
			Q<=TMP;
			QB <=not TMP;
			
		end if;
	end PROCESS;

end Behavioral;

