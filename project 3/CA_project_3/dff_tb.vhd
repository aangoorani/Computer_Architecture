--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:41:34 03/02/2022
-- Design Name:   
-- Module Name:   C:/Users/ALMAS/Desktop/temp/project3/dff_tb.vhd
-- Project Name:  project3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dff
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
 
ENTITY dff_tb IS
END dff_tb;
 
ARCHITECTURE behavior OF dff_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dff
    PORT(
         D : IN  std_logic;
         clock : IN  std_logic;
         reset : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal clock : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal Q : std_logic;

   -- Clock period definitions
   constant clock_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dff PORT MAP (
          D => D,
          clock => clock,
          reset => reset,
          Q => Q
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
--     wait for 100 ns;
--     wait for clock_period*10;
      -- insert stimulus here
		reset <= '0', '1' after 430ns;
		D <= '0', '1' after 160ns, '0' after 240ns, '1' after 320ns, '0' after 470ns, '1' after 480ns, '0' after 560ns, '1' after 640ns;

      wait;
   end process;

END;
