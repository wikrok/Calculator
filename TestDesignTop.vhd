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
         serialDataOut_pin : OUT  std_logic;
--         LED_hi_pin : OUT  std_logic;
--         LED_lo_pin : OUT  std_logic;
--         DIP_pins : IN  std_logic_vector(3 downto 0);
         parallelDataOut : IN  std_logic_vector(7 downto 0);
         dataValid : IN  std_logic;
			tx_ready : IN STD_LOGIC
			
        );
    END COMPONENT;
    

   --Inputs
   signal reset_pin : std_logic := '0';
   signal clock_pin : std_logic := '0';
   signal serialDataIn_pin : std_logic := '0';
   signal DIP_pins : std_logic_vector(3 downto 0) := (others => '0');
   signal parallelDataIn : std_logic_vector(7 downto 0) := (others => '0');
   signal txIsReady : std_logic := '0';
	signal tx_ready : std_logic := '1';

 	--Outputs
   signal serialDataOut_pin : std_logic;
   signal LED_hi_pin : std_logic;
   signal LED_lo_pin : std_logic;

   -- Clock period definitions
   constant clock_pin_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: lab2_design_top PORT MAP (
          reset_pin => reset_pin,
          clock_pin => clock_pin,
          serialDataIn_pin => serialDataIn_pin,
          serialDataOut_pin => serialDataOut_pin,
--          LED_hi_pin => LED_hi_pin,
--          LED_lo_pin => LED_lo_pin,
--          DIP_pins => DIP_pins,
          parallelDataOut => parallelDataIn,
          dataValid => txIsReady,
			 tx_ready => tx_ready
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
      wait for 100 ns;	

      wait for clock_pin_period*10;
		
		
	parallelDataIn <= X"31";
	wait for 10 ns;
	txIsReady <= '1', '0' after 10 ns;
	wait for 20 ns;
	
	parallelDataIn <= X"32";
	wait for 10 ns;
	txIsReady <= '1', '0' after 10 ns;
	wait for 20 ns;	

	parallelDataIn <= X"32";
	wait for 10 ns;
	txIsReady <= '1', '0' after 10 ns;
	wait for 20 ns;	
	
	parallelDataIn <= X"33";
	wait for 10 ns;
	txIsReady <= '1', '0' after 10 ns;
	wait for 20 ns;
	
		parallelDataIn <= X"34";
	wait for 10 ns;
	txIsReady <= '1', '0' after 10 ns;
	wait for 20 ns;

	
	parallelDataIn <= X"2A";
	wait for 10 ns;
	txIsReady <= '1', '0' after 10 ns;
	wait for 20 ns;
	

	
			parallelDataIn <= X"34";
	wait for 10 ns;
	txIsReady <= '1', '0' after 10 ns;
	wait for 20 ns;

		parallelDataIn <= X"33";
	wait for 10 ns;
	txIsReady <= '1', '0' after 10 ns;
	wait for 20 ns;	
	
		parallelDataIn <= X"32";
	wait for 10 ns;
	txIsReady <= '1', '0' after 10 ns;
	wait for 20 ns;
	
		parallelDataIn <= X"31";
	wait for 10 ns;
	txIsReady <= '1', '0' after 10 ns;
	wait for 20 ns;
	
			parallelDataIn <= X"3D";
	wait for 10 ns;
	txIsReady <= '1', '0' after 10 ns;
	wait for 20 ns;
        wait; -- will wait forever

      -- insert stimulus here 

      wait;
   end process;

END;
