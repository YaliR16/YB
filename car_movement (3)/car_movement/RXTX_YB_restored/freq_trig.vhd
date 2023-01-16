library ieee;
use ieee.std_logic_1164.all;
entity freq_trig is
port ( clk_50MHz: in bit;  
       Fout : buffer bit);-- (20µ/50m)(50M/(1/50m)) 
end;
architecture behave of freq_trig is
signal cnt : integer range 0 to 2500000;

begin
process (clk_50MHz)
begin
if clk_50MHz'event and clk_50MHz='1' then 
   cnt <= cnt + 1;
	
	if cnt < 1000 then 
	fout <= '1';
	else
	fout <= '0';
	end if;
	
	if cnt = 25000000 then 
	cnt<=0;
	end if;
	
end if;
end process;
end behave;