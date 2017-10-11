--------------------------------------------
--Engineer: Nnadozie Okeke
--Description: a half_adder
-- a b| s c
-- 0 0  0 0
-- 0 1  1 0
-- 1 0  1 0
-- 1 1  0 1
---------------------------------------------

-- import std_logic libraries to use std_logic type
library IEEE;
use IEEE.std_logic_1164.all;

-- declare entity to describe the external interface for half_adder
entity half_adder is
  Port (  a : in std_logic; --a is an input port of type std_logic
          b : in std_logic;
          s : out std_logic;
          c : out std_logic); --c is an output port of type std_logic
end half_adder;

-- in our architecture we define the internal functionality of our half_adder
architecture low_level_half_adder of half_adder is
  begin
    process (a,b) -- this is the sensitivity list. Very important to include all used ports
    begin
      if a='0' and b='0' then
        s <= '0' after 7ns;
        c <= '0' after 7ns;
      elsif a='0' and b='1' then
        s <= '1' after 7ns;
        c <= '0' after 7ns;
      elsif a='1' and b='0' then
        s <= '1' after 7ns;
        c <= '0' after 7ns;
      elsif a='1' and b='1' then
        s <= '0' after 7ns;
        c <= '1' after 7ns;
      end if;
    end process;
end low_level_half_adder;
