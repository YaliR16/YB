library ieee;
use ieee.std_logic_1164.all;
entity clk_div_20_Hz is
port ( clk_50MHz: in bit;  -- 48Khz
       Fout : buffer bit);
end;
architecture behave of clk_div_20_Hz is
signal cnt : integer range 0 to 750000;  -- 1/8 sec 
signal tmp : bit;
begin
process (clk_50MHz)
begin
if clk_50MHz'event and clk_50MHz='1' then 
	if cnt<750000 then 
		cnt<=cnt+1; 
	else 
		cnt<=0;
		Fout<=not Fout; 
	end if;
end if;
end process;
end behave;
