library ieee;
use ieee.std_logic_1164.all;
entity piezo_freq is
port ( clk_50MHz: in bit;  
       fout : buffer bit);
end;
architecture behave of piezo_freq is
signal cnt: integer range 0 to 75757;
begin
	process (clk_50MHz)
	begin
		if clk_50MHz'event and clk_50MHz='1' then
			if cnt<75757 then
				cnt<=cnt+1;
			else
				cnt<=0;
				fout <= not fout;
			end if;
		end if;
	end process;
end behave;