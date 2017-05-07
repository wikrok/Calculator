----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:    18:01:46 05/01/2017
-- Design Name:
-- Module Name:    UART-tx-buffer - Behavioral
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

entity UART_tx_buffer is
	port(input : in STD_LOGIC_VECTOR (7 downto 0);
		  output : out STD_LOGIC_VECTOR (7 downto 0);
		  reset : in STD_LOGIC;
		  uartTxRequest : out STD_LOGIC;
		  write : in STD_LOGIC;
		  uartTxReady : in STD_LOGIC;
		  clock : in STD_LOGIC;
		  go : in STD_LOGIC
		  );
end UART_tx_buffer;

architecture Behavioral of UART_tx_buffer is
	type bufferType is array (0 to 63) of STD_LOGIC_VECTOR (7 downto 0);
	signal buff : bufferType := (others => (others => '0'));
	signal inputIndex : integer := 0;
	signal outputIndex : integer := 0;
	
	type STATETYPE is (Idle, WaitGo, WaitNotUartTxReady);
	signal State: STATETYPE;
	
begin

my_process :	process (clock, write, reset) begin
	if (reset = '1') then
		buff <= (others => (others => '0'));
		inputIndex <= 0;
	elsif rising_edge(clock) then
		if write = '1' then
			buff(inputIndex) <= input;
			inputIndex <= (inputIndex+1) mod 64;
		end if;
	end if;
end process;


my_process2 : 	process (reset, uartTxReady, inputIndex, outputIndex, clock) begin
    
	 
	 if (reset = '1') then
    	outputIndex <= 0;
		uartTxRequest <= '0';
		State <= Idle;
	 elsif rising_edge(clock) then
		 case State is
			when Idle =>
				if ((uartTxReady = '1') and (inputIndex /= outputIndex)) then
					uartTxRequest <= '1';
					output <= buff(outputIndex);
					outputIndex <= (outputIndex+1) mod 64;
					State <= WaitGo;
				else
					State <= Idle;
				end if;
			
			when WaitGo =>
				if go = '1' then
					uartTxRequest <= '0';
					State <= WaitNotGo;
				else
					State <= WaitGo;
				end if;
				
			when WaitNotUartTxReady =>
				if uartTxReady = '0' then
					State <= Idle;
				else
					State <= WaitNotUartTxReady;
				end if;

		end case;
	end if;
end process;

end Behavioral;
