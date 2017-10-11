-- Engineer: Loui Rajabi
-- 2input and Gate

library ieee;
use ieee.std_logic_1164.all

library ieee;
use ieee.std_logic_1164.all;

entity andGate2 is Port(
A : in std_logic;
B : in std_logic;
Y : out std_logic
);
end andGate2;
architecture func of andGate2 is
begin
  F <= A and B;
end func;
