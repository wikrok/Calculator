--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:43:22 04/07/2017
-- Design Name:   
-- Module Name:   C:/Users/phil/Documents/GitHub/Calculator/StackTest.vhd
-- Project Name:  Calculator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: charStack
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
 
ENTITY StackTest IS
END StackTest;
 
ARCHITECTURE behavior OF StackTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT charStack
    PORT(
         input : IN  std_logic_vector(7 downto 0);
         output : OUT  std_logic_vector(7 downto 0);
         pushpop : IN  std_logic;
			stackDepth : OUT integer;
         reset : IN  std_logic;
         full : OUT  std_logic;
			clk : IN std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(7 downto 0) := (others => '0');
   signal pushpop : std_logic := '0';
   signal reset : std_logic := '0';
	signal clk : std_logic := '0';

 	--Outputs
   signal output : std_logic_vector(7 downto 0);
   signal full : std_logic;
	signal stackDepth : integer;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: charStack PORT MAP (
          input => input,
          output => output,
          pushpop => pushpop,
          reset => reset,
          full => full,
			 clk => clk,
			 stackDepth => stackDepth
        );
		  
		  
my_process : process is
	begin
		pushpop <= '0';
		clk <= '0';
		reset <= '0';
		
		reset <= '1', '0' after 20 ns;
		
		wait for 200 ns;
				
		input <= X"01";
		wait for 20 ns;
		pushpop <= '0';
		clk <= '1', '0' after 20 ns;
		
		wait for 200 ns;
		
		input <= X"02";
		wait for 20 ns;
		pushpop <= '0';
		clk <= '1', '0' after 20 ns;

		wait for 200 ns;
		
		input <= X"03";
		wait for 20 ns;
		pushpop <= '0';
		clk <= '1', '0' after 20 ns;

		wait for 200 ns;
		
		input <= X"04";
		wait for 20 ns;
		pushpop <= '0';
		clk <= '1', '0' after 20 ns;		
		
		wait for 200 ns;
		
		input <= X"05";
		wait for 20 ns;
		pushpop <= '0';
		clk <= '1', '0' after 20 ns;
		
		
		wait for 200 ns;
		
		pushpop <= '1';
		clk <= '1', '0' after 20 ns;
		
		wait for 200 ns;
		
		pushpop <= '1';
		clk <= '1', '0' after 20 ns;
	
			wait for 200 ns;
		
		pushpop <= '1';
		clk <= '1', '0' after 20 ns;
		
		wait for 200 ns;
		
		pushpop <= '1';
		clk <= '1', '0' after 20 ns;

	
		wait for 2000 ns;
 end process;
END;
