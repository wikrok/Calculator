--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:46:48 05/04/2017
-- Design Name:   
-- Module Name:   C:/Users/PC157/Desktop/Phil Seb VHDL/Calculator-Not-Integers/TestDesignTop.vhd
-- Project Name:  Calculator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: lab2_design_top
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
 
ENTITY TestDesignTop IS
END TestDesignTop;
 
ARCHITECTURE behavior OF TestDesignTop IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT lab2_design_top
    PORT(
         reset_pin : IN  std_logic;
         clock_pin : IN  std_logic;
         serialDataIn_pin : IN  std_logic;
         serialDataOut_pin : OUT  std_logic	
        );
    END COMPONENT;
    
   --Inputs
   signal reset_pin : std_logic := '0';
   signal clock_pin : std_logic := '0';
	
   signal serialDataIn_pin : std_logic := '0';
   signal serialDataOut_pin : std_logic := '0';

   signal testDataIn : std_logic_vector(7 downto 0) := (others => '0');
	signal testDataOut : std_logic_vector(7 downto 0) := (others => '0');

	signal dataValid: std_logic;
	signal tx_ready : std_logic;
	signal transmitRequest : std_logic;
	
 	--Outputs
   signal clk : STD_LOGIC;
   -- Clock period definitions
   constant clock_pin_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: lab2_design_top PORT MAP (
          reset_pin => reset_pin,
          clock_pin => clock_pin,
          serialDataIn_pin => serialDataIn_pin,
          serialDataOut_pin => serialDataOut_pin
        );
		  
	test_ClockDivider: entity work.ClockDivider
		port map (
			clkIn => clock_pin,
			clkOut => clk
			);

   testGenUart : entity work.UART
		generic map (BAUD_RATE => 312500,
						 CLOCK_RATE => 10000000)
		port map(
		   reset => reset_pin,
			clock => clk,
			
			dataValid => dataValid,
			txIsReady => tx_ready,
			transmitRequest => transmitRequest,

			parallelDataIn => testDataIn,
			parallelDataOut => testDataOut,
			
			-- crossed inputs/outputs
			serialDataIn => serialDataOut_pin,
			serialDataOut => serialDataIn_pin
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
		reset_pin <= '1', '0' after 40 ns;
      wait for clock_pin_period*10;
		
		testDataIn <= X"50";
		transmitRequest <= '1';
		wait for 600 ns;
		transmitRequest <= '0';
		wait until tx_ready = '1';		

		testDataIn <= X"33";
		transmitRequest <= '1';
		wait for 600 ns;
		transmitRequest <= '0';
		wait until tx_ready = '1';		
		
		testDataIn <= X"32";
		transmitRequest <= '1';
		wait for 600 ns;
		transmitRequest <= '0';
		wait until tx_ready = '1';		
		
		testDataIn <= X"31";
		transmitRequest <= '1';
		wait for 600 ns;
		transmitRequest <= '0';
		wait until tx_ready = '1';		
	

		testDataIn <= X"25";
		transmitRequest <= '1';
		wait for 600 ns;
		transmitRequest <= '0';
		wait until tx_ready = '1';		
		
		
		testDataIn <= X"31";
		transmitRequest <= '1';
		wait for 600 ns;
		transmitRequest <= '0';
		wait until tx_ready = '1';		
		
		testDataIn <= X"32";
		transmitRequest <= '1';
		wait for 600 ns;
		transmitRequest <= '0';
		wait until tx_ready = '1';		

		testDataIn <= X"33";
		transmitRequest <= '1';
		wait for 600 ns;
		transmitRequest <= '0';
		wait until tx_ready = '1';		

		testDataIn <= X"34";
		transmitRequest <= '1';
		wait for 600 ns;
		transmitRequest <= '0';
		wait until tx_ready = '1';	
		
		
		testDataIn <= X"3D";
		transmitRequest <= '1';
		wait for 600 ns;
		transmitRequest <= '0';
		wait until tx_ready = '1';		
		
		wait; -- will wait forever

   end process;

END;
