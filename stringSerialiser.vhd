library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Takes a 20-character string as input. Splits string up into a series of individual characters and passes them to the UART TX buffer.

entity stringSerialiser is
	PORT (
			clk : IN STD_LOGIC;
			reset : IN STD_LOGIC;
			inputString : IN string (1 to 20);
			enable: IN STD_LOGIC;
			done : OUT STD_LOGIC;
			parallelDataOut : OUT STD_LOGIC_VECTOR (7 downto 0);
			transmitRequest : OUT STD_LOGIC
			);
end stringSerialiser;

architecture Behavioral of stringSerialiser is
	type STATETYPE is (Idle, TxChar, TxWait);
	signal State: STATETYPE;
	signal str : string (1 to 20);
	signal count : integer;
	
begin

process (clk, reset, enable) is begin

	if reset = '1' then
		-- Reset things
		State <= Idle;
		count <= 1;
		done <= '0';
		transmitRequest <= '0';
	elsif rising_edge(clk) then
		
		case State is
			when Idle =>
				-- Waits for an enable signal.
				if enable = '1' then
					-- Then the input data is valid and needs to be serialised!
					State <= TxChar;
					str <= inputString;
					transmitRequest <= '0';
					done <= '0';
					count <= 1;
				else
					-- Loop back around until an enable signal is recieved.
					State <= Idle;
				end if;
				
			when TxChar =>
				-- Takes the character at the 'count' position in the string and sends it to the UART TX buffer.
				parallelDataOut <= std_logic_vector(to_unsigned(character'pos(str(count)), 8));
				transmitRequest <= '1';
				State <= TxWait;
			
			when TxWait =>
				-- Checks to see if it's the end of the string.
				transmitRequest <= '0';
				if str(count + 1) = '$' or count = 19 then -- Then the stop character ($) or the end of the 20 characters has been reached.
					-- StringSerialiser is done!
					done <= '1';
					State <= Idle;
					count <= 1;
				else -- We still have characters to serialise!
					-- Increment the position in the string, do it all over again.
					count <= count + 1;
					State <= TxChar;
				end if;			
		end case;
	end if;
end process;
	
end Behavioral;

