library ieee;
use ieee.std_logic_1164.all;
entity distance is
port ( clk_58Ms : in bit;
		 echo : in bit;
       dist : out integer range 0 to 255);
end;
architecture behave of distance is
type state_type is (wait4high,sofer,noel);
signal state: state_type;
signal cnt : integer range 0 to 255;
begin
process (clk_58Ms,echo)
begin
if clk_58Ms'event and clk_58Ms='1' then
case state is
when wait4high => cnt<=1;
                  if echo='0' then state<=state;
                  elsif echo='1' then state<=sofer;
				  end if;
when sofer => if echo='1' then cnt<=cnt+1;state<=state; 
              elsif echo='0' then state<=noel;
			  end if;
when noel => dist<=cnt; state<=wait4high;

end case;
end if;
end process;
end behave;
