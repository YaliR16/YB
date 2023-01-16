library ieee;
use ieee.std_logic_1164.all;
entity servo_status  is
port(clk_50MHz : in bit;
     degree : in integer range  0 to 180; 
     servo_status : out bit_vector (1 downto 0));
end;
architecture behave of servo_status  is
begin
    process (degree)
    begin
        if degree < 85 then -- 85
            servo_status <= "01";
        elsif degree > 95 then -- 95
            servo_status <= "10";
        else
            servo_status <= "11";
        end if;
    end process;
end behave;