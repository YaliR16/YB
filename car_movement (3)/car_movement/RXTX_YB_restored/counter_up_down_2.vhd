library ieee;
use ieee.std_logic_1164.all;
entity counter_up_down_2 is
port ( clk_20Hz: in bit;
       ud : in bit;
       sofer : buffer integer range 0 to 180 := 90);
end;
architecture behave of counter_up_down_2 is
type state_type is (movement,sofer_180,sofer_0);
signal state: state_type;
begin
process (clk_20Hz,ud)
begin
if clk_20Hz'event and clk_20Hz='1' then
case state is
when movement => sofer <= 90;
                  if ud ='0' then state<=state;
                  else state<=sofer_180;
						end if;
when sofer_180 => if sofer <180 then sofer <= sofer + 1;state<=state; 
						elsif sofer = 180 then state<=sofer_0;
						end if;
when sofer_0 => if sofer > 0 then sofer <= sofer - 1 ; state<=state;
					 elsif sofer = 0 then state <= movement;
					 end if;
end case;
end if;
end process;
end behave;