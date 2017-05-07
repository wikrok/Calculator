----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:39:38 05/05/2017 
-- Design Name: 
-- Module Name:    ClockDivider - Behavioral 
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

entity ClockDivider is
	PORT (
			clkIn : IN STD_LOGIC;			
			clkOut : OUT STD_LOGIC
			);
end ClockDivider;

architecture Behavioral of ClockDivider is

	signal counter : STD_LOGIC := '0';
	signal internalClk : STD_LOGIC := '0';

begin

clkOut <= internalClk;

process (clkIn) is begin
	
	if rising_edge(clkIn) then
		if counter = '1' then
			internalClk <= not internalClk;
			counter <= '0';
		else
			counter <= '1';
		end if;
	end if;

end process;			
end Behavioral;

