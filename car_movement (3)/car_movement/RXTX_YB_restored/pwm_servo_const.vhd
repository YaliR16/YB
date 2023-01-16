library ieee;
use ieee.std_logic_1164.all;
entity pwm_servo_const is
port ( clk_50MHz: in bit; 
       Fout : buffer bit);
end;
architecture behave of pwm_servo_const is
signal cnt : integer range 0 to 1000000;  -- 1/8 sec 
begin
process (clk_50MHz)
begin
if clk_50MHz'event and clk_50MHz='1' then 
   cnt <= cnt + 1;

	if cnt < 200000 then 
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