library ieee;
use ieee.std_logic_1164.all;
entity motor_status  is
port(dist : in integer range 0 to 255;
     pwm : in bit;
     m : buffer bit_vector (3 downto 0);
	  enable_servo : buffer bit);
end;
architecture behave of motor_status  is
signal cnt : integer range 0 to 10000 := 0;

begin   
    process (dist)
    begin
        if dist > 20 then
           m(0)<= pwm ; -- forward left
			  m(1)<= '0'; -- backward left
			  m(2)<= pwm; -- forward right
			  m(3)<= '0'; -- backward right
			  enable_servo <= '0';
        else
           m(0)<= '0';
			  m(1)<= '0';
			  m(2)<= '0';
			  m(3)<= '0';
			  enable_servo <= '1';
			end if;
	end process;
end behave;