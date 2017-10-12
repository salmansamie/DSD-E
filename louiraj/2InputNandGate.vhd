-- Engineer: Loui Rajabi
-- 2input nand Gate

library ieee;
use ieee.std_logic_1164.all;

entity nandGate2 is
   port(
   A  : in std_logic;
   B : in std_logic;
   F : out std_logic
   );
end nandGate2;

architecture func of nandGate2 is
begin
   F <= A nand B;
end func;
