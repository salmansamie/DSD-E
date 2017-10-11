--------------------------------------------
--Engineer: Nnadozie Okeke
--Description: a full_adder
-- a    b c_in | sum c_out
-- 0    0  0     0    0
-- 0    0  1     1    0
-- 0    1  0     1    0
-- 0    1  1     0    1
-- 1    0  0     1    0
-- 1    0  1     0    1
-- 1    1  0     0    1
-- 1    1  1     1    1
---------------------------------------------

-- import std_logic libraries to use std_logic type
library IEEE;
use IEEE.std_logic_1164.all;

-- declare entity to describe the external interface for full_adder
entity full_adder is
  Port (  a, b, c_in : in std_logic; --a, b, c_in are input ports of type std_logic
          sum, c_out : out std_logic); --sum and c_out are output ports of type std_logic
end full_adder;

-- in our architecture we define the internal functionality of our full_adder
architecture multi_component_full_adder of full_adder is

  -- define compnents which describe the external interface of our multiplexer's subcomponents
  component half_adder
    Port (  a, b : in std_logic;
            s, c : out std_logic);
  end component;

  component or_gate
    Port (  a, b : in std_logic;
            f : out std_logic);
  end component;

  --Declare the signals/connections between the subcomponents of our full_adder
  signal sig_adder1_in1, sig_or_in1, sig_or_in0 : std_logic;

  --map the declared signals to the appropriate ports of our subcomponents.
  --use signals only as interconnectors, not as inputs.
  begin
    HalfA1 : half_adder port map (a, b, sig_adder1_in1, sig_or_in1);
    HalfA2 : half_adder port map (sig_adder1_in1, c_in, sum, sig_or_in0);
    OrGate : or_gate port map (sig_or_in0, sig_or_in1, c_out);

end multi_component_full_adder;
