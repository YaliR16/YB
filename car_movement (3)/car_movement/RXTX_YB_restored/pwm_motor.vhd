library ieee;
use ieee.std_logic_1164.all;
entity pwm_motor is
port (clk_50MHz : in bit;
		distance : integer range 0 to 255;
      motor_status : in bit_vector (1 downto 0);
      clk_motor : buffer bit);
end;
architecture behave of pwm_motor is
signal cnt1 : integer range 0 to 5000;
signal cnt2 : integer range 0 to 5000;
begin
    process (clk_50MHz)
    begin
        if clk_50MHz'event and clk_50MHz='1' then 
            if motor_status = "11" then
                cnt2 <= 0;
                cnt1 <= cnt1 + 1;
                if cnt1 < 3500 then 
                    clk_motor <= '1';
                else
                    clk_motor <= '0';
                end if;
                if cnt1 = 5000 then 
                    cnt1 <= 0;
                end if;
            elsif motor_status = "01" or motor_status = "10" then
                cnt1 <= cnt1 + 1;
                if cnt1 < (3500 + cnt2) then 
                    clk_motor <= '1';
                else
                    clk_motor <= '0';
                end if;
                if cnt1 = 5000 then 
                    cnt1 <= 0;
                    if cnt2 < 500 then
                        cnt2 <= cnt2 + 1;
                    end if;
                end if;
            else -- motor_status = "00"
                cnt2 <= 0;
                cnt1 <= cnt1 + 1;
                if cnt1 < (distance*150) then -- 3000/20 = 150
                    clk_motor <= '1';
                else
                    clk_motor <= '0';
                end if;
                if cnt1 = 5000 then 
                    cnt1 <= 0;
                end if;
				end if;
        end if;
	end process;
end behave;