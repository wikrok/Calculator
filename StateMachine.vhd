library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;

-- Implements the main state machine controlling the operation of the calculator.

entity StateMachine is
	generic (TPD : TIME := 1 ns);
	port(clk : in STD_LOGIC;
		  extReset : in STD_LOGIC;
		  reset : out STD_LOGIC;
		  inputChar : in STD_LOGIC_VECTOR (7 downto 0);
		  uartValid : in STD_LOGIC;
		  outputChar : out STD_LOGIC_VECTOR (7 downto 0);
		  bufferTxRequest : out STD_LOGIC;
		  signedOutput : out SIGNED (1 to 30);
		  startSerialiser: out STD_LOGIC;
		  serialiserDone: in STD_LOGIC;
		  errorOutput : out STRING (1 to 22);
		  startStringSerialiser : out STD_LOGIC;
		  stringSerialiserDone: in STD_LOGIC;
		  muxSel: out STD_LOGIC_VECTOR(1 downto 0)
		  );
end StateMachine;

architecture Behavioral of StateMachine is
	type STATETYPE is (Rst, SendNL, NegDigA, DigA, DigOp, NegDigB, DigB, DigEq, Negate, CalcResult, SendResult, WaitResult, Error, WaitError);
	type OPERATOR is (Plus, Minus, Divide, Multiply, Modulus);
	signal State: STATETYPE := Rst;
	signal NegA : STD_LOGIC := '0';
	signal NegB : STD_LOGIC := '0';
	signal op : OPERATOR;
	signal strError : STRING (1 to 20);
	signal numA : SIGNED (1 to 17);
	signal numB : SIGNED (1 to 17);
	signal result : SIGNED (1 to 30);
	signal inputCount	: UNSIGNED (1 to 3);
	
	-- Debug
	signal otherRst : STD_LOGIC := '0';

begin

process (CLK, extReset)

begin

	if extReset = '1' then 
	-- Triggers a system-wide reset if the reset button has been pressed.
		State <= Rst;
		reset <= '1';
		
	elsif rising_edge(clk) then
		case State is
			when Rst =>
			-- Reset variables, send internal reset signal out to other components.
				reset <= '0';
				State <= SendNL;
				muxSel <= b"00";
				numA <= b"00000000000000000";
				numB <= b"00000000000000000";
				result <= X"0000000" & b"00";
				negA <= '0';
				negB <= '0';
				inputCount <= b"000";
				
				-- Write out a newline to the uart.
				if otherRst = '1' then
					-- Debug mode, sends '!' instead of newline.
					outputChar <= X"21";
					otherRst <= '0';
				else
					-- Send a newline.
					outputChar <= X"0A";
				end if;
				
			when SendNL =>
				-- Triggers the sending of the newline.
				bufferTxRequest <= '1';
				State <= NegDigA;
		
			when NegDigA =>
				if uartValid = '1' then 
					-- Echoes back the UART input.
					muxSel <= b"00";
					outputChar<= inputChar;
					bufferTxRequest <= '1';
					
					if inputChar = X"2D" then -- Negative sign
						--Set neg flag and move to DigA
						NegA <= '1';
						State <= DigA;
					elsif ((inputChar >= X"30") and (inputChar <= X"39")) then --Is a digit.
						--Store digit and move to DigOp
						numA <= resize((numA * 10), 17) + resize((signed(inputChar) - X"30"), 17);
						inputCount <= inputCount + b"01";
						
						State <= DigOp;
					else 
						--Error and reset.
						State <= Error;
						errorOutput <= " Err: not a number/-$ ";
					end if;
				else
					-- Loop round until UART input.
					State <= NegDigA;
					bufferTxRequest <= '0';
				end if;
			
			when DigA =>
				if uartValid = '1' then
					-- Echoes back the UART input.
					muxSel <= b"00";
					outputChar<= inputChar;
					bufferTxRequest <= '1';
					
					if ((inputChar >= X"30") and (inputChar <= X"39")) then --Is a digit.
						--Store digit and move to DigOp
						numA <= resize((numA * 10), 17) + resize((signed(inputChar) - X"30"), 17);
						inputCount <= inputCount + b"01";
						State <= DigOp;
					else 
						--Error and reset.
						errorOutput <= " Err: not a number$   ";
						State <= Error;
					end if;
				else
					-- Loop round until UART input.
					State <= DigA;
					bufferTxRequest <= '0';				
				end if;
				
			when DigOp =>
				if uartValid = '1' then
					-- Echoes back the UART input.
					muxSel <= b"00";
					outputChar<= inputChar;
					bufferTxRequest <= '1';
					
					if ((inputChar >= X"30") and (inputChar <= X"39")) then --Is a digit.
						--Store digit and move to DigOp
						if inputCount = b"100" then -- User has input too many digits (>4).
							-- Error and reset.
							errorOutput <= " Err: too many digits$";
							State <= Error;
						else -- Store digit and loop back around.
							numA <= resize((numA * 10), 17) + resize((signed(inputChar) - X"30"), 17);
							inputCount <= inputCount + b"01";
							State <= DigOp;
						end if;

					elsif ((inputChar = X"2B") OR (inputChar = X"2D") OR (inputChar = X"2A") OR (inputChar = X"2F") OR (inputChar = X"25")) then --It's a +-*/% operator!
						-- Store operator and move to NegDigB.
						case (inputChar) is
							when X"2B" =>
								op <= Plus;
							
							when X"2D" =>
								op <= Minus;
							
							when X"2A" =>
								op <= Multiply;
								
							when X"2F" =>
								op <= Divide;
								
							when X"25" =>
								op <= Modulus;
								
							when others =>
								-- Error message goes here. Shouldn't ever be reached.
								errorOutput <= " Err: not a number/op$";
								State <= Error;
						end case;
						-- Resets digit counter and moves to NegDigB.
						inputCount <= b"000";
						State <= NegDigB;
					else
						--Error and reset.
						errorOutput <= " Err: not a number/op$";
						State <= Error;
					end if;
				else 
					-- Loop back around until UART input.
					State <= DigOp;
					bufferTxRequest <= '0';
				end if;
				
			when NegDigB =>
				if uartValid = '1' then
					-- Echoes back the UART input.
					muxSel <= b"00";
					outputChar<= inputChar;
					bufferTxRequest <= '1';
				
					if inputChar = X"2D" then -- Negative sign
						--Set neg flag and move to DigB
						NegB <= '1';
						State <= DigB;
					elsif ((inputChar >= X"30") and (inputChar <= X"39")) then --Is a digit.
						--Store digit and move to DigEq
						numB <= resize((numB * 10), 17) + resize((signed(inputChar) - X"30"), 17);
						inputCount <= inputCount + b"01";
						State <= DigEq;
					else 
						--Error and reset.
						errorOutput <= " Err: not a number/-$ ";
						State <= Error;
					end if;
				else
					-- Loop back around until UART input.
					State <= NegDigB;
					bufferTxRequest <= '0';
				end if;
					
			when DigB =>
				if uartValid = '1' then
					-- Echoes back the UART input.
					muxSel <= b"00";
					outputChar<= inputChar;
					bufferTxRequest <= '1';
					
					if ((inputChar >= X"30") and (inputChar <= X"39")) then --Is a digit.
						--Store digit and move to DigEq
						numB <= resize((numB * 10), 17) + resize((signed(inputChar) - X"30"), 17);
						inputCount <= inputCount + b"01";
						State <= DigEq;
					else 
						--Error and reset.
						errorOutput <= " Err: not a number$   ";
						State <= Error;
					end if;
				else
					-- Loop back around until UART input.
					State <= DigB;
					bufferTxRequest <= '0';
				end if;
				
			when DigEq =>
				if uartValid = '1' then
					-- Echoes back the UART input.
					muxSel <= b"00";
					outputChar<= inputChar;
					bufferTxRequest <= '1';
					
					if inputChar = X"3D" then	--It's an equals sign
						State <= Negate;
					elsif ((inputChar >= X"30") and (inputChar <= X"39")) then -- it's a number
						if inputCount = b"100" then -- User has input too many digits (>4)
							-- Error
							errorOutput <= " Err: too many digits$";
							State <= Error;
						else --Store the digit.
							numB <= resize((numB * 10), 17) + resize((signed(inputChar) - X"30"), 17);
							inputCount <= inputCount + b"01";
							State <= DigEq;
						end if;						
					else
						--Generic error and reset.
						errorOutput <= " Err: not a number/=$ ";
						State <= Error;
					end if;
				else
					-- Loop back around until UART input.
					State <= DigEq;
					bufferTxRequest <= '0';
				end if;
				
			when Negate =>
				-- Negates the integers if required..
				bufferTxRequest <= '0';
				if negA = '1' then
					numA <= resize((numA * (-1)), 17);
				end if;
				
				if negB = '1' then
					numB <= resize((numB * (-1)), 17);
				end if;

				State <= CalcResult;
			
			when CalcResult =>
								
					-- Actually does the maths.
						case (op) is
							when Plus =>
								result <= resize((numA + numB), 30);
								State <= SendResult;
													
							when Minus =>
								result <= resize((numA - numB), 30);
								State <= SendResult;
													
							when Multiply =>
								result <= resize((numA * numB), 30);
								State <= SendResult;
								
							when Divide =>
								if numB = 0 then
									errorOutput <= " Err: div by 0$       ";
									State <= Error;
								else
									result <= resize((numA / numB), 30);
									State <= SendResult;
								end if;
								
							when Modulus =>
								if numB = 0 then
									errorOutput <= " Err: mod by 0$       ";
									State <= Error;
								else
									result <= resize((numA mod numB), 30);
									State <= SendResult;
								end if;
								
						end case;
							
			when SendResult =>
				-- Sends the calculation result to the Serialiser.
				signedOutput <= result;
				muxSel <= b"01";
				startSerialiser <= '1';
				State <= WaitResult;
			when WaitResult =>
				-- Waits for the serialiser to complete before resetting the system ready for MORE MATHS!
				startSerialiser <= '0';
				muxSel <= b"01";
				if serialiserDone = '1' then
					-- Serialiser is done, more maths plz.
					muxSel <= b"00";
					reset <= '1';
					State <= Rst;
				else
					-- Loop back until the Serialiser is finished.
					State <= WaitResult;
				end if;
				
			when Error =>
				-- Do error handling.
				bufferTxRequest <= '0';
				bufferTxRequest <= '0';
				muxSel <= b"10";
				startStringSerialiser <= '1';
				State <= WaitError;
				
			when WaitError =>
				startStringSerialiser <= '0';
				if stringSerialiserDone = '1' then
					muxSel <= b"00";
					reset <= '1';
					State <= Rst;
				else
					State <= WaitError;
				end if;
					
				
			when Others =>
				-- Shouldn't ever get here, but just in case reset everything. 
				-- Error
				errorOutput <= " Err: too many digits$";
				errorOutput <= " Why am I here?$      ";
				State <= Error;				
				
		end case;
	end if;
end process;


end Behavioral;

