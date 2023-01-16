library ieee;
use ieee.std_logic_1164.all;

entity piezo_led is
port (clk : in bit;
		dist : in integer range 0 to 255;
		auto : in bit;
		piezo_freq : buffer bit;
		led : out bit);
end;
architecture behave of piezo_led is
signal cnt : integer range 0 to 75757;
signal second : integer range 0 to 50000000;
type state_type is (wait4o,action);
signal state: state_type;
begin
process(clk)
begin
if clk'event and clk='1' then
case state is
when wait4o => if dist > 20 then state <= state; else state <= action; end if;
when action => if second < 50000000 then second <= second + 1; state <= state; else state <= wait4o; end if;
					if dist < 20 then
						led <= '1';
					else
						led <='0';
					end if;
end case;
end if;
end process;
end behave;
