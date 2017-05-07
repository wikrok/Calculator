library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Implements a basic 8-element stack for 8-bit (ASCII character) data. 

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
		-- Reset variables, empty the stack.
		stackIndex <= 0;		
		stack <= (others => (others => '0'));
		full <= '0';
	elsif rising_edge(clk) then
		if (push = '1' and pop = '0' and stackIndex < 8) then -- We hvae a write signal and the stack is not full.
			-- Stores the input at the top of the stack.
			stack(stackIndex) <= input;
			
			if stackIndex + 1 = 8 then -- The stack is now full!
				full <= '1';
			end if;
			
			stackIndex <= stackIndex + 1;
 
		elsif (pop = '1' and push = '0' and stackIndex > 0) then -- We have a read signal and the stack is not empty.
			-- Outputs the item at the top of the stack.
			output <= stack(stackIndex - 1);
			stackIndex <= stackIndex - 1;
			if stackIndex < 8 then -- The stack is not full any more!
				full <= '0';
			end if;
		end if;
	end if;
end process;
end Behavioral;

