--Engineer: Salman Rahman
--Email: salman.rahman@se14.qmul.ac.uk


-- 8 Bit Comparator:
-- An 8-bit comparator compares the two 8-bit numbers by cascading of two 4-bit comparators.

--                  |-----------|
--   8-bit IN-------|  8-bit    |
--                  |           |------ Output
--   8-bit IN  -----|comparator |
--                  |-----------|


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Entity declaration
entity eight_bit_comparator is
    generic(n:positive:=8);
        Port (
            InA : in STD_LOGIC_VECTOR (n-1 downto 0);
            InB : in STD_LOGIC_VECTOR (n-1 downto 0);
            Output : out STD_LOGIC
            );
end eight_bit_comparator;

--Architecture definition
architecture Behavioral of eight_bit_comparator is
    begin
        -- We will use process for InA and InB
        process (InA, InB)
            begin
                -- if Input A==B then Output is 1, else Output is 0
                if InA = InB then
                Output<='1'  after 14 ns;
                else
                Output<='0'  after 14 ns;
                end if;
        end process;
end Behavioral;
