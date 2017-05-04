--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:53:12 05/04/2017
-- Design Name:   
-- Module Name:   C:/Users/phil/Documents/GitHub/Calculator/TestStringSerialiser.vhd
-- Project Name:  Calculator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: stringSerialiser
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
 
ENTITY TestStringSerialiser IS
END TestStringSerialiser;
 
ARCHITECTURE behavior OF TestStringSerialiser IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT stringSerialiser
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         inputString : IN  string (1 to 20);
         enable : IN  std_logic;
         done : OUT  std_logic;
         parallelDataOut : OUT  std_logic_vector(7 downto 0);
         transmitRequest : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal inputString : string(1 to 20) := (others => '0');
   signal enable : std_logic := '0';

 	--Outputs
   signal done : std_logic;
   signal parallelDataOut : std_logic_vector(7 downto 0);
   signal transmitRequest : std_logic;


	signal tempString : string (1 to 20);
   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: stringSerialiser PORT MAP (
          clk => clk,
          reset => reset,
          inputString => inputString,
          enable => enable,
          done => done,
          parallelDataOut => parallelDataOut,
          transmitRequest => transmitRequest
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		reset <= '1', '0' after 40 ns;
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
		
		tempString <= "I am an error;      ";
		
		wait for 20 ns;
				inputString <= tempString;
		wait for 20 ns;

		
		enable <= '1', '0' after 10 ns;
		
		

      wait;
   end process;

END;
