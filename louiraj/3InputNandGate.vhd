-- Engineer: Loui Rajabi
-- 3input nand Gate

library ieee;
use ieee.std_logic_1164.all;

entity nandGate3 is port(
x: in std_logic;
y: in std_logic;
z: in std_logic;
f: out std_logic
);
end nandGate3;

architecture func of nandGate3 is

begin
f <= (x nand y) nand z;
end func;
