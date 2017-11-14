--------------------------------------------
--Engineer: Nnadozie Okeke
--Description: a four_input_multiplexer

--------------------------------------------

-- import std_logic libraries to use std_logic type
library IEEE;
use IEEE.std_logic_1164.all;

-- declare entity to describe the external interface for the four input multiplexer
entity four_input_mux is
  Port (  s1, s0, a, b, c, d : in std_logic;
          f : out std_logic);
end four_input_mux;

architecture behavioural of four_input_mux is
  begin
    f <= (a and ((not s1) and (not s0))) or (b and ((not s1) and s0)) or (c and (s1 and (not s0))) or (d and (s1 and s0)) after 21 ns;
end behavioural;
