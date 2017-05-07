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
		  signedOutput : out SIGNED (1 to 29);
		  startSerialiser: out STD_LOGIC;
		  serialiserDone: in STD_LOGIC;
		  muxSel: out STD_LOGIC_VECTOR(1 downto 0)
		  );
end StateMachine;

architecture Behavioral of StateMachine is
	type STATETYPE is (Rst, SendNL, NegDigA, DigA, DigOp, NegDigB, DigB, DigEq, Negate, CalcResult, SendResult, WaitResult, WaitError);
	type OPERATOR is (Plus, Minus, Divide, Multiply, Modulus);
	signal State: STATETYPE := Rst;
	signal NegA : STD_LOGIC := '0';
	signal NegB : STD_LOGIC := '0';
	signal op : OPERATOR;
	signal strError : STRING (1 to 20);
	signal unsA : SIGNED (1 to 15);
	signal unsB : SIGNED (1 to 15);
	signal unsResult : SIGNED (1 to 29);
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
				unsA <= b"000000000000000";
				unsB <= b"000000000000000";
				unsResult <= X"0000000" & b"0";
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
						unsA <= resize((unsA * 10), 15) + resize((signed(inputChar) - X"30"), 15);
						inputCount <= inputCount + b"01";
						
						State <= DigOp;
					else 
						--Error and reset.
						State <= WaitError;
						strError <= "        Error: NaN/N";
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
						unsA <= resize((unsA * 10), 15) + resize((signed(inputChar) - X"30"), 15);
						inputCount <= inputCount + b"01";
						State <= DigOp;
					else 
						--Error and reset.
						State <= WaitError;
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
						if inputCount = b"101" then -- User has input too many digits (>4).
							-- Error and reset.
							State <= Rst;
						else -- Store digit and loop back around.
							unsA <= resize((unsA * 10), 15) + resize((signed(inputChar) - X"30"), 15);
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
								State <= WaitError;
						end case;
						-- Resets digit counter and moves to NegDigB.
						inputCount <= b"000";
						State <= NegDigB;
					else
						--Error and reset.
						State <= WaitError;
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
						unsB <= resize((unsB * 10), 15) + resize((signed(inputChar) - X"30"), 15);
						inputCount <= inputCount + b"01";
						State <= DigEq;
					else 
						--Error and reset.
						State <= Rst;
					end if;
				else
					-- Loop back around until UART input.
					State <= NegDigB;
					bufferTxRequest <= '0';
				end if;
					
			when DigB =>
				if uartValid = '1' then
					-- Echoes back the UART input.
					muxSel <= b"10";
					outputChar<= inputChar;
					bufferTxRequest <= '1';
					
					if ((inputChar >= X"30") and (inputChar <= X"39")) then --Is a digit.
						--Store digit and move to DigEq
						unsB <= resize((unsB * 10), 15) + resize((signed(inputChar) - X"30"), 15);
						inputCount <= inputCount + b"01";
						State <= DigEq;
					else 
						--Error and reset.
						State <= Rst;
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
						if inputCount = b"101" then -- User has input too many digits (>4)
							-- Error
							State <= Rst;
						else --Store the digit.
							unsB <= resize((unsB * 10), 15) + resize((signed(inputChar) - X"30"), 15);
							inputCount <= inputCount + b"01";
							State <= DigEq;
						end if;						
					else
						--Generic error and reset.
						State <= Rst;
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
					unsA <= resize((unsA * (-1)), 15);
				end if;
				
				if negB = '1' then
					unsB <= resize((unsB * (-1)), 15);
				end if;

				State <= CalcResult;
			
			when CalcResult =>
								
					-- Actually does the maths.
						case (op) is
							when Plus =>
								unsResult <= resize((unsA + unsB), 29);
							 
							when Minus =>
								unsResult <= resize((unsA - unsB), 29);
							
							when Multiply =>
								unsResult <= resize((unsA * unsB), 29);
								
							when Divide =>
								unsResult <= resize((unsA / unsB), 29);
								
							when Modulus =>
								unsResult <= resize((unsA mod unsB), 29);
								
						end case;
						
							State <= SendResult;

						
							-- GENERAL TODO
							-- DONE 1. Tidy up code.
							-- DONE 2. Write output code.
							-- DONE ERROR IN SERIALISER OUTPUT. transmitRequest doesn't seem to be happening at the right time. 
							-- DONE 2b. Add Serialiser to state machine code.
							-- 3. Error handling and outputting.
							-- NOPE 4. Possible refactoring depenidng how suicidal we're feeling.
							-- 4b. Remove referneces to "unsidnged" in variable names.
							-- DONE 5. Print newline/cr on reset.
							-- DONe 6. Shove on the metal. 
							-- DONE 7. TEST!
							-- DONE 8. Write things about it.
							-- NOTE: Funky reset loop if SendResult's next state is set to WaitError
							-- On the board state machine works all the way through to WaitResult and then to Reset. Output stops at the equals sign .
							
			when SendResult =>
				-- Sends the calculation result to the Serialiser.
				signedOutput <= unsResult;
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
					State <= Rst;
				else
					-- Loop back until the Serialiser is finished.
					State <= WaitResult;
				end if;
				
			when WaitError =>
				-- Do error handling.
				otherRst <= '1';
				State <= Rst;
				
			when Others =>
				-- Shouldn't ever get here, but just in case reset everything. 
				State <= Rst; 
				
		end case;
	end if;
end process;


end Behavioral;

