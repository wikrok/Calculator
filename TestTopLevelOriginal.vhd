--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:33:38 05/08/2017
-- Design Name:   
-- Module Name:   C:/Users/seb/Documents/GitHub/Calculator/TestTopLevelOriginal.vhd
-- Project Name:  Calculator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: lab2_design_top_original
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
 
ENTITY TestTopLevelOriginal IS
END TestTopLevelOriginal;
 
ARCHITECTURE behavior OF TestTopLevelOriginal IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT lab2_design_top_original
    PORT(
         reset_pin : IN  std_logic;
         clock_pin : IN  std_logic;
         serialDataIn_pin : IN  std_logic;
         serialDataOut_pin : OUT  std_logic;
         LED_hi_pin : OUT  std_logic;
         LED_lo_pin : OUT  std_logic;
         DIP_pins : IN  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal reset_pin : std_logic := '0';
   signal clock_pin : std_logic := '0';
   signal serialDataIn_pin : std_logic := '0';
   signal DIP_pins : std_logic_vector(3 downto 0) := (others => '0');
	
	signal dataValid : std_logic := '0';
	signal transmitRequest : std_logic := '0';
	signal testDataIn : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal serialDataOut_pin : std_logic;
   signal LED_hi_pin : std_logic;
   signal LED_lo_pin : std_logic;
	
	signal txIsReady : std_logic := '0';
	signal testDataOut : std_logic_vector(7 downto 0) := (others => '0');

   -- Clock period definitions
   constant clock_pin_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   testGenUart : entity work.UART
		generic map (BAUD_RATE => 19200,
						 CLOCK_RATE => 40000000)
		port map(
		   reset => reset_pin,
			clock => clock_pin,
			
			dataValid => dataValid,
			txIsReady => txIsReady,
			transmitRequest => transmitRequest,

			parallelDataIn => testDataIn,
			parallelDataOut => testDataOut,
			
			-- crossed inputs/outputs
			serialDataIn => serialDataOut_pin,
			serialDataOut => serialDataIn_pin
		);
	
	uut: lab2_design_top_original PORT MAP (
		 reset_pin => reset_pin,
		 clock_pin => clock_pin,
		 serialDataIn_pin => serialDataIn_pin,
		 serialDataOut_pin => serialDataOut_pin,
		 LED_hi_pin => LED_hi_pin,
		 LED_lo_pin => LED_lo_pin,
		 DIP_pins => DIP_pins
	  );


   -- Clock process definitions
   clock_pin_process :process
   begin
		clock_pin <= '0';
		wait for clock_pin_period/2;
		clock_pin <= '1';
		wait for clock_pin_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_pin_period*10;

		testDataIn <= X"41";
		transmitRequest <= '1';
		wait for 600 ns;
		transmitRequest <= '0';
		wait until txIsReady = '1';
		
		testDataIn <= X"61";
		transmitRequest <= '1';
		wait for 600 ns;
		transmitRequest <= '0';
		wait until txIsReady = '1';
		
		testDataIn <= X"31";
		transmitRequest <= '1';
		wait for 600 ns;
		transmitRequest <= '0';
		wait until txIsReady = '1';
		
		testDataIn <= X"23";
		transmitRequest <= '1';
		wait for 600 ns;
		transmitRequest <= '0';
		wait until txIsReady = '1';

      wait;
   end process;

END;
