-- Engineer: Loui Rajabi
-- 2input or Gate

library ieee;
use ieee.std_logic_1164.all;

entity orGate2 is port(
   A : in std_logic;
   B : in std_logic;
   F : out std_logic);
end orGate2;

architecture func of orGate2 is
begin
   F <= A or B;
end func;
