----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:39:03 05/04/2017 
-- Design Name: 
-- Module Name:    stringSerialiser - Behavioral 
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
				if enable = '1' then
					State <= TxChar;
					str <= inputString;
					transmitRequest <= '0';
					done <= '0';
					count <= 1;
				else
					State <= Idle;
				end if;
				
			when TxChar =>
				parallelDataOut <= std_logic_vector(to_unsigned(character'pos(str(count)), 8));
				transmitRequest <= '1';
				State <= TxWait;
			
			when TxWait =>
				transmitRequest <= '0';
				if str(count + 1) = '$' or count = 19 then
					done <= '1';
					State <= Idle;
					count <= 1;
				else
					count <= count + 1;
					State <= TxChar;
				end if;
				
		end case;
	end if;
end process;
	
end Behavioral;

