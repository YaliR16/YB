library ieee;
use ieee.std_logic_1164.all;
entity car_movement  is
port(distance : in integer range 0 to 255;
     car_status : buffer bit_vector (1 downto 0);
     motor : buffer bit_vector (3 downto 0);
     servo_status : buffer bit_vector (1 downto 0));
end;
architecture behave of car_movement  is
signal cnt : integer range 0 to 10000 := 0;
signal time1 : integer range 0 to 10000 := 0;
signal time2 : integer range 0 to 10000 := 0;
signal way : bit_vector (3 downto 0);

begin
    process (distance)
	 begin
    if car_status = "00" then -- driving until an object is detected
        motor <= "0101"; -- movement forward
        servo_status <= "01"; -- 90 degrees
        if distance <= 20 then
            car_status <= "01";
        end if;
    end if;

    if car_status = "01" then-- stopping and scanning
        motor <= "0000"; -- movement stops
        servo_status <= "11"; -- scanning
        if cnt < 1000 then
            time1 <= time1 +1; -- counting time of servo movement
        if distance >= 80 then -- maximum range which will allow to the car to pass through the obstacles (length)
            cnt <= cnt + 1;
        else
            cnt <= 0;
        end if;
        end if;
        if cnt >= 1000 then -- maximum range which will allow to the car to pass through the obstacles (wide)
            car_status <= "10";
        end if;
    end if; 

    if car_status = "10" then -- car movement after finding a path for the car
        time2 <= time2 + 1;
        motor <= way; --
        if time2 = time1 - (cnt / 2) then
            motor <= "0000";
            car_status <= "00";
        end if;
    end if;
end process;
end behave;