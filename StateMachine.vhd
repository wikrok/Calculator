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
	port(clk : in STD_LOGIC; -- UART dataValid
		  reset : in STD_LOGIC;
		  inputChar : in STD_LOGIC_VECTOR (7 downto 0);
		  uartTxReady : in STD_LOGIC;
		  outputChar : out STD_LOGIC_VECTOR (7 downto 0);
		  outputReady : out STD_LOGIC
		  );
end StateMachine;

architecture Behavioral of StateMachine is
	type STATETYPE is (NegDigA, DigA, DigOp, NegDigB, DigB, DigEq);
	type OPERATOR is (Plus, Minus, Divide, Multiply);
	signal State: STATETYPE;
	signal NegA : STD_LOGIC := '0';
	signal NegB : STD_LOGIC := '0';
	signal op : OPERATOR;
	signal numA : INTEGER := 0;
	signal numB : INTEGER := 0;
	signal result : INTEGER := 0;
	signal strResult : STRING (1 to 10);
	signal strError : STRING (1 to 20);
	
	COMPONENT Intergenator
    PORT(
         uartDataIn : IN  std_logic_vector(7 downto 0);
         uartDataValid : IN  std_logic;
         enable : IN  std_logic;
         reset : IN  std_logic;
         done : OUT  std_logic;
         output : OUT  integer
        );
    END COMPONENT;
	 
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
				
	 
	    --Inputs
   signal dataValidA : std_logic := '0';
	signal dataValidB : std_logic := '0';
   signal enableA : std_logic := '0';
	signal enableB : std_logic := '0';
	signal buffInput : std_logic_vector (7 downto 0); -- := (others => (others => '0'));
	signal buffWriteClk : std_logic := '0';
	signal buffUartTxReady : std_logic := '0';

 	--Outputs
   signal doneA : std_logic;
   signal outputA : integer;
   signal doneB : std_logic;
   signal outputB : integer;
	signal buffOutput : std_logic_vector (7 downto 0);
	signal buffTxRequest : std_logic;
	


begin

   IntA: Intergenator PORT MAP (
          uartDataIn => inputChar,
          uartDataValid => dataValidA,
          enable => enableA,
          reset => reset,
          done => doneA,
          output => outputA
        );
		  
	   IntB: Intergenator PORT MAP (
          uartDataIn => inputChar,
          uartDataValid => dataValidB,
          enable => enableB,
          reset => reset,
          done => doneB,
          output => outputB
        );
		  
		uartBuff: UART_tx_buffer PORT MAP (
			input => buffInput,
			output => buffOutput,
			reset => reset,
			uartTxRequest => buffTxRequest,
			writeClk => buffWriteClk,
			uartTxReady => buffUartTxReady
			);
				


-- process (CLK, Reset)
process

procedure stringToBuff(str : string) is
	begin
		for i in 1 to str'LENGTH loop
			buffInput <= std_logic_vector(to_unsigned(character'pos(str(i)), 8));
			buffWriteClk <= '1', '0' after 20 ns;
			wait until buffWriteClk = '0';
		end loop;		
end procedure;

begin

wait until (CLK = '1' or Reset = '1');
	if Reset = '1' then 
		State <= NegDigA;
	elsif CLK'EVENT and CLK = '1' then
		-- Echoes the input back out to the UART.
		buffInput <= inputChar;
		buffWriteClk <= '1', '0' after 20 ns;
		
		case State is
			when NegDigA =>
				if inputChar = X"2D" then -- Negative sign
					--Set neg flag and move to DigA
					NegA <= '1';
					State <= DigA;
				elsif ((inputChar >= X"30") and (inputChar <= X"39")) then --Is a digit.
					--Store digit and move to DigOp
					dataValidA <= '1', '0' after 20 ns;
					State <= DigOp;
				else 
					--Error and reset.
					State <= NegDigA;
					strError <= "        Error: NaN/N";
					stringToBuff(strError);
				end if;
			
			when DigA =>
				if ((inputChar >= X"30") and (inputChar <= X"39")) then --Is a digit.
					--Store digit and move to DigOp
					dataValidA <= '1', '0' after 20 ns;
					State <= DigOp;
				else 
					--Error and reset.
					State <= NegDigA;
				end if;
				
			when DigOp =>
				if ((inputChar >= X"30") and (inputChar <= X"39")) then --Is a digit.
					--Store digit and move to DigOp
					dataValidA <= '1', '0' after 20 ns;
					State <= DigOp;
				elsif ((inputChar = X"2B") OR (inputChar = X"2D") OR (inputChar = X"2A") OR (inputChar = X"2F")) then --It's a +-*/ operator!
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
					end case;
					State <= NegDigB;
				else
					--Error and reset.
					State <= NegDigA;
				end if;
				
			when NegDigB =>
				if inputChar = X"2D" then -- Negative sign
					--Set neg flag and move to DigB
					NegB <= '1';
					State <= DigB;
				elsif ((inputChar >= X"30") and (inputChar <= X"39")) then --Is a digit.
					--Store digit and move to DigEq
					dataValidB <= '1', '0' after 20 ns;
					State <= DigEq;
				else 
					--Error and reset.
					State <= NegDigA;
				end if;
					
			when DigB =>
				if ((inputChar >= X"30") and (inputChar <= X"39")) then --Is a digit.
					--Store digit and move to DigEq
					dataValidB <= '1', '0' after 20 ns;
					State <= DigEq;
				else 
					--Error and reset.
					State <= NegDigA;
				end if;
				
			when DigEq =>
				if inputChar = X"3D" then	--It's an equals sign
					--DO maths
					enableA <= '1', '0' after 20 ns;
					wait until doneA = '1';
					numA <= outputA;
					
					enableB <= '1', '0' after 20 ns;
					wait until doneB = '1';
					numB <= outputB;
					
					if negA = '1' then
						numA <= numA * (-1);
					end if;
					
					if negB = '1' then
						numB <= numB * (-1);
					end if;
					
					case (op) is
						when Plus =>
							result <= numA + numB;
						
						when Minus =>
							result <= numA - numB;
						
						when Multiply =>
							result <= numA * numB;
							
						when Divide =>
							result <= numA / numB;
					end case;
					
					--TODO - make a Deintergenator wot does this.
					strResult <= integer'IMAGE(result);
					stringToBuff(strResult);
					
				elsif inputChar = X"88" then -- PLACEHOLDER - error state.
				 	-- Error and reset, many errors.
				else
					--Generic error and reset.
				end if;
				State <= NegDigA;			
				
		end case;
	end if;
end process;


end Behavioral;

