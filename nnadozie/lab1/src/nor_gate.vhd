--------------------------------------------
--Engineer: Nnadozie Okeke
--Description: a NOR gate
-- b a| f
-- 0 0  1
-- 0 1  0
-- 1 0  0
-- 1 1  0
---------------------------------------------

-- import std_logic libraries to use std_logic type
library IEEE;
use IEEE.std_logic_1164.all;

-- declare entity to describe the external interface for nor_gate
entity nor_gate is
  Port (  a : in std_logic; --a is an input port of type std_logic
          b : in std_logic;
          f : out std_logic); --f is an output port of type std_logic
end nor_gate;

-- in our architecture we define the internal functionality of our nor_gate
architecture low_level_nor of nor_gate is
  begin
    process (a,b) -- this is the sensitivity list. Very important to include all used ports
    begin
      if a='0' and b='0' then
        f <= '1' after 7ns;
      else
        f <= '0' after 7ns;
      end if;
    end process;
end low_level_nor;
