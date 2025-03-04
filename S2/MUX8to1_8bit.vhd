library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX8to1_8bit is
    port(
        D : in  STD_LOGIC_VECTOR(63 downto 0);   -- هشت ورودی 8 بیتی در قالب یک بردار 64 بیتی
        S : in  STD_LOGIC_VECTOR(2 downto 0);    -- سه خط انتخاب
        Y : out STD_LOGIC_VECTOR(7 downto 0)     -- خروجی 8 بیتی
    );
end MUX8to1_8bit;

architecture Behavioral of MUX8to1_8bit is
begin

    Y <= D(7 downto 0)     when (S = "000") else
         D(15 downto 8)    when (S = "001") else
         D(23 downto 16)   when (S = "010") else
         D(31 downto 24)   when (S = "011") else
         D(39 downto 32)   when (S = "100") else
         D(47 downto 40)   when (S = "101") else
         D(55 downto 48)   when (S = "110") else
         D(63 downto 56)   when (S = "111") else
         (others => '0');  -- مقدار پیش‌فرض در صورت نامعتبر بودن S

end Behavioral;
