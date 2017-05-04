----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:26:36 05/03/2017 
-- Design Name: 
-- Module Name:    Serialiser - Behavioral 
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

entity Serialiser is
	port (
					clk : IN STD_LOGIC;
					reset : IN STD_LOGIC;
					signedInput : IN SIGNED (1 to 29);
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
	signal number : SIGNED (1 to 29);
	signal digit : STD_LOGIC_VECTOR (7 downto 0);
	
	signal stackInput : STD_LOGIC_VECTOR (7 downto 0);
	signal stackOutput : STD_LOGIC_VECTOR (7 downto 0);
	signal stackDepth : INTEGER;
	signal push : STD_LOGIC;
	signal pop : STD_LOGIC;
	signal full : STD_LOGIC;

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
		State <= Idle;
		number <= X"0000000" & b"0";
		digit <= X"00";
		done <= '0';
		push <= '0';
		pop <= '0';
		stackInput <= X"00";
		transmitRequest <= '0';
		
	elsif rising_edge(clk) then
		case State is
			when Idle =>
				transmitRequest <= '0';
				if enable = '1' then
					number <= signedInput;
					State <= CheckNeg;
					done <= '0';
				else
					State <= Idle;
				end if;
				
			when CheckNeg =>
				if number < 0 then
					-- It's negative, send to UART.
					parallelDataOut <= X"2D";
					transmitRequest <= '1';
					State <= Negate;
				else
					State <= ASCII;
				end if;
			
			when Negate =>
				transmitRequest <= '0';
				number <= -number;
				State <= ASCII;
				
			when ASCII =>
				push <= '0';
				if number /= X"0000000" & b"0" then
					digit <= std_logic_vector(resize(((number mod 10) + X"30"), 8));
					State <= StoreDigit;
				else
					State <= RetrieveDigit;
				end if;
				
			when StoreDigit =>
				number <= resize((number / 10), 29);
				
				stackInput <= digit;
				push <= '1';
				pop <= '0';
				State <= ASCII;
			

				
			when RetrieveDigit =>
				transmitRequest <= '1';
				
				push <= '0';
				pop <= '1'; 
				State <= WaitRetrieve;

			
			when WaitRetrieve =>
				pop <= '0';
				transmitRequest <= '0';

				State <= TxDigit;
			
			when TxDigit =>		
			digit <= StackOutput;
				parallelDataOut <= digit;
				if stackDepth = 0 then
					State <= Idle;
					done <= '1';
				else
					State <= RetrieveDigit;
				end if;
							
			end case;
	end if;	
	
end process;	
end Behavioral;

