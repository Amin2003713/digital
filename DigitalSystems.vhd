library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity DigitalSystems is
    port(
        CLK : in     std_logic;
        LED : buffer std_logic := '0'
    );
end entity DigitalSystems;

architecture rtl of DigitalSystems is
    signal counter : integer range 0 to 1000000 := 0;
begin

    blink: process(clk)
    begin
        if rising_edge(clk) then
            if counter < 1000000 then
                counter <= counter + 1;
            else
                counter <= 0;
                LED     <= NOT LED;
            end if;
        end if;
    end process blink;

end architecture rtl;