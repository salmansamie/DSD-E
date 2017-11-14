--------------------------------------------
--Engineer: Nnadozie Okeke
--Reviewed by: Salman Rahman
--Description: three_input_or_gate test bench
--Dependencies: three_input_or_gate.vhd
---------------------------------------------

-- import std_logic libraries to use std_logic type
library IEEE;
use IEEE.std_logic_1164.all;

entity three_input_or_gate_test_bench is
  --empty
  --because test benches have no external inputs nor outputs of their own
end three_input_or_gate_test_bench;

architecture three_input_or_gate_test_arch of three_input_or_gate_test_bench is
  --declare the device to be tested as a component
  component three_input_or_gate
    port( a: in std_logic;
          b: in std_logic;
          d: in std_logic;
          f: out std_logic);
  end component;
  --define signals to provide input and output to test device
  signal sig_a, sig_b : std_logic := '0';
  signal sig_d, sig_f : std_logic;

  --instantiate the test device and map test signals to appropriate ports of the device
  begin
    uut : three_input_or_gate port map (sig_a, sig_b, sig_d, sig_f); --uut stands for unit-under-test, just a reference to the test three_input_or_gate. It is an instance name.
    tb  : process
          begin
            wait for 100ns;
              sig_a <= '0';
              sig_b <= '0';
              sig_d <= '0'; --check f=0
            wait for 100ns;
              sig_d <= '1'; --check f=1
            wait for 100ns;
              sig_b <= '1';
              sig_d <= '0'; --check f=1
            wait for 100ns;
              sig_d <= '1'; --check f=1 
            wait for 100ns;
              sig_a <= '1';
              sig_b <= '0';
              sig_d <= '0'; --check f=1
            wait for 100ns;
              sig_d <= '1'; --check f=1
            wait for 100ns;
              sig_b <= '1';
              sig_d <= '0'; --check f=1
            wait for 100ns;
              sig_d <= '1'; --check f=1
            wait; --end of test: wait forever...
          end process;
end three_input_or_gate_test_arch;
