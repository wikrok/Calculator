
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity lab2_design_top is
	Port (reset_pin : in STD_LOGIC;
			clock_pin : in STD_LOGIC;
			serialDataIn_pin : in STD_LOGIC;
			serialDataOut_pin : out STD_LOGIC;
			LED_hi_pin : out STD_LOGIC;
			LED_lo_pin : out STD_LOGIC;
			DIP_pins : in STD_LOGIC_VECTOR (3 downto 0)
	);
end lab2_design_top;


architecture structural of lab2_design_top is
-- Internal signals.
	signal parallelDataOut : STD_LOGIC_VECTOR(7 downto 0) := (others=>'U');
	signal dataValid : STD_LOGIC := 'U';
	signal parallelDataIn : STD_LOGIC_VECTOR(7 downto 0) := (others=>'U');
	signal transmitRequest : STD_LOGIC := 'U';
	signal tx_ready : STD_LOGIC := 'U';
	signal send_character : STD_LOGIC := 'U';
	signal character_to_send : STD_LOGIC_VECTOR(7 downto 0) := (others=>'U');
	signal DIP_debounced : STD_LOGIC_VECTOR(3 downto 0) := (others=>'0');
	signal gnd : STD_LOGIC := '0';
	signal reset_calc : STD_LOGIC := 'U';

-- Buffer

	signal stateMachineTxRequest : STD_LOGIC := 'U';
	signal serialiserTxRequest : STD_LOGIC := 'U';
	signal errorTxRequest : STD_LOGIC := 'U';
	signal writeClk : STD_LOGIC := 'U';

	signal echo : STD_LOGIC_VECTOR(7 downto 0) := (others => 'U');
	signal serialiserOutput : STD_LOGIC_VECTOR(7 downto 0) := (others => 'U');
	signal temp : STD_LOGIC_VECTOR(7 downto 0) := (others => 'U'); --TDO: Rename
	signal buffInput : std_logic_vector (7 downto 0) := (others => 'U');

	signal muxSel : STD_LOGIC_VECTOR(1 downto 0) := b"00";
	
-- State Machine
	signal signedResult : SIGNED (1 to 29) := X"0000000" & b"0";
	signal startSerialiser : STD_LOGIC := 'U';
	signal serialiserDone : STD_LOGIC := 'U';
	
begin
	make_UART: entity work.UART
		generic map (BAUD_RATE => 9600,
						 CLOCK_RATE => 40000000)
		port map(
		   reset => reset_pin,
			clock => clock_pin,
			-- State Machine
			parallelDataOut => parallelDataOut,
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
			 clk => clock_pin,
 			 extReset => reset_pin,
		    reset => reset_calc,
			 -- UART
			 inputChar => parallelDataOut,
			 uartValid => dataValid,
			 -- Buffer
			 outputChar => echo,
			 bufferTxRequest => stateMachineTxRequest,
			 muxSel => muxSel,
			 -- Serialiser
			 signedOutput => signedResult,
			 startSerialiser => startSerialiser,
			 serialiserDone => serialiserDone
		  );
		
	outputSerialiser: entity work.Serialiser 
		port map (
			clk => clock_pin,
			reset => reset_calc,
			-- State Machine
			signedInput => signedResult,
			enable => startSerialiser,
			done => serialiserDone,
			-- BufferW
			parallelDataOut => serialiserOutput,
			transmitRequest => serialiserTxRequest
       );
			
	buffMultiplexer: entity work.BufferMultiplexer 
		port map (
			inA => echo,
			inB => serialiserOutput,
			inC => temp, -- TODO use me for error strings.
			output => buffInput,
			sel => muxSel
		);	
		
	buffWriteOrGate: entity work.buffWriteOr 
		port map (
			a => stateMachineTxRequest,
			b => serialiserTxRequest,
			c => errorTxRequest,
			q => writeClk
		);
		
	uartBuff: entity work.UART_tx_buffer 
		port map (
			reset => reset_pin,
			-- Input
			input => buffInput,
			writeClk => writeClk,
			-- UART
			output => parallelDataIn,
			uartTxRequest => transmitRequest,
			uartTxReady => tx_ready
		);		
end structural;