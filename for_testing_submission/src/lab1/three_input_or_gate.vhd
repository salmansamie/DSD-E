--------------------------------------------
--Engineer: Nnadozie Okeke
--Reviewed by: Salman Rahman
--Description: three_input_or_gate
-- a b d | f
-- 0 0 0  0
-- 0 0 1  1
-- 0 1 0  1
-- 0 1 1  1
-- 1 0 0  1
-- 1 0 1  1
-- 1 1 0  1
-- 1 1 1  1
---------------------------------------------

-- import std_logic libraries to use std_logic type
library IEEE;
use IEEE.std_logic_1164.all;

-- declare entity to describe the external interface for three_input_or_gate
entity three_input_or_gate is
  Port (  a : in std_logic; --a is an input port of type std_logic
          b : in std_logic;
          d : in std_logic;
          f : out std_logic); --f is an output port of type std_logic
end three_input_or_gate;

-- in our architecture we define the internal functionality of our three_input_or_gate
architecture low_level_three_input_or_gate of three_input_or_gate is
  begin
    process (a,b,d) -- this is the sensitivity list. Very important to include all used ports
    begin
      if a='1' or b='1' or d='1' then
        f <= '1' after 28ns;
      else
        f <= '0' after 28ns;
      end if;
    end process;
end low_level_three_input_or_gate;
