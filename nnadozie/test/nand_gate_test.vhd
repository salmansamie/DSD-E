--------------------------------------------
--Engineer: Nnadozie Okeke
--Description: nand_gate test bench
--Dependencies: nand_gate.vhd
---------------------------------------------

-- import std_logic libraries to use std_logic type
library IEEE;
use IEEE.std_logic_1164.all;

entity nand_gate_test_bench is
  --empty
  --because test benches have no external inputs nor outputs of their own
end nand_gate_test_bench;

architecture test_arch of nand_gate_test_bench is
  --declare the device to be tested as a component
  component nand_gate
    port( a: in std_logic;
          b: in std_logic;
          f: out std_logic);
  end component;
  --define signals to provide input and output to test device
  --here sig_a and sig_b are set to 0. Notice the use of := not <=
  signal sig_a, sig_b : std_logic := '0';
  signal sig_f        : std_logic;

  --instantiate the test device and map test signals to appropriate ports of the device
  begin
    uut : nand_gate port map (sig_a, sig_b, sig_f); --uut stands for unit-under-test, just a reference to the test nand_gate
    tb  : process
          begin
            wait for 100ns;
              sig_a <= '0';
              sig_b <= '0';
            wait for 100ns;
              assert(sig_f='1') report "Fail 0/0" severity error; --check output is 1, if not report a Fail for input sig_a=0, sig_b=0
              sig_a <= '1';
            wait for 100ns;
              assert(sig_f='1') report "Fail 0/1" severity error;
              sig_a <= '0';
              sig_b <= '1';
            wait for 100ns;
              assert(sig_f='1') report "Fail 1/0" severity error;
              sig_a <= '1';
            wait for 100ns;
              assert(sig_f='0') report "Fail 1/1" severity error;
            wait; --end of test: wait forever...
          end process;
end test_arch;
