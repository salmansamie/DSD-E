-- Engineer: Loui Rajabi
-- 2input xor Gate

library ieee;
use ieee.std_logic_1164.all;

entity xorgate2 is Port(
A : in std_logic;
B : in std_logic;
Y : out std_logic
);
end xorgate2;
architecture func of xorgate2 is
begin
Y <= A xor B;
end func;
