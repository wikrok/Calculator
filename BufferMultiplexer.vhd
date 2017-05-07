library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Implements a basic 3-input, 1-output multiplexer for 8-bit STD_LOGIC_VECTOR data.

entity BufferMultiplexer is
	port (
			inA : IN STD_LOGIC_VECTOR (7 downto 0);
			inB : IN STD_LOGIC_VECTOR (7 downto 0);
			inC : IN STD_LOGIC_VECTOR (7 downto 0);
			output : OUT STD_LOGIC_VECTOR (7 downto 0);
			sel : IN STD_LOGIC_VECTOR (1 downto 0)
			);
end BufferMultiplexer;

architecture Behavioral of BufferMultiplexer is

begin

process (sel, inA, inB, inC) is begin
	if sel = b"00" then
		output <= inA;
	elsif sel = b"01" then
		output <= inB;
	elsif sel = b"10" then
		output <= inC;
	else 
		output <= inA;
	end if;
	
end process;
end Behavioral;
