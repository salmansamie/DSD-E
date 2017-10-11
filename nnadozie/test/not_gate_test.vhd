--------------------------------------------
--Engineer: Nnadozie Okeke
--Description: not_gate test bench
--Dependencies: not_gate.vhd
---------------------------------------------

-- import std_logic libraries to use std_logic type
library IEEE;
use IEEE.std_logic_1164.all;


entity not_gate_test_bench is
  -- empty
  -- because a test bench has no input or output ports of its own
end not_gate_test_bench;

architecture not_test_arch of not_gate_test_bench is
  -- declare the device to be tested as a component
  component not_gate
    port( a : in std_logic;
          f : out std_logic);
  end component;
  -- define signals to provide input and output to test device
  signal sig_a, sig_f : std_logic;

  -- instantiate the test device and map the test signals to the appropriate ports of the device
  begin
    uut : not_gate port map (sig_a, sig_f);
    tb  : process
          begin
            wait for 100ns;
              sig_a <= '0';
            wait for 100ns;
              assert(sig_f='1') report "FAIL 0" severity error; -- check output is 1, if not report Fail for input sig_a = 0
              sig_a <= '1';
            wait for 100ns;
              assert(sig_f='0') report "FAIL 1" severity error;
            wait; -- end of test: wait forever
          end process;
end not_test_arch;
