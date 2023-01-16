library ieee;
use ieee.std_logic_1164.all;
entity led is
port (dist : in integer range 0 to 255;
		led : out bit);
end;
architecture behave of led is
begin
	process (dist)
	begin
		if dist > 20 then 
			led <= '0';
		else
			led <= '1';
		end if;
	end process;
end behave;