----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:01:09 04/07/2017 
-- Design Name: 
-- Module Name:    Stack - Behavioral 
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

entity charStack is
	port(input : in STD_LOGIC_VECTOR (7 downto 0);
		  output : out STD_LOGIC_VECTOR (7 downto 0);
		  stackDepth : out INTEGER;
		  push : in STD_LOGIC;
		  pop : in STD_LOGIC;
		  reset : in STD_LOGIC;
		  full : out STD_LOGIC;
		  clk : in STD_LOGIC
		  );
end charStack;

architecture Behavioral of charStack is
	type stackType is array (0 to 8) of STD_LOGIC_VECTOR (7 downto 0);
	signal stack : stackType := (others => (others => '0'));
	
	signal stackIndex : integer := 0;

begin

stackDepth <= stackIndex;

process (clk, reset, push, pop) begin
	if reset = '1' then
		stackIndex <= 0;		
		stack <= (others => (others => '0'));
		full <= '0';
	elsif rising_edge(clk) then
		if (push = '1' and pop = '0' and stackIndex < 4) then
			stack(stackIndex) <= input;
			
			if stackIndex + 1 = 8 then
				full <= '1';
			end if;
			
			stackIndex <= stackIndex + 1;
 
		elsif (pop = '1' and push = '0' and stackIndex > 0) then
			output <= stack(stackIndex - 1);
			stackIndex <= stackIndex - 1;
			if stackIndex < 8 then
				full <= '0';
			end if;
		end if;
	end if;
end process;
end Behavioral;

