----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:52:07 05/04/2017 
-- Design Name: 
-- Module Name:    BuffWriteOr - Behavioral 
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

entity BuffWriteOr is
	PORT (
			a : IN STD_LOGIC;
			b : IN STD_LOGIC;
			c : IN STD_LOGIC;
			q : OUT STD_LOGIC
		);
end BuffWriteOr;

architecture Behavioral of BuffWriteOr is

begin
	q <= a or b or c;

end Behavioral;

