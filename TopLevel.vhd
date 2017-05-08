
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity lab2_design_top is
	Port (reset_pin : in STD_LOGIC;
			clock_pin : in STD_LOGIC;
			serialDataIn_pin : in STD_LOGIC;
			serialDataOut_pin : out STD_LOGIC
	);
end lab2_design_top;


architecture structural of lab2_design_top is
-- Internal signals.
	signal inputChar : STD_LOGIC_VECTOR(7 downto 0) := (others=>'U');
	signal dataValid : STD_LOGIC := 'U';
	signal parallelDataIn : STD_LOGIC_VECTOR(7 downto 0) := (others=>'U');
	signal transmitRequest : STD_LOGIC := 'U';
	signal tx_ready : STD_LOGIC := 'U';
	signal send_character : STD_LOGIC := 'U';
	signal character_to_send : STD_LOGIC_VECTOR(7 downto 0) := (others=>'U');
	signal DIP_debounced : STD_LOGIC_VECTOR(3 downto 0) := (others=>'0');
	signal gnd : STD_LOGIC := '0';
	signal reset_calc : STD_LOGIC;

-- Buffer

	signal stateMachineTxRequest : STD_LOGIC := 'U';
	signal serialiserTxRequest : STD_LOGIC := 'U';
	signal stringSerialiserTxRequest : STD_LOGIC := 'U';
	signal write : STD_LOGIC := 'U';

	signal echo : STD_LOGIC_VECTOR(7 downto 0) := (others => 'U');
	signal serialiserOutput : STD_LOGIC_VECTOR(7 downto 0) := (others => 'U');
	signal stringSerialiserOutput : STD_LOGIC_VECTOR(7 downto 0) := (others => 'U'); --TDO: Rename
	signal buffInput : std_logic_vector (7 downto 0) := (others => 'U');

	signal muxSel : STD_LOGIC_VECTOR(1 downto 0) := b"00";
		
-- State Machine
	signal signedResult : SIGNED (1 to 30) := X"0000000" & b"00";
	signal startSerialiser : STD_LOGIC := 'U';
	signal serialiserDone : STD_LOGIC := 'U';
	signal errorString : STRING (1 to 22);
	signal startStringSerialiser : STD_LOGIC := 'U';
	signal stringSerialiserDone : STD_LOGIC := 'U';
	
-- Clock Divider
	signal clk : STD_LOGIC := 'U';
	
begin

-- Slows down the clock so the synthesized version meets timing constraints.
	make_ClockDivider: entity work.ClockDivider
		port map (
			clkIn => clock_pin,
			clkOut => clk
			);


	make_UART: entity work.UART
		generic map (BAUD_RATE => 19200,
						 CLOCK_RATE => 10000000)
		port map(
		   reset => reset_pin,
			clock => clk,
			-- State Machine
			parallelDataOut => inputChar,
			dataValid => dataValid,
			-- Buffer
			parallelDataIn => parallelDataIn,
			transmitRequest => transmitRequest,
			txIsReady => tx_ready,
			--External
			serialDataIn => serialDataIn_pin,
			serialDataOut => serialDataOut_pin
		);
		
		
		
	make_StateMachine: entity work.StateMachine
		port map (
			 clk => clk,
 			 extReset => reset_pin,
		    reset => reset_calc,
			 -- UART
			 inputChar => inputChar,
			 uartValid => dataValid,
			 -- Buffer
			 outputChar => echo,
			 bufferTxRequest => stateMachineTxRequest,
			 muxSel => muxSel,
			 -- Serialiser
			 signedOutput => signedResult,
			 startSerialiser => startSerialiser,
			 serialiserDone => serialiserDone,
			 -- String Serialiser
			 errorOutput => errorString,
			 startStringSerialiser => startStringSerialiser,
			 stringSerialiserDone => stringSerialiserDone
		  );
		
	outputSerialiser: entity work.Serialiser 
		port map (
			clk => clk,
			reset => reset_calc,
			-- State Machine
			signedInput => signedResult,
			enable => startSerialiser,
			done => serialiserDone,
			-- Buffer
			parallelDataOut => serialiserOutput,
			transmitRequest => serialiserTxRequest
       );
		 
	outputStringSerialiser: entity work.stringSerialiser
		port map (
			clk => clk,
			reset => reset_calc,
			-- State Machine
			inputString => errorString,
			enable => startStringSerialiser,
			done => stringSerialiserDone,
			-- Buffer
			parallelDataOut => stringSerialiserOutput,
			transmitRequest => stringSerialiserTxRequest
		);
			
	buffMultiplexer: entity work.BufferMultiplexer 
		port map (
			inA => echo,
			inB => serialiserOutput,
			inC => stringSerialiserOutput, -- TODO use me for error strings.
			output => buffInput,
			sel => muxSel
		);	
		
	buffWriteOrGate: entity work.buffWriteOr 
		port map (
			a => stateMachineTxRequest,
			b => serialiserTxRequest,
			c => stringSerialiserTxRequest,
			q => write
		);
		
	uartBuff: entity work.UART_tx_buffer 
		port map (
			reset => reset_pin,
			-- Input
			input => buffInput,
			write => write,
			-- UART
			output => parallelDataIn,
			uartTxRequest => transmitRequest,
			uartTxReady => tx_ready,
			clock => clk
		);		
end structural;