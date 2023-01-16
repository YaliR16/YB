library ieee;
use ieee.std_logic_1164.all;
entity counter_up_down is
port ( clk_20Hz: in bit;
       ud : in bit; 
       sofer : buffer integer range 0 to 180);
end;
architecture behave of counter_up_down is
begin
process (clk_20Hz,ud)
begin
if clk_20Hz'event and clk_20Hz='1' and ud = '1' then 
	if sofer<180 then 
		sofer<=sofer+1; 
	end if;
elsif clk_20Hz'event and clk_20Hz='1' and ud = '0' then
if sofer > 0 then 
		sofer<=sofer-1;
end if;		
end if;
end process;
end behave;