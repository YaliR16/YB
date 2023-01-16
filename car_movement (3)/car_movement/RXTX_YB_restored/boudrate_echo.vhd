library ieee;
use ieee.std_logic_1164.all;
entity boudrate_echo is
	port(clk_50MHz: in bit;
		f_out: buffer bit);
end;
architecture behave of boudrate_echo is 
signal cnt: integer range 0 to 2900;
begin
	process(clk_50MHz)
	begin
		if clk_50MHz'event and clk_50MHz='1' then
		if cnt<1450 then
			cnt<=cnt+1;
		else
		cnt<=0;
		f_out <= not f_out;
	 end if;
	end if;
end process;
end behave;	