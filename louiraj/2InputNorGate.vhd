-- Engineer: Loui Rajabi
-- 2input nor Gate

library ieee;
use ieee.std_logic_1164.all;

entity norGate2 is Port(
A : in std_logic;
B : in std_logic;
Y : out std_logic
);
end norGate2;

architecture func of norGate2 is
begin
Y <= A nor B;
end func;
