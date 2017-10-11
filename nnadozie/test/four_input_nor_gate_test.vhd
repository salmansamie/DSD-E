--------------------------------------------
--Engineer: Nnadozie Okeke
--Description: four_input_nor_gate test bench
--Dependencies: four_input_nor_gate.vhd
---------------------------------------------

-- import std_logic libraries to use std_logic type
library IEEE;
use IEEE.std_logic_1164.all;

entity four_input_nor_gate_test_bench is
  --empty
  --because test benches have no external inputs nor outputs of their own
end four_input_nor_gate_test_bench;

architecture four_input_nor_gate_test_arch of four_input_nor_gate_test_bench is
  --declare the device to be tested as a component
  component four_input_nor_gate
    port( a: in std_logic;
          b: in std_logic;
          d: in std_logic;
          e: in std_logic;
          f: out std_logic);
  end component;
  --define signals to provide input and output to test device
  signal sig_a, sig_b, sig_d, sig_e, sig_f : std_logic;

  --instantiate the test device and map test signals to appropriate ports of the device
  begin
    uut : four_input_nor_gate port map (sig_a, sig_b, sig_d, sig_e, sig_f); --uut stands for unit-under-test, just a reference to the test four_input_nor_gate. It is an instance name.
    tb  : process
          begin
            wait for 100ns;
              sig_a <= '0';
              sig_b <= '0';
              sig_d <= '0';
              sig_e <= '0';
            wait for 100ns;
              assert(sig_f='1') report "Fail 0/0/0/0" severity error; --check output is 1, if not report a Fail for input sig_a=0, sig_b=0, sig_d=0, sig_e
              sig_e <= '1';
            wait for 100ns;
              assert(sig_f='0') report "Fail 0/0/0/1" severity error;
              sig_d <= '1';
              sig_e <= '0';
            wait for 100ns;
              assert(sig_f='0') report "Fail 0/0/1/0" severity error;
              sig_e <= '1';
            wait for 100ns;
              assert(sig_f='0') report "Fail 0/0/1/1" severity error;
              sig_b <= '1';
              sig_d <= '0';
              sig_e <= '0';
            wait for 100ns;
              assert(sig_f='0') report "Fail 0/1/0/0" severity error;
              sig_e <= '1';
            wait for 100ns;
              assert(sig_f='0') report "Fail 0/1/0/1" severity error;
              sig_d <= '1';
              sig_e <= '0';
            wait for 100ns;
              assert(sig_f='0') report "Fail 0/1/1/0" severity error;
              sig_e <= '1';
            wait for 100ns;
              assert(sig_f='0') report "Fail 0/1/1/1" severity error;
              sig_a <= '1';
            wait for 100ns;
              assert(sig_f='0') report "Fail 1/0/0/0" severity error;
              sig_e <= '1';
            wait for 100ns;
              assert(sig_f='0') report "Fail 1/0/0/1" severity error;
              sig_d <= '1';
              sig_e <= '0';
            wait for 100ns;
              assert(sig_f='0') report "Fail 1/0/1/0" severity error;
              sig_e <= '1';
            wait for 100ns;
              assert(sig_f='0') report "Fail 1/0/1/1" severity error;
              sig_b <= '1';
              sig_d <= '0';
              sig_e <= '0';
            wait for 100ns;
              assert(sig_f='0') report "Fail 1/1/0/0" severity error;
              sig_e <= '1';
            wait for 100ns;
              assert(sig_f='0') report "Fail 1/1/0/1" severity error;
              sig_d <= '1';
              sig_e <= '0';
            wait for 100ns;
              assert(sig_f='0') report "Fail 1/1/1/0" severity error;
              sig_e <= '1';
            wait for 100ns;
              assert(sig_f='0') report "Fail 1/1/1/1" severity error;
            wait; --end of test: wait forever...
          end process;
end four_input_nor_gate_test_arch;
