--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:23:51 05/03/2017
-- Design Name:   
-- Module Name:   C:/Users/phil/Documents/GitHub/Calculator/TestVecotrIntShizzle.vhd
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
USE IEEE.numeric_std.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TestVecotrIntShizzle IS
END TestVecotrIntShizzle;
 
ARCHITECTURE behavior OF TestVecotrIntShizzle IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LogicVectorToInt
    PORT(
         vectorIn : IN  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
         intOut : OUT  INTEGER
        );
    END COMPONENT;
    

   --Inputs
   signal vectorIn : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';
	signal temp : integer ;
	signal strTemp : string (1 to 10);

 	--Outputs
   signal intOut : INTEGER;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LogicVectorToInt PORT MAP (
          vectorIn => vectorIn,
          clk => clk,
          intOut => intOut
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
      wait for 100 ns;	

      wait for clk_period*10;


		vectorIn <= X"07";
		
		temp <= 3;
						-- strResult <= integer'IMAGE(result);

		strTemp <= integer'IMAGE(temp);


      wait;
   end process;

END;
