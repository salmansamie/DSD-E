-- Engineer: Loui Rajabi
-- 2input or Gate

library ieee;
use ieee.std_logic_1164.all

entity orgate2 is Port(
A : in std_logic;
B : in std_logic;
Y : out std_logic
);
end orgate2;
architecture func of orgate2 is
begin
F <= A or B; after ns 5;
end func;
