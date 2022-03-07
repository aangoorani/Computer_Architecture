----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:27:48 03/02/2022 
-- Design Name: 
-- Module Name:    tff - Behavioral 
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

entity tff is
    Port ( t : in  STD_LOGIC;
           clock : in  STD_LOGIC;
			  reset : in  STD_LOGIC;
           q : out  STD_LOGIC;
           qb : out  STD_LOGIC);
end tff;

architecture Behavioral of tff is
	
begin
	
	process(clock)
	variable temp : std_logic;
	begin
	
		if(reset = '1')then
			Q <= '0';
			QB <= '1';
			temp := '0';
		
		elsif(clock='1' and clock'event)then
			if(T = '1')then
				temp := not temp;
			elsif(T = '0')then
				temp := temp;
			end if;
			
			Q <= temp;
			QB <= not temp;
		end if;
			
	end process;
end Behavioral;

