----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:25:09 03/02/2022 
-- Design Name: 
-- Module Name:    dff - Behavioral 
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

entity dff is
    Port ( D : in  STD_LOGIC;
           clock : in  STD_LOGIC;
			  reset : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end dff;

architecture Behavioral of dff is

begin
	process(clock, reset)
	begin
		if(reset = '1')then
			Q <= '0';
		elsif(clock = '1' and clock'event)then
			Q <= D;
		end if;
	end process;
end Behavioral;

