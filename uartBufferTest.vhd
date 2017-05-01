--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:49:38 05/01/2017
-- Design Name:   
-- Module Name:   C:/Users/phil/Documents/GitHub/Calculator/uartBufferTest.vhd
-- Project Name:  Calculator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UART_tx_buffer
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY uartBufferTest IS
END uartBufferTest;
 
ARCHITECTURE behavior OF uartBufferTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UART_tx_buffer
    PORT(
         input : IN  std_logic_vector(7 downto 0);
         output : OUT  std_logic_vector(7 downto 0);
         reset : IN  std_logic;
         uartTxRequest : OUT  std_logic;
         writeClk : IN  std_logic;
         uartTxReady : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(7 downto 0) := (others => '0');
   signal reset : std_logic := '0';
   signal writeClk : std_logic := '0';
   signal uartTxReady : std_logic := '0';
	
 	--Outputs
   signal output : std_logic_vector(7 downto 0);
   signal uartTxRequest : std_logic;
	
	signal strError : string (1 to 12);
	signal strResult : string (1 to 4);

   -- Clock period definitions
   constant writeClk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UART_tx_buffer PORT MAP (
          input => input,
          output => output,
          reset => reset,
          uartTxRequest => uartTxRequest,
          writeClk => writeClk,
          uartTxReady => uartTxReady
        );

   -- Clock process definitions
my_process : process is
procedure stringToBuff(str : string) is
	begin
		for i in 1 to str'LENGTH loop
			input <= std_logic_vector(to_unsigned(character'pos(str(i)), 8));
			writeClk <= '1', '0' after 20 ns;
			wait for 40 ns;
		end loop;		
end procedure;
	begin
	
	
		-- number := 5536
		
		strResult <= integer'IMAGE(5536);
		wait for 40 ns;
		stringToBuff(strResult);
		
		wait for 400 ns;
		
		reset <= '1', '0' after 20 ns;
		
		wait for 40 ns;
		
		strError <= "Error: NaN/N";
		wait for 40 ns;
		stringToBuff(strError);
		
		wait for 400 ns;
		
		uartTxReady <= '1', '0' after 20 ns;
		
		wait for 200 ns;
		
		
		
		

end process;
END;
