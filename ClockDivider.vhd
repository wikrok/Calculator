library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Takes the FPGA's clock input, divides it by 4 and outputs it for use as the system clock.

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

