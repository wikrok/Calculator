-- Defines IO pins, internal signals, creates UART component connected to encoder and decoder. 
-- Decoder takes ASCII input from UART, alters the character, outputs in parallel to the encoder.
-- Encoder takes parellel output from decoder, encodes to ASCII and sends to UART for transmission.
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity lab2_design_top_original is
	Port (reset_pin : in STD_LOGIC;
			clock_pin : in STD_LOGIC;
			serialDataIn_pin : in STD_LOGIC;
			serialDataOut_pin : out STD_LOGIC;
			LED_hi_pin : out STD_LOGIC;
			LED_lo_pin : out STD_LOGIC;
			DIP_pins : in STD_LOGIC_VECTOR (3 downto 0)
	);
end lab2_design_top_original;

architecture structural of lab2_design_top_original is
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

begin
	make_UART: entity work.UART
		generic map (BAUD_RATE => 19200,
						 CLOCK_RATE => 40000000)
		port map(reset => reset_pin,
					clock => clock_pin,
					serialDataIn => serialDataIn_pin,
					parallelDataOut => parallelDataOut,
					dataValid => dataValid,
					parallelDataIn => parallelDataIn,
					transmitRequest => transmitRequest,
					txIsReady => tx_ready,
					serialDataOut => serialDataOut_pin
		);
		
	decoder: entity work.character_decoder
		generic map (CLOCK_FREQUENCY => 40000000)
		port map(clk => clock_pin,
					charFromUART_valid => dataValid,
					charFromUART => parallelDataOut,
					LED_hi => LED_hi_pin,
					LED_lo => LED_lo_pin,
					send_character => send_character,
					character_to_send => character_to_send
		);
		
	encoder: entity work.character_encoder
		port map(clk => clock_pin,
					character_decoded => send_character,
					character_to_send => character_to_send,
					tx_ready => tx_ready,
					parallelDataIn => parallelDataIn,
					transmitRequest => transmitRequest,
					DIP_dbncd => DIP_debounced
		);
		
		
	DIP_debouncers: for i in 0 to 3 generate
		dbncr: entity work.debouncer
			generic map (DELAY_VALUE => 4000000)
			port map(clk => clock_pin,
						signal_in => DIP_pins(i),
						signal_out => DIP_debounced(i)
			);
	end generate DIP_debouncers;
end structural;