--------------------------------------------
--Engineer: Nnadozie Okeke
--Description: half_adder test bench
--Dependencies: half_adder.vhd
---------------------------------------------

-- import std_logic libraries to use std_logic type
library IEEE;
use IEEE.std_logic_1164.all;

entity half_adder_test_bench is
  --empty
  --because test benches have no external inputs nor outputs of their own
end half_adder_test_bench;

architecture half_adder_test_arch of half_adder_test_bench is
  --declare the device to be tested as a component
  component half_adder
    port( a: in std_logic;
          b: in std_logic;
          s: out std_logic;
          c: out std_logic);
  end component;
  --define signals to provide input and output to test device
  signal sig_a, sig_b, sig_s, sig_c : std_logic;

  --instantiate the test device and map test signals to appropriate ports of the device
  begin
    uut : half_adder port map (sig_a, sig_b, sig_s, sig_c); --uut stands for unit-under-test, just a reference to the test half_adder. It is an instance name
    tb  : process
          begin
            wait for 100ns;
              sig_a <= '0';
              sig_b <= '0';
            wait for 100ns;
              assert(sig_s='0') report "Fail 0/0" severity error; --check output is 1, if not report a Fail for input sig_a=0, sig_b=0
              assert(sig_c='0') report "Fail 0/0" severity error; --check output is 1, if not report a Fail for input sig_a=0, sig_b=0
              sig_b <= '1';
            wait for 100ns;
              assert(sig_s='1') report "Fail 0/1" severity error;
              assert(sig_c='0') report "Fail 0/1" severity error;
              sig_a <= '1';
              sig_b <= '0';
            wait for 100ns;
              assert(sig_s='1') report "Fail 1/0" severity error;
              assert(sig_c='0') report "Fail 1/0" severity error;
              sig_b <= '1';
            wait for 100ns;
              assert(sig_s='0') report "Fail 1/1" severity error;
              assert(sig_c='1') report "Fail 1/1" severity error;
            wait; --end of test: wait forever...
          end process;
end half_adder_test_arch;
