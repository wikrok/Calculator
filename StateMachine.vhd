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
	signal State: STATETYPE;


begin
process (CLK, Reset) begin
	if Reset = '1' then 
		State <= NegDigA;
	elsif CLK'EVENT and CLK = '1' then
		case State is
			when NegDigA =>
				if inputChar = X"2D" then -- Negative sign
					--Set neg flag and move to DigA
					State <= DigA;
				elsif ((inputChar >= X"30") and (inputChar <= X"39")) then --Is a digit.
					--Store digit and move to DigOp
					State <= DigOp;
				else 
					--Error and reset.
					State <= NegDigA;
				end if;
			
			when DigA =>
				if ((inputChar >= X"30") and (inputChar <= X"39")) then --Is a digit.
					--Store digit and move to DigOp
					State <= DigOp;
				else 
					--Error and reset.
					State <= NegDigA;
				end if;
				
			when DigOp =>
				if ((inputChar >= X"30") and (inputChar <= X"39")) then --Is a digit.
					--Store digit and move to DigOp
					State <= DigOp;
				elsif ((inputChar = X"2B") OR (inputChar = X"2D") OR (inputChar = X"2A") OR (inputChar = X"2F")) then --It's a +-*/ operator!
					-- Store operator and move to NegDigB.
					State <= NegDigB;
				else
					--Error and reset.
					State <= NegDigA;
				end if;
				
			when NegDigB =>
				if inputChar = X"2D" then -- Negative sign
					--Set neg flag and move to DigB
					State <= DigB;
				elsif ((inputChar >= X"30") and (inputChar <= X"39")) then --Is a digit.
					--Store digit and move to DigEq
					State <= DigEq;
				else 
					--Error and reset.
					State <= NegDigA;
				end if;
					
			when DigB =>
				if ((inputChar >= X"30") and (inputChar <= X"39")) then --Is a digit.
					--Store digit and move to DigEq
					State <= DigEq;
				else 
					--Error and reset.
					State <= NegDigA;
				end if;
				
			when DigEq =>
				if inputChar = X"3D" then	--It's an equals sign
					--DO maths
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

