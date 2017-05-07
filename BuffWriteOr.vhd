library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Implements a standard 3-input OR gate.

entity BuffWriteOr is
	PORT (
			a : IN STD_LOGIC;
			b : IN STD_LOGIC;
			c : IN STD_LOGIC;
			q : OUT STD_LOGIC
		);
end BuffWriteOr;

architecture Behavioral of BuffWriteOr is

begin
	q <= a or b or c;

end Behavioral;

