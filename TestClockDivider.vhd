--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:03:00 05/05/2017
-- Design Name:   
-- Module Name:   C:/Users/PC158/Desktop/PhilSebVHDL/Calculator-bcb392ad62e4a309a38172eb49a839f8795a66db/TestClockDivider.vhd
-- Project Name:  Calculator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ClockDivider
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
 
ENTITY TestClockDivider IS
END TestClockDivider;
 
ARCHITECTURE behavior OF TestClockDivider IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ClockDivider
    PORT(
         clkIn : IN  std_logic;
         clkOut : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clkIn : std_logic := '0';

 	--Outputs
   signal clkOut : std_logic;

   -- Clock period definitions
   constant clkIn_period : time := 10 ns;
   constant clkOut_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ClockDivider PORT MAP (
          clkIn => clkIn,
          clkOut => clkOut
        );

   -- Clock process definitions
   clkIn_process :process
   begin
		clkIn <= '0';
		wait for clkIn_period/2;
		clkIn <= '1';
		wait for clkIn_period/2;
   end process;
 


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clkIn_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
