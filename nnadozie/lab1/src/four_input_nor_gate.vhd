--------------------------------------------
--Engineer: Nnadozie Okeke
--Description: a four_input_nor_gate
-- a b d e | f
-- 0 0 0 0   1
-- 0 0 0 1   0
-- 0 0 1 0   0
-- 0 0 1 1   0
-- 0 1 0 0   0
-- 0 1 0 1   0
-- 0 1 1 0   0
-- 0 1 1 1   0
-- 1 0 0 0   0
-- 1 0 0 1   0
-- 1 0 1 0   0
-- 1 0 1 1   0
-- 1 1 0 0   0
-- 1 1 0 1   0
-- 1 1 1 0   0
-- 1 1 1 1   0
---------------------------------------------

-- import std_logic libraries to use std_logic type
library IEEE;
use IEEE.std_logic_1164.all;

-- declare entity to describe the external interface for four_input_nor_gate
entity four_input_nor_gate is
  Port (  a : in std_logic; --a is an input port of type std_logic
          b : in std_logic;
          d : in std_logic;
          e : in std_logic;
          f : out std_logic); --f is an output port of type std_logic
end four_input_nor_gate;

-- in our architecture we define the internal functionality of our four_input_nor_gate
architecture low_level_four_input_nor_gate_arch of four_input_nor_gate is
  begin
    process (a,b,d,e) -- this is the sensitivity list. Very important to include all used ports
    begin
      if a='0' and b='0' and d='0' and e='0' then
        f <= '1' after 21ns;
      else
        f <= '0' after 21ns;
      end if;
    end process;
end low_level_four_input_nor_gate_arch;
