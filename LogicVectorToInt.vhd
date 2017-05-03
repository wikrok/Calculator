----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:18:43 05/03/2017 
-- Design Name: 
-- Module Name:    LogicVectorToInt - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LogicVectorToInt is
	port(vectorIn : IN STD_LOGIC_VECTOR(7 downto 0);
			clk : IN STD_LOGIC;
		  intOut : OUT INTEGER
		  );
end LogicVectorToInt;

architecture Behavioral of LogicVectorToInt is

begin

my_process : process (clk, vectorIn) is begin

	if rising_edge(clk) then
		intOut <= to_integer(unsigned(vectorIn));
	end if;

end process;

end Behavioral;

