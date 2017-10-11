--------------------------------------------
--Engineer: Nnadozie Okeke
--Description: a two_input_multiplexer

-- s_in a b | f
-- 0    0 0  0
-- 0    0 1  0
-- 0    1 0  1
-- 0    1 1  1
-- 1    0 0  0
-- 1    0 1  1
-- 1    1 0  0
-- 1    1 1  1

---------------------------------------------

-- import std_logic libraries to use std_logic type
library IEEE;
use IEEE.std_logic_1164.all;

-- declare entity to describe the external interface for two input multiplexer
entity two_input_multiplexer is
  Port (  s_in, a, b : in std_logic;
          f : out std_logic);
end two_input_multiplexer;

-- in our architecture we define the internal functionality of our two input multiplexer
architecture multi_component_two_input_multiplexer_arch of two_input_multiplexer is

  -- define compnents which describe the external interface of our multiplexer's subcomponents
  component not_gate
    Port (  a : in std_logic;
            f : out std_logic);
  end component;

  component and_gate
    Port (  a : in std_logic;
            b : in std_logic;
            f : out std_logic);
  end component;

  component or_gate
    Port (  a : in std_logic;
            b : in std_logic;
            f : out std_logic);
  end component;

  --Declare the signals/connections between the subcomponents of our two input multiplexer
  signal sig_and1_in1, sig_or_in1, sig_or_in2 : std_logic;

  --map the declared signals to the appropriate ports of our subcomponents.
  --use signals only as interconnectors, not as inputs.
  begin
    NotGate   : not_gate port map (s_in, sig_and1_in1);
    AndGate1  : and_gate port map (a, sig_and1_in1, sig_or_in1);
    AndGate2  : and_gate port map (s_in, b, sig_or_in2);
    OrGate    : or_gate port map (sig_or_in1, sig_or_in2, f);

end multi_component_two_input_multiplexer_arch;
