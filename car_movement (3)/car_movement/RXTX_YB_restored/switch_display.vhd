library ieee;
use ieee.std_logic_1164.all;

entity switch_display is
port (switch:in bit;
      distance : in bit_vector(7 downto 0);
		data_in : in bit_vector(7 downto 0);
		data_out: buffer bit_vector(7 downto 0));
end;

architecture behave of switch_display is
begin
process(switch)
begin
if switch = '0' then
data_out <= data_in;
else
data_out <= distance;
end if;
end process;
end behave;
