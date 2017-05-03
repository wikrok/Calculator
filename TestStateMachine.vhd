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



  --  Test Bench Statements
my_process : process is
	begin
	
	extReset <= '1', '0' after 20 ns;
	wait for 40 ns;
	
	clk <= '1', '0' after 10 ns;
	wait for 20 ns;
	clk <= '1', '0' after 10 ns;
	wait for 20 ns;	
	clk <= '1', '0' after 10 ns;
	wait for 20 ns;
	
	inputChar <= X"2D";
	wait for 20 ns;
	uartTxReady <= '1';
	
	clk <= '1', '0' after 10 ns;
	wait for 20 ns;
	
	
        wait for 100 ns; -- wait until global set/reset completes

        -- Add user defined stimulus here

        wait; -- will wait forever
     END PROCESS;
  --  End Test Bench 

  END;
