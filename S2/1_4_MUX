library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX4to1_8bit is
    port(
        D : in  STD_LOGIC_VECTOR(31 downto 0);  -- چهار ورودی 8 بیتی در قالب یک بردار 32 بیتی
        S : in  STD_LOGIC_VECTOR(1 downto 0);   -- دو خط انتخاب
        Y : out STD_LOGIC_VECTOR(7 downto 0)    -- خروجی 8 بیتی
    );
end MUX4to1_8bit;

architecture Behavioral of MUX4to1_8bit is
begin

    -- تخصیص همزمان (Concurrent Assignment) با استفاده از عبارات when ... else
    Y <= D(7 downto 0)    when (S = "00") else
         D(15 downto 8)   when (S = "01") else
         D(23 downto 16)  when (S = "10") else
         D(31 downto 24)  when (S = "11") else
         (others => '0'); -- مقدار پیش‌فرض در صورت نامعتبر بودن S

end Behavioral;
