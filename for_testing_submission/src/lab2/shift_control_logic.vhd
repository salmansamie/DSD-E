--------------------------------------------
--Engineer: Nnadozie Okeke

--------------------------------------------

-- import std_logic libraries to use std_logic type
library IEEE;
use IEEE.std_logic_1164.all;

-- declare entity to describe the external interface for the four input multiplexer
entity shift_control_logic is
  Port (  Input : in std_logic_vector(2 downto 0);
          Output : out std_logic_vector(1 downto 0));
end shift_control_logic;

architecture behavioural of shift_control_logic is
  begin
    Output(0) <= ((not Input(2)) and (input(1) or input(0))) after 14 ns;
    Output(1) <= ((Input(2)) and (input(1) or input(0))) after 14 ns;
end behavioural;
