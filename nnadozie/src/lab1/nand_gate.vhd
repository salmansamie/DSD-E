--------------------------------------------
--Engineer: Nnadozie Okeke
--Description: nand_gate test bench
--Dependencies: nand_gate.vhd
---------------------------------------------

-- import std_logic libraries to use std_logic type
library IEEE;
use IEEE.std_logic_1164.all;

-- declare entity to describe the external interface for nand_gate
entity nand_gate is
  Port (  a : in std_logic; --a is an input port of type std_logic
          b : in std_logic;
          f : out std_logic); --f is an output port of type std_logic
end nand_gate;

-- in our architecture we define the internal functionality of our nand_gate
architecture low_level_nand of nand_gate is
  begin
    process (a,b) -- this is the sensitivity list. Very important to include all used ports
    begin
      if a='1' and b='1' then
        f <= '0' after 7ns;
      else
        f <= '1' after 7ns;
      end if;
    end process;
end low_level_nand;
