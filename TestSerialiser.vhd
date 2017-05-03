--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:03:50 05/04/2017
-- Design Name:   
-- Module Name:   C:/Users/phil/Documents/GitHub/Calculator/TestSerialiser.vhd
-- Project Name:  Calculator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Serialiser
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
USE ieee.numeric_std.ALL;
 
ENTITY TestSerialiser IS
END TestSerialiser;
 
ARCHITECTURE behavior OF TestSerialiser IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Serialiser
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         signedInput : IN  SIGNED (1 to 29);
         enable : IN  std_logic;
         done : OUT  std_logic;
         parallelDataOut : OUT  std_logic_vector(7 downto 0);
         transmitRequest : OUT  std_logic;
         txIsReady : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal signedInput : SIGNED (1 to 29);
   signal enable : std_logic := '0';
   signal txIsReady : std_logic := '0';

 	--Outputs
   signal done : std_logic;
   signal parallelDataOut : std_logic_vector(7 downto 0);
   signal transmitRequest : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Serialiser PORT MAP (
          clk => clk,
          reset => reset,
          signedInput => signedInput,
          enable => enable,
          done => done,
          parallelDataOut => parallelDataOut,
          transmitRequest => transmitRequest,
          txIsReady => txIsReady
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
 uart_process : process
 begin 
	txIsReady <= '1';

--	if rising_edge(transmitRequest) then
	wait until transmitRequest = '1';
		txIsReady <= '0';
		wait for 60 ns;
--	end if;
	
end process;
		

   -- Stimulus process
   stim_proc: process
   begin	
      -- hold reset state for 100 ns.
		reset <= '1', '0' after 40 ns;
      wait for 100 ns;	

      wait for clk_period*10;
		
		signedInput <= b"0" & x"00001A4";
		enable <= '1', '0' after 10 ns;
		

      -- insert stimulus here 

      wait;
   end process;

END;
