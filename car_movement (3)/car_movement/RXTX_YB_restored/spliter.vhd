library ieee;
use ieee.std_logic_1164.all;

entity spliter is
port (byte:in bit_vector (7 downto 0);
      DC_MOTOR: out bit_vector (3 downto 0);
		OTHER : out bit_vector(1 downto 0);
		AUTO_MANUAL: out bit;
		SERVO_MOTOR: out bit);
end;

architecture behave of spliter is
begin
OTHER<= byte(7 downto 6);
AUTO_MANUAL <= byte(5);
SERVO_MOTOR <= byte(4);
DC_MOTOR<= byte(3 downto 0);
end behave;
