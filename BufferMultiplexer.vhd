----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:15:45 05/04/2017 
-- Design Name: 
-- Module Name:    BufferMultiplexer - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

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
