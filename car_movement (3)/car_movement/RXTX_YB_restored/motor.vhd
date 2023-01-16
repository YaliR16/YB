library ieee;
use ieee.std_logic_1164.all;
entity motor is
port ( motor_in : in bit_vector (3 downto 0);
       motor_out : out bit_vector (3 downto 0);
		 pwm_motor : in bit);
end;
architecture behave of motor is
begin
motor_out(0)<= pwm_motor and motor_in(0);
motor_out(1)<= pwm_motor and motor_in(1);
motor_out(2)<= pwm_motor and motor_in(2);
motor_out(3)<= pwm_motor and motor_in(3);
end behave;