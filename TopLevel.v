
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

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

