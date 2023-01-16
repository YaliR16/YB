library ieee;
use ieee.std_logic_1164.all;
entity pwm_servo is
port ( clk_50MHz: in bit;
       degree : in integer range 0 to 180;  
       Fout : buffer bit);
end;
architecture behave of pwm_servo is
signal cnt : integer range 0 to 1000000;
signal th : integer range 0 to 1000000;
begin
process (clk_50MHz,degree)
begin
th <= 25000 + 554 * degree;
if clk_50MHz'event and clk_50MHz='1' then 
   cnt <= cnt + 1;

	if cnt < th then 
	fout <= '1';
	else
	fout <= '0';
	end if;
	
	if cnt = 1000000 then 
	cnt<=0;
	end if;
	end if;
end process;
end behave;


