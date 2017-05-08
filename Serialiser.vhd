library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Takes a signed integer as input, splits into single digits, converts to ASCII and sends out to the UART TX buffer.		

entity Serialiser is
	port (
					clk : IN STD_LOGIC;
					reset : IN STD_LOGIC;
					signedInput : IN SIGNED (1 to 30);
					enable : IN STD_LOGIC;
					done : OUT STD_LOGIC;
					parallelDataOut : OUT STD_LOGIC_VECTOR (7 downto 0); -- This and below go to UART object.
					transmitRequest : OUT STD_LOGIC
				);
					
					
end Serialiser;

architecture Behavioral of Serialiser is

    COMPONENT charStack
	 port(
		  input : in STD_LOGIC_VECTOR (7 downto 0);
		  output : out STD_LOGIC_VECTOR (7 downto 0);
		  stackDepth : out INTEGER;
		  push : in STD_LOGIC;
		  pop : in STD_LOGIC;
		  reset : in STD_LOGIC;
		  full : out STD_LOGIC;
		  clk : in STD_LOGIC
		  );
    END COMPONENT;

	type STATETYPE is (Idle, CheckNeg, Negate, ASCII, StoreDigit, RetrieveDigit, WaitRetrieve, TxDigit);
	signal State: STATETYPE;
	signal number : SIGNED (1 to 30);
	signal digit : STD_LOGIC_VECTOR (7 downto 0);
	
	signal stackInput : STD_LOGIC_VECTOR (7 downto 0);
	signal stackOutput : STD_LOGIC_VECTOR (7 downto 0);
	signal stackDepth : INTEGER;
	signal push : STD_LOGIC;
	signal pop : STD_LOGIC;
	signal full : STD_LOGIC;
	signal nonZero : STD_LOGIC := '0';

begin

   stack: charStack PORT MAP (
          input => stackInput,
          output => stackOutput,
          push => push,
			 pop => pop,
          reset => reset,
          full => full,
			 clk => clk,
			 stackDepth => stackDepth
        );

process (clk, reset, enable) is begin
	
	if reset = '1' then
		-- Reset the variables.
		State <= Idle;
		number <= X"0000000" & b"00";
		digit <= X"00";
		done <= '0';
		push <= '0';
		pop <= '0';
		stackInput <= X"00";
		nonZero <= '0';
		transmitRequest <= '0';
		
	elsif rising_edge(clk) then
		case State is
			when Idle =>
				-- Wait for an Enable signal and then latch the input.
				transmitRequest <= '0';
				if enable = '1' then
					-- Time to Serialise!
					number <= signedInput;
					State <= CheckNeg;
					done <= '0';
				else
					-- Loop back around until we get an Enable signal.
					State <= Idle;
				end if;
				
			when CheckNeg =>
				-- Check to see if the input is negative.
				if number < 0 then
					-- It's negative, send a '-' to UART.
					parallelDataOut <= X"2D";
					transmitRequest <= '1';
					State <= Negate;
				else
					-- Input is positive, go straight to the ASCII state.
					State <= ASCII;
				end if;
			
			when Negate =>
				-- We have a negative number and need to make it positive beforeit's given to the ASCII state.
				transmitRequest <= '0';
				number <= -number;
				State <= ASCII;
				
			when ASCII =>
				-- Splits the least significant digit off the input, converts to ASCII.
				push <= '0';
				if number /= X"0000000" & b"0" then -- There are still digits left to split.
					-- Splits digit and converts to ASCII.
					digit <= std_logic_vector(resize(((number mod 10) + X"30"), 8));
					nonZero <= '1';
					State <= StoreDigit;
				elsif nonZero = '0' then
					-- We've been given a zero and need to output it.
					digit <= std_logic_vector(resize(((number mod 10) + X"30"), 8));
					nonZero <= '1';
					State <= StoreDigit;
				else
					-- We've split off all the digits.
					State <= RetrieveDigit;
				end if;
				
			when StoreDigit =>
				-- Takes an ASCII digit and stores on a stack.
				
				-- Removes the least significant digit from the remaining input number.
				number <= resize((number / 10), 30);
				
				--Stores on the stack and loops back to ASCII.
				stackInput <= digit;
				push <= '1';
				pop <= '0';
				State <= ASCII;

			when RetrieveDigit =>
				-- Retrieves a digit from the top of the stack.
				transmitRequest <= '0';			
				push <= '0';
				pop <= '1'; 
				State <= WaitRetrieve;

			when WaitRetrieve =>
				-- Stops the stack from reading more than one number at a time.
				pop <= '0';
				State <= TxDigit;
			
			when TxDigit =>		
				-- Transmits the digit retrieved from the stack to the UART tx buffer.
				transmitRequest <= '1';
				parallelDataOut <= StackOutput;
				if stackDepth = 0 then 
					-- We've emptied the stack and the job is done.
					State <= Idle;
					done <= '1';
				else 
					-- There are still digits left so loop back to RetrieveDigit.
					State <= RetrieveDigit;
				end if;
							
			end case;
	end if;	
	
end process;	
end Behavioral;

