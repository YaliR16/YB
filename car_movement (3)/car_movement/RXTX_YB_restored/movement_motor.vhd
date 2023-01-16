library ieee;
use ieee.std_logic_1164.all;
entity movement_motor is
port ( Distance : in integer range 0 to 255;
       M : buffer bit_vector(3 downto 0));
end;
architecture behave of movement_motor is
begin 
process(distance)
begin
if distance <20 then
m <= "0000";
else
end if;
end process;
end behave;

