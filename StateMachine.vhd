----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:19:12 04/07/2017 
-- Design Name: 
-- Module Name:    StateMachine - Behavioral 
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
use ieee.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity StateMachine is
	generic (TPD : TIME := 1 ns);
	port(clk : in STD_LOGIC;
		  extReset : in STD_LOGIC;
		  inputChar : in STD_LOGIC_VECTOR (7 downto 0);
		  uartTxReady : in STD_LOGIC;
		  outputChar : out STD_LOGIC_VECTOR (7 downto 0);
		  outputReady : out STD_LOGIC
		  );
end StateMachine;

architecture Behavioral of StateMachine is
	type STATETYPE is (Rst, Idle, NegDigA, DigA, DigOp, NegDigB, DigB, DigEq, Negate, CalcResult, SendResult, WaitResult, WaitError);
	type OPERATOR is (Plus, Minus, Divide, Multiply, Modulus);
	signal State: STATETYPE;
	signal NegA : STD_LOGIC := '0';
	signal NegB : STD_LOGIC := '0';
	signal op : OPERATOR;
	signal strError : STRING (1 to 20);
	signal unsA : SIGNED (1 to 15);
	signal unsB : SIGNED (1 to 15);
	signal unsResult : SIGNED (1 to 29);
	signal inputCount	: UNSIGNED (1 to 3);
	
	
	 COMPONENT UART_tx_buffer
	 PORT (
			input : in STD_LOGIC_VECTOR (7 downto 0);
			output : out STD_LOGIC_VECTOR (7 downto 0);
			reset : in STD_LOGIC;
			uartTxRequest : out STD_LOGIC;
			writeClk : in STD_LOGIC;
			uartTxReady : in STD_LOGIC
			);
	END COMPONENT;	
	
	COMPONENT Serialiser
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         signedInput : IN  SIGNED (1 to 29);
         enable : IN  std_logic;
         done : OUT  std_logic;
         parallelDataOut : OUT  std_logic_vector(7 downto 0);
         transmitRequest : OUT  std_logic
        );
    END COMPONENT;
	 COMPONENT BufferMultiplexer
	 	port (
			inA : IN STD_LOGIC_VECTOR (7 downto 0);
			inB : IN STD_LOGIC_VECTOR (7 downto 0);
			inC : IN STD_LOGIC_VECTOR (7 downto 0);
			output : OUT STD_LOGIC_VECTOR (7 downto 0);
			sel : IN STD_LOGIC_VECTOR (1 downto 0)
			);
	 END COMPONENT;
	
	    --Inputs
	signal buffInput : std_logic_vector (7 downto 0); -- := (others => (others => '0'));
	signal buffWrite : std_logic := '0';
	signal buffUartTxReady : std_logic := '0';
	signal reset : std_logic := '0';
	
 	--Outputs
	signal buffOutput : std_logic_vector (7 downto 0);
	signal buffTxRequest : std_logic;
	
	
	
	
	   --Inputs
   signal signedInput : SIGNED (1 to 29);
   signal enable : std_logic := '0';
	signal echo : STD_LOGIC_VECTOR(7 downto 0);

 	--Outputs
   signal done : std_logic;
   signal parallelDataOut : std_logic_vector(7 downto 0);
   signal transmitRequest : std_logic;
	signal serialiserOutput : STD_LOGIC_VECTOR(7 downto 0);
	signal temp : STD_LOGIC_VECTOR(7 downto 0);
	signal muxSel : STD_LOGIC_VECTOR(1 downto 0);
	

begin
 
 --TODO - move me up a level.
		uartBuff: UART_tx_buffer PORT MAP (
			input => buffInput,
			output => buffOutput,
			reset => reset,
			uartTxRequest => buffTxRequest,
			writeClk => buffWrite,
			uartTxReady => buffUartTxReady
			);
			
		outputSerialiser: Serialiser PORT MAP (
          clk => clk,
          reset => reset,
          signedInput => signedInput,
          enable => enable,
          done => done,
          parallelDataOut => serialiserOutput,
          transmitRequest => buffWrite
        );
			
		buffMultiplexer: BufferMultiplexer PORT MAP (
				inA => echo,
				inB => serialiserOutput,
				inC => temp, -- TODO use me for error strings.
				output => buffInput,
				sel => muxSel
			);	


process (CLK, Reset)

begin

-- THIS JUST TRIGGERS THE UART.
-- TODO REMOVE ME.
buffUartTxReady <= '1';


	if extReset = '1' then 
		State <= Rst;
		reset <= '1';
		
	elsif rising_edge(clk) then
		case State is
			when Rst =>
				reset <= '0';
				State <= NegDigA;
				unsA <= b"000000000000000";
				unsB <= b"000000000000000";
				unsResult <= X"0000000" & b"0";
				inputCount <= b"000";
		
			when NegDigA =>
				if uartTxReady = '1' then 
					-- Echoes back the UART input.
					muxSel <= b"00";
					echo <= inputChar;
					buffWrite <= '1';
					
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
					State <= NegDigA;
					buffWrite <= '0';
				end if;
			
			when DigA =>
				if uartTxReady = '1' then
					-- Echoes back the UART input.
					muxSel <= b"00";
					echo <= inputChar;
					buffWrite <= '1';
					
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
					State <= DigA;
					buffWrite <= '0';				
				end if;
				
			when DigOp =>
				if uartTxReady = '1' then
					-- Echoes back the UART input.
					muxSel <= b"00";
					echo <= inputChar;
					buffWrite <= '1';
					
					if ((inputChar >= X"30") and (inputChar <= X"39")) then --Is a digit.
						--Store digit and move to DigOp
						if inputCount = b"100" then
							-- Error
							State <= Rst;
						else 
							unsA <= resize((unsA * 10), 15) + resize((signed(inputChar) - X"30"), 15);
							inputCount <= inputCount + b"01";
							State <= DigOp;
						end if;

					elsif ((inputChar = X"2B") OR (inputChar = X"2D") OR (inputChar = X"2A") OR (inputChar = X"2F") OR (inputChar = X"25")) then --It's a +-*/ operator!
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
								-- Error message goes here.
								State <= WaitError;
						end case;
						inputCount <= b"000";
						State <= NegDigB;
					else
						--Error and reset.
						State <= WaitError;
					end if;
				else 
					State <= DigOp;
					buffWrite <= '0';
				end if;
				
			when NegDigB =>
				if uartTxReady = '1' then
					-- Echoes back the UART input.
					muxSel <= b"00";
					echo <= inputChar;
					buffWrite <= '1';
					
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
						State <= WaitError;
					end if;
				else
					State <= NegDigB;
					buffWrite <= '0';
				end if;
					
			when DigB =>
				if uartTxReady = '1' then
					-- Echoes back the UART input.
					muxSel <= b"00";
					echo <= inputChar;
					buffWrite <= '1';
					
					if ((inputChar >= X"30") and (inputChar <= X"39")) then --Is a digit.
						--Store digit and move to DigEq
						unsB <= resize((unsB * 10), 15) + resize((signed(inputChar) - X"30"), 15);
						inputCount <= inputCount + b"01";
						State <= DigEq;
					else 
						--Error and reset.
						State <= WaitError;
					end if;
				else
					State <= DigB;
					buffWrite <= '0';
				end if;
				
			when DigEq =>
				if uartTxReady = '1' then
					-- Echoes back the UART input.
					muxSel <= b"00";
					echo <= inputChar;
					buffWrite <= '1';
					
					if inputChar = X"3D" then	--It's an equals sign
						State <= Negate;
					elsif ((inputChar >= X"30") and (inputChar <= X"39")) then -- it's a number
						if inputCount = b"100" then
							-- Error
							State <= Rst;
						else 
							unsB <= resize((unsB * 10), 15) + resize((signed(inputChar) - X"30"), 15);
							inputCount <= inputCount + b"01";
							State <= DigOp;
						end if;						
						State <= DigEq;
					else
						--Generic error and reset.
						State <= WaitError;
					end if;
				else
					State <= DigEq;
					buffWrite <= '0';
				end if;
				
			when Negate =>
				-- Negativates the integers.
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
							-- 2b. Add Serialiser to state machine code.
							-- 3. Error handling and outputting.
							-- 4. Possible refactoring depenidng how suicidal we're feeling.
							-- 4b. Remove referneces to "unsidnged" in variable names.
							-- 5. Print newline/cr on reset.
							-- 6. Shove on the metal. 
							-- 7. TEST!
							-- 8. Write things about it.
							
			when SendResult =>
				signedInput <= unsResult;
				muxSel <= b"01";
				enable <= '1';
				State <= WaitResult;
				
			when WaitResult =>
				enable <= '0';
				muxSel <= b"01";
				if done = '1' then
					State <= Rst;
				else
					State <= WaitResult;
				end if;
												
			when WaitError =>
				-- Do error handling.
				
				State <= Rst;

			when Others =>
				State <= Rst; 
				
		end case;
	end if;
end process;


end Behavioral;

