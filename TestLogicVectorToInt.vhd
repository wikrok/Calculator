--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:21:48 05/03/2017
-- Design Name:   
-- Module Name:   C:/Users/phil/Documents/GitHub/Calculator/TestLogicVectorToInt.vhd
-- Project Name:  Calculator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: LogicVectorToInt
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
 
ENTITY TestLogicVectorToInt IS
END TestLogicVectorToInt;
 
ARCHITECTURE behavior OF TestLogicVectorToInt IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LogicVectorToInt
    PORT(
         vectorIn : IN  std_logic_vector(7 downto 0);
         intOut : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal vectorIn : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal intOut : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LogicVectorToInt PORT MAP (
          vectorIn => vectorIn,
          intOut => intOut
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
