----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:12:01 04/07/2017 
-- Design Name: 
-- Module Name:    Intergenator - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Intergenator is
	port(uartDataIn : IN STD_LOGIC_VECTOR (7 downto 0);
		  uartDataValid : IN STD_LOGIC;
		  enable : IN STD_LOGIC;
		  reset : IN STD_LOGIC;
		  done : OUT STD_LOGIC;
		  output : OUT INTEGER
		  );		  
end Intergenator;

architecture Behavioral of Intergenator is
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
   signal pushpop : std_logic := '0';
	signal clk : std_logic := '0';
	signal stackInput : std_logic_vector (7 downto 0);

 	--Outputs
   signal stackOutput : std_logic_vector(7 downto 0);
   signal full : std_logic;
	signal stackDepth : integer;

	signal intToOutput : integer := 0;
	
	signal placeCounter : integer := 0;
	signal thingToCountTo : integer := 0;



begin



   stack: charStack PORT MAP (
          input => stackInput,
          output => stackOutput,
          pushpop => pushpop,
          reset => reset,
          full => full,
			 clk => clk,
			 stackDepth => stackDepth
        );
		  
		  

my_process : process is begin

	wait until (enable = '1' or reset = '1' or uartDataValid = '1'); 
	
	if (reset = '1') then
		--Reset things.
		pushpop <= '0';
		placeCounter <= 0;
		done <= '0';
		thingToCountTo <= 0;
		intToOutput <= 0;
	elsif (uartDataValid = '1') then
		stackInput <= std_logic_vector(unsigned(uartDataIn) - 48);
		pushpop <= '0';
		clk <= '1', '0' after 20 ns;
		intToOutput <= 0;
	elsif (enable = '1') then
		thingToCountTo <= stackDepth;
		pushpop <= '1';
		
		wait for 10 ns;
		for i in 0 to thingToCountTo - 1 loop
			clk <= '1' after 20 ns, '0' after 40 ns;
			wait for 40 ns;
			intToOutput <= intToOutput + (to_integer(unsigned(stackOutput)) * (10**i));
		 end loop;
		wait for 10 ns;		
		output <= intToOutput;
		done <= '1';
	end if;
		
end process;
end Behavioral;

