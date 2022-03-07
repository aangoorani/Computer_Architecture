--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:01:05 03/02/2022
-- Design Name:   
-- Module Name:   C:/Users/ALMAS/Desktop/temp/project3/jkff_tb2.vhd
-- Project Name:  project3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: jkff
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY jkff_tb2 IS
END jkff_tb2;
 
ARCHITECTURE behavior OF jkff_tb2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT jkff
    PORT(
         j : IN  std_logic;
         k : IN  std_logic;
         clock : IN  std_logic;
         reset : IN  std_logic;
         q : OUT  std_logic;
         qb : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal j : std_logic := '0';
   signal k : std_logic := '0';
   signal clock : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal q : std_logic;
   signal qb : std_logic;

   -- Clock period definitions
   constant clock_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: jkff PORT MAP (
          j => j,
          k => k,
          clock => clock,
          reset => reset,
          q => q,
          qb => qb
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for clock_period*10;

      -- insert stimulus here 
		reset <= '0', '1' after 730ns;
		j <= '1', '0' after 230ns, '1' after 430 ns,'0' after 670ns;
		k <= '0', '1' after 230ns, '1' after 430 ns,'0' after 670ns;

      wait;
   end process;

END;
