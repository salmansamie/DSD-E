--------------------------------------------
--Engineer: Nnadozie Okeke
--Description: not_gate test bench
--Dependencies: not_gate.vhd
---------------------------------------------

-- import std_logic libraries to use std_logic type
library IEEE;
use IEEE.std_logic_1164.all;

-- declare entity to describe the external interface for this not_gate
entity not_gate is
  Port( a : in std_logic; -- a is an input port of type std_logic
        f : out std_logic); -- f is an output port of type std_logic
end not_gate;

-- in our architecture we define the internal functionality of our not gate
architecture low_level_not of not_gate is
  begin
    process (a) --sensitivity list. Very important to include all used ports
    begin
      if a='0' then
        f <= '1' after 7ns;
      else
        f <= '0' after 7ns;
      end if;
    end process;
end low_level_not;
