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
	port(clk : IN STD_LOGIC;
		  stackIn : IN STD_LOGIC_VECTOR (7 downto 0);
		  stackPop : OUT STD_LOGIC;
		  stackDepth : IN INTEGER;
--		  DataValid : IN STD_LOGIC;
		  enable : IN STD_LOGIC;
		  reset : IN STD_LOGIC;
		  neg : IN STD_LOGIC;
		  done : OUT STD_LOGIC;
		  output : OUT INTEGER
		  );		  
end Intergenator;

architecture Behavioral of Intergenator is
	type STATETYPE is (Idle, Pop, Calculate, Increment, Result);

	signal intToOutput : integer := 0;
	signal placeCounter : integer := 0;
	
	signal temp : signed (15 downto 0);
	
	signal State: STATETYPE;
	

begin		  

my_process : process (reset, clk, enable)  is begin
	
	if reset = '1' then
		State <= Idle;
		Done <= '0';
		stackPop <= '0';
		output <= 0;
		placeCounter <= 0;
		temp <= X"0000";
		--DEBUG REMOVE ME
		intToOutput <= 42;
	elsif rising_edge(clk) then
		case State is
			when Idle =>
				if enable = '1' then
					State <= Pop;
					intToOutput <= 0;
					
				else
					State <= Idle;
				end if;
				
			when Pop =>
				stackPop <= '1';
				State <= Calculate;
			
			when Calculate =>
				if stackDepth /= 0 then
					--intToOutput <= to_integer(unsigned(stackIn));
					--temp <= temp + (signed(stackIn) * signed((10**placeCounter)));
					-- intToOutput <= 43;
					intToOutput <= (intToOutput * 10) + (to_integer(unsigned(stackIn)));
					stackPop <= '0';
					State <= Increment;
				else 
					intToOutput <= (intToOutput * 10) + (to_integer(unsigned(stackIn)));
					--temp <= temp + (signed(stackIn) * (10**placeCounter));
					--intToOutput <= intToOutput + (to_integer(unsigned(stackIn)) * (10**placeCounter));
					stackPop <= '0';
					State <= Result;
				end if;
			
			when Increment =>
				placeCounter <= placeCounter + 1;
				State <= Pop;
				
			when Result =>
				State <= Idle;
				
				if neg = '0' then
					output <= intToOutput;
				else
					output <= intToOutput * (-1);
				end if;
				done <= '1';
				
				placeCounter <= 0;
				stackPop <= '0';
		end case;
	end if;
end process;

end Behavioral;

	
	
	
	
	
	
-- LEGACY WRITING TO THE STACK CODE	
	
	--elsif rising_edge(clk) then
--		if DataValid = '1' then
--			stackInput <= std_logic_vector(unsigned(DataIn) - 48);
--			push <= '1';
--			pop <= '0';
--			intToOutput <= 0;

--end process;
--end Behavioral;

