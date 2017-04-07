----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:01:09 04/07/2017 
-- Design Name: 
-- Module Name:    Stack - Behavioral 
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

entity charStack is
	port(input : in STD_LOGIC_VECTOR (7 downto 0);
		  output : out STD_LOGIC_VECTOR (7 downto 0);
		  --stackDepth : out INTEGER (4 downto 0);
		  push : in STD_LOGIC;
		  pop : in STD_LOGIC;
   	  readReady : out STD_LOGIC;
		  reset : in STD_LOGIC;
		  full : out STD_LOGIC
		  );
end charStack;

architecture Behavioral of charStack is
	type stackType is array (4 downto 0) of STD_LOGIC_VECTOR (7 downto 0);
	signal stackIndex : integer (5 downto 0);
	signal stack : stackType;
	

begin
process (reset, push, pop) begin
	output <= stack(stackIndex);
	--stackDepth <= stackIndex; 
	full <= (stackIndex = '5');
	
	if reset'EVENT and reset = '1' then -- Reset the stack index, clear the contents of the first location.
		stackIndex <= 0;
		stack(stackIndex) <= '0';
	elsif push'EVENT and push = '1' then -- Add input to the stack.
		if stackIndex < '5' then
			-- If stackindex is 5 and therefore full, do nothing.
			stack(stackIndex) <= input;
			stackIndex <= stackIndex + 1;
		end if;
	elsif pop'EVENT and pop = '1' then -- Remove the top of the stack.
		if stackIndex > '0' then
			-- If stackIndex is already 0, do nothing.
			stackIndex <= stackIndex - 1;
		end if;
	end if;
end process;
end Behavioral;

