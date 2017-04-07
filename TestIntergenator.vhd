--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:03:07 04/07/2017
-- Design Name:   
-- Module Name:   C:/Users/phil/Documents/GitHub/Calculator/TestIntergenator.vhd
-- Project Name:  Calculator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Intergenator
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
 
ENTITY TestIntergenator IS
END TestIntergenator;
 
ARCHITECTURE behavior OF TestIntergenator IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Intergenator
    PORT(
         uartDataIn : IN  std_logic_vector(7 downto 0);
         uartDataValid : IN  std_logic;
         enable : IN  std_logic;
         reset : IN  std_logic;
         done : OUT  std_logic;
         output : OUT  integer
        );
    END COMPONENT;
    

   --Inputs
   signal uartDataIn : std_logic_vector(7 downto 0) := (others => '0');
   signal uartDataValid : std_logic := '0';
   signal enable : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal done : std_logic;
   signal output : integer;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Intergenator PORT MAP (
          uartDataIn => uartDataIn,
          uartDataValid => uartDataValid,
          enable => enable,
          reset => reset,
          done => done,
          output => output
        );


my_process : process is
	begin
	reset <= '1', '0' after 20 ns;
	
	uartDataIn <= X"31";
	wait for 20 ns;
	uartDataValid <= '1', '0' after 10 ns;
	
	wait for 40 ns;
	
	uartDataIn <= X"32";
	wait for 20 ns;
	uartDataValid <= '1', '0' after 10 ns;
	
	wait for 40 ns;
	
	uartDataIn <= X"33";
	wait for 20 ns;
	uartDataValid <='1', '0' after 10 ns;
	
	wait for 40 ns;
	
	enable <= '1', '0' after 20 ns;
	
	wait for 200 ns; 
	--wait until done = '1';
	

end process;

END;
