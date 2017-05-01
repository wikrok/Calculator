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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity UART_tx_buffer is
	port(input : in STD_LOGIC_VECTOR (7 downto 0);
		  output : out STD_LOGIC_VECTOR (7 downto 0); -- This and uartTxRequest and uartTxReady should go to a uart trasnmitter instantiated here.
		  reset : in STD_LOGIC;
		  uartTxRequest : out STD_LOGIC;
		  writeClk : in STD_LOGIC;
		  uartTxReady : in STD_LOGIC
		  );
end UART_tx_buffer;

architecture Behavioral of UART_tx_buffer is
	type bufferType is array (0 to 63) of STD_LOGIC_VECTOR (7 downto 0);
	signal buff : bufferType := (others => (others => '0'));
	
	signal inputIndex : integer := 0;
	signal outputIndex : integer := 0;
	signal txReady : STD_LOGIC := '1';
	

begin

my_process :	process (writeClk, reset) begin
		if rising_edge(reset) then
			buff <= (others => (others => '0'));
			inputIndex <= 0;
		elsif rising_edge(writeClk) then
			buff(inputIndex) <= input;
		
			if inputIndex = 63 then
				inputIndex <= 0;
			else 			
				inputIndex <=  inputIndex + 1;
			end if;
		end if;
	end process;

my_process2 : 	process (reset, uartTxReady) begin
--	wait until (reset = '1' or uartTxReady = '1');
		if (reset = '1') then
			outputIndex <= 0;
			output <= X"00";
			txReady <= '1';
		elsif ((uartTxReady = '1') and (txReady = '1') and (inputIndex /= outputIndex)) then
			-- write outputIndex to UART.
			output <= buff(outputIndex);
			uartTxRequest <= '1';
			txReady <= '0';
			
			if outputIndex = 63 then
				outputIndex <= 0;
			else
				outputIndex <= outputIndex + 1;
			end if;
		elsif falling_edge(uartTxReady) then
			uartTxRequest <= '0';
			txReady <= '1';
			
		end if;
	end process;			
end Behavioral;

