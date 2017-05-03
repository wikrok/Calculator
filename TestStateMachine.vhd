-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- Component Declaration
          COMPONENT StateMachine
          PORT(
					clk : in STD_LOGIC;
				  extReset : in STD_LOGIC;
				  inputChar : in STD_LOGIC_VECTOR (7 downto 0);
				  uartTxReady : in STD_LOGIC;
				  outputChar : out STD_LOGIC_VECTOR (7 downto 0);
				  outputReady : out STD_LOGIC
					);
          END COMPONENT;
			
			-- Inputs
			signal clk : std_logic;
			signal extReset : std_logic;
			signal inputChar : std_logic_vector (7 downto 0);
			signal uartTxReady : std_logic;
			
			-- Outputs
			signal outputChar : std_logic_vector (7 downto 0);
			signal outputReady : std_logic;
			
			   constant clk_period : time := 10 ns;

  BEGIN

  -- Component Instantiation
  
			uut: StateMachine PORT MAP(
				clk => clk,
				extReset => extReset,
				inputChar => inputChar,
				uartTxReady => uartTxReady,
				outputChar => outputChar,
				outputReady => outputReady
				);


   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

  --  Test Bench Statements
my_process : process is
	begin
	
	extReset <= '1', '0' after 40 ns;
	
	wait for 100 ns;


	
		inputChar <= X"31";
	wait for 10 ns;
	uartTxReady <= '1', '0' after 10 ns;
	wait for 20 ns;
	
	inputChar <= X"32";
	wait for 10 ns;
	uartTxReady <= '1', '0' after 10 ns;
	wait for 20 ns;	
	
	inputChar <= X"33";
	wait for 10 ns;
	uartTxReady <= '1', '0' after 10 ns;
	wait for 20 ns;
	
		inputChar <= X"34";
	wait for 10 ns;
	uartTxReady <= '1', '0' after 10 ns;
	wait for 20 ns;

	
	inputChar <= X"2D";
	wait for 10 ns;
	uartTxReady <= '1', '0' after 10 ns;
	wait for 20 ns;
	

	
			inputChar <= X"34";
	wait for 10 ns;
	uartTxReady <= '1', '0' after 10 ns;
	wait for 20 ns;

		inputChar <= X"33";
	wait for 10 ns;
	uartTxReady <= '1', '0' after 10 ns;
	wait for 20 ns;	
	
		inputChar <= X"32";
	wait for 10 ns;
	uartTxReady <= '1', '0' after 10 ns;
	wait for 20 ns;
	
		inputChar <= X"31";
	wait for 10 ns;
	uartTxReady <= '1', '0' after 10 ns;
	wait for 20 ns;
	
			inputChar <= X"3D";
	wait for 10 ns;
	uartTxReady <= '1', '0' after 10 ns;
	wait for 20 ns;
        wait; -- will wait forever
     END PROCESS;
  --  End Test Bench 

  END;
