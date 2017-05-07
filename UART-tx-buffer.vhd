library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Takes a byte as input and places it in 64-bit circular buffer. Sends any bytes in the buffer to the UART transmitter, whilst complying with
-- the UART transmitter's timing requirements.

entity UART_tx_buffer is
	port(input : in STD_LOGIC_VECTOR (7 downto 0);
		  output : out STD_LOGIC_VECTOR (7 downto 0);
		  reset : in STD_LOGIC;
		  uartTxRequest : out STD_LOGIC;
		  write : in STD_LOGIC;
		  uartTxReady : in STD_LOGIC;
		  clock : in STD_LOGIC
		  );
end UART_tx_buffer;

architecture Behavioral of UART_tx_buffer is
	type bufferType is array (0 to 80) of STD_LOGIC_VECTOR (7 downto 0);
	signal buff : bufferType := (others => (others => '0'));
	signal inputIndex : integer := 0;
	signal outputIndex : integer := 0;
	
	type STATETYPE is (Idle, WaitUartTxRequest, WaitNotUartTxReady);
	signal State: STATETYPE;
	
begin

my_process :	process (clock, write, reset) begin
-- Waits for a write signal, then puts the input data into the end of the buffer.
	if (reset = '1') then
		-- Empty the buffer!
		buff <= (others => (others => '0'));
		inputIndex <= 0;
	elsif rising_edge(clock) then
		if write = '1' then
			-- Write flag, data on input is valid. Store in current end of buffer.
			buff(inputIndex) <= input;
			inputIndex <= (inputIndex+1) mod 80;
		end if;
	end if;
end process;


my_process2 : 	process (reset, uartTxReady, inputIndex, outputIndex, clock) begin
    
	 
	 if (reset = '1') then
		-- Reset the variables.
    	outputIndex <= 0;
		uartTxRequest <= '0';
		State <= Idle;
	 elsif rising_edge(clock) then
		 case State is
			when Idle =>
				if ((uartTxReady = '1') and (inputIndex /= outputIndex)) then -- The UART TX is ready for input and there is data in the buffer.
					-- Take the byte at the front of the buffer and send to the UART TX.
					uartTxRequest <= '1';
					output <= buff(outputIndex);
					outputIndex <= (outputIndex+1) mod 80;
					State <= WaitUartTxRequest;
				else
					-- Loop back around until there is both data in the buffer and the UART TX is ready.
					State <= Idle;
				end if;
			
			when WaitUartTxRequest =>
				-- Create a uartTxRequest pulse of one clock
				uartTxRequest <= '0';
				State <= WaitNotUartTxReady;
				
			when WaitNotUartTxReady =>
				-- Waits for uartTxReady to go low to avoid sending the UART TX multiple characters per uartTxReady pulse.
				if uartTxReady = '0' then
					State <= Idle;
				else
					State <= WaitNotUartTxReady;
				end if;

		end case;
	end if;
end process;

end Behavioral;
