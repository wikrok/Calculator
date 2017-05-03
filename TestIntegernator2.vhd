--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:28:30 05/03/1017
-- Design Name:   
-- Module Name:   C:/Users/phil/Documents/GitHub/Calculator/TestIntegernator2.vhd
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
 
ENTITY TestIntegernator2 IS
END TestIntegernator2;
 
ARCHITECTURE behavior OF TestIntegernator2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Intergenator
    PORT(
         clk : IN  std_logic;
         stackIn : IN  std_logic_vector(7 downto 0);
         stackPop : OUT  std_logic;
         stackDepth : IN  INTEGER;
         enable : IN  std_logic;
         reset : IN  std_logic;
         neg : IN  std_logic;
         done : OUT  std_logic;
         output : OUT  INTEGER
        );
    END COMPONENT;
	 
	 COMPONENT charStack
	 port(
		  input : in STD_LOGIC_VECTOR (7 downto 0);
		  output : out STD_LOGIC_VECTOR (7 downto 0);
		  stackDepth : out INTEGER;
		  push : in STD_LOGIC;
		  pop : in STD_LOGIC;
		  reset : in STD_LOGIC;
		  full : out STD_LOGIC;
		  clk : in STD_LOGIC
		  );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   --signal stackIn : std_logic_vector(7 downto 0);
   signal stackDepth : INTEGER := 0;
   signal enable : std_logic := '0';
   signal reset : std_logic := '0';
   signal neg : std_logic := '0';

 	--Outputs
   signal stackPop : std_logic;
   signal done : std_logic;
   signal stackOutput : std_logic_vector (7 downto 0);
	
	   --Inputs
   signal input : std_logic_vector(7 downto 0) := (others => '0');
   signal push : std_logic := '0';
	signal pop : std_logic := '0';
--   signal reset : std_logic := '0';
--	signal clk : std_logic := '0';

 	--Outputs
   signal intOutput : INTEGER;
   signal full : std_logic;
--	signal stackDepth : integer;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Intergenator PORT MAP (
          clk => clk,
          stackIn => stackOutput,
          stackPop => pop,
          stackDepth => stackDepth,
          enable => enable,
          reset => reset,
          neg => neg,
          done => done,
          output => intOutput
        );
		  
	  stack: charStack PORT MAP (
          input => input,
          output => stackOutput,
          push => push,
			 pop => pop,
          reset => reset,
          full => full,
			 clk => clk,
			 stackDepth => stackDepth
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

		reset <= '1', '0' after 40 ns;

		push <= '0';
	
		wait for 40 ns;
		
		input <= X"01";
		wait for 10 ns;
		push <= '1', '0' after 10 ns;
		wait for 10 ns;
		
		input <= X"02";
		wait for 10 ns;
		push <= '1', '0' after 10 ns;
		wait for 10 ns;


		input <= X"03";
		wait for 10 ns;
		push <= '1', '0' after 10 ns;
		wait for 10 ns;
		
		input <= X"04";
		wait for 10 ns;
		push <= '1', '0' after 10 ns;
		wait for 10 ns;
		
		enable <= '1', '0' after 10 ns;
		wait for 100 ns;
		
		


      wait;
   end process;

END;
