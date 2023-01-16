library ieee;
use ieee.std_logic_1164.all;
entity motor_movement  is
port(pwm : in bit;
     motor_status : in bit_vector (1 downto 0);
     distance : in integer range 0 to 255;
     motor_movement : out bit_vector (3 downto 0));
end;
architecture behave of motor_movement  is
begin   
    process (distance)
    begin
        if motor_status = "11" then
            motor_movement(0)<= pwm; -- forward right
            motor_movement(1)<= '0'; -- backward right
            motor_movement(2)<= pwm; -- forward left
            motor_movement(3)<= '0'; -- backward left
        elsif motor_status = "01" then
            motor_movement(0)<= pwm;
            motor_movement(1)<= '0';
				motor_movement(2)<= '0';
				motor_movement(3)<= pwm;
        elsif motor_status = "10" then
            motor_movement(0)<= '0';
            motor_movement(1)<= pwm;
				motor_movement(2)<= pwm;
				motor_movement(3)<= '0';
        else
            if distance <= 5 then
                motor_movement(0)<= '0';
                motor_movement(1)<= '0';
					motor_movement(2)<= '0';
					motor_movement(3)<= '0';
            else
                motor_movement(0)<= pwm;
                motor_movement(1)<= '0';
                motor_movement(2)<= pwm;
                motor_movement(3)<= '0';
            end if;   
		end if;
	end process;
end behave;