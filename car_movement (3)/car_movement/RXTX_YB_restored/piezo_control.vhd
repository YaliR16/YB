library ieee;
use ieee.std_logic_1164.all;
entity piezo_control is
port ( clk_50MHz: in bit; 
		 dist : in integer range 0 to 255;
       pwm_in : in bit;
		 pwm_out : out bit);
end;
architecture behave of piezo_control is
type state_type is (wait4action,action);
signal state: state_type;
signal second: integer range 0 to 50000000;
begin
	process (clk_50MHz)
	begin
		if clk_50MHz'event and clk_50MHz='1' then
		case state is
			when wait4action => 
				if dist > 20 then 
					state <= state;
					pwm_out <= '0';
				else
					state <= action;
				end if;
			when action =>
				if second < 50000000 then
					second <= second + 1;
					pwm_out <= pwm_in;
					state <= state;
				else
				if dist > 20 then
					second <= 0;
					state <= wait4action;
					end if;
				end if;
		end case;
		end if;
	end process;
end behave;