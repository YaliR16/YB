library ieee;
use ieee.std_logic_1164.all;
entity distance1 is
port ( clk_58Ms: in bit;
		 echo : in bit;
       dist : buffer integer range 0 to 255;
		 cnt : buffer integer range 0 to 255);
end;
architecture behave of distance1 is
type state_type is (wait4high,sofer,ozer,noel);
signal state: state_type;
begin
process (clk_58Ms)
begin
if clk_58Ms'event and clk_58Ms='1' then
case state is
when wait4high => cnt<=0;
                  if echo='0' then state<=state;
                  elsif echo='1' then state<=sofer;
				  end if;
when sofer => if echo='1' then state<=state; cnt<=cnt+1;
              elsif echo='0' then state<=ozer;
			  end if;
when ozer => cnt<=cnt; state<=noel;
when noel => dist<=cnt; state<=wait4high;
end case;
end if;
end process;
end behave;