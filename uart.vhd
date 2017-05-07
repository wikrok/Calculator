LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity UART is
	generic (BAUD_RATE : integer := 9600;
				CLOCK_RATE : integer := 25000000);
	port (reset : in STD_LOGIC;
			clock : in STD_LOGIC;
			serialDataIn : in STD_LOGIC;
			parallelDataOut : out STD_LOGIC_VECTOR (7 downto 0);
			dataValid : out STD_LOGIC;
			parallelDataIn : in STD_LOGIC_VECTOR (7 downto 0);
			transmitRequest : in STD_LOGIC;
			txIsReady : out STD_LOGIC;
			serialDataOut : out STD_LOGIC;
			go: out STD_LOGIC
	);
end entity UART;

architecture Behavioral of UART is
	signal baudRateEnable : std_logic := 'U';
	signal baudRateEnable_x16 : std_logic := 'U';
	
begin
	rateGen: entity work.UART_baudRateGenerator
		generic map (BAUD_RATE => BAUD_RATE,
						CLOCK_RATE => CLOCK_RATE)
		port map(clock => clock,
					baudRateEnable => baudRateEnable,
					baudRateEnable_x16 => baudRateEnable_x16
		);
		
	xmit: entity work.UART_transmitter 
		port map(reset => reset,
					clock => clock,
					baudRateEnable => baudRateEnable,
					parallelDataIn => parallelDataIn,
					transmitRequest => transmitRequest,
					ready => txIsReady,
					serialDataOut => serialDataOut,
					go => go
		);
	
	rcvr: entity work.UART_receiver 
		port map(reset => reset,
					clock => clock,
					baudRateEnable_x16 => baudRateEnable_x16,
					serialDataIn => serialDataIn,
					parallelDataOut => parallelDataOut,
					dataValid => dataValid
		);
end architecture Behavioral;