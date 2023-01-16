library ieee;
use ieee.std_logic_1164.all;
entity pwm is
port ( clk_50MHz: in bit;  
       fout : buffer bit;
		 cnt : buffer integer range 0 to 5000);
end;
architecture behave of pwm is
begin
process (clk_50MHz)
begin
if clk_50MHz'event and clk_50MHz='1' then 
   cnt <= cnt + 1;
	
	if cnt < 3000 then 
	fout <= '1';
	else
	fout <= '0';
	end if;
	
	if cnt = 5000 then 
	cnt<=0;
	end if;
	
end if;
end process;
end behave;