library ieee;
use ieee.std_logic_1164.all;
entity servo_degree  is
port(clk_45Hz : in bit;
     degree : buffer integer range  0 to 180);
end;
architecture behave of servo_degree  is
type state_type is (servo_right, servo_left);
signal state: state_type;
begin   
    process (clk_45Hz)
	 begin
    if clk_45Hz'event and clk_45Hz='1' then
        case state is
            when servo_right => degree <= degree + 1; -- servo turning right
                                if degree >= 135 then
                                    state <= servo_left;
                                else
                                    state <= state;
                                end if;
            when servo_left =>  degree <= degree - 1; -- servo turning left
                                if degree <= 45 then
                                    state <= servo_right;
                                else
                                    state <= state;
                                end if;
        end case;
    end if;
    end process;
end behave;