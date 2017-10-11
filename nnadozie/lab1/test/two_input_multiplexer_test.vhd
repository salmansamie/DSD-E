--------------------------------------------
--Engineer: Nnadozie Okeke
--Description: two_input_multiplexer test bench
--Dependencies: two_input_multiplexer.vhd
---------------------------------------------

-- import std_logic libraries to use std_logic type
library IEEE;
use IEEE.std_logic_1164.all;

entity two_input_multiplexer_test_bench is
  --empty
  --because test benches have no external inputs nor outputs of their own
end two_input_multiplexer_test_bench;

architecture two_input_multiplexer_test_arch of two_input_multiplexer_test_bench is
  --declare the device to be tested as a component
  component two_input_multiplexer
    port (  s_in, a, b : in std_logic;
            f : out std_logic);
  end component;

  --define signals to provide input and output to test device
  signal sig_s, sig_a, sig_b, sig_f : std_logic;

  --instantiate the test device and map test signals to appropriate ports of the device
  begin
    uut : two_input_multiplexer port map (sig_s, sig_a, sig_b, sig_f); --uut stands for unit-under-test, just a reference to the test two_input_multiplexer. It is an instance name.
    tb  : process
          begin
            wait for 100ns;
              sig_s <= '0';
              sig_a <= '0';
              sig_b <= '0';
            wait for 100ns;
              assert(sig_f='0') report "Fail 0/0/0" severity error; --check output is 0, if not report a Fail for input sig_a=0, sig_b=0, sig_d=0
              sig_b <= '1';
            wait for 100ns;
              assert(sig_f='0') report "Fail 0/0/1" severity error;
              sig_a <= '1';
              sig_b <= '0';
            wait for 100ns;
              assert(sig_f='1') report "Fail 0/0/1" severity error;
              sig_b <= '1';
            wait for 100ns;
              assert(sig_f='1') report "Fail 0/1/1" severity error;
              sig_s <= '1';
              sig_a <= '0';
              sig_b <= '0';
            wait for 100ns;
              assert(sig_f='0') report "Fail 1/0/0" severity error;
              sig_b <= '1';
            wait for 100ns;
              assert(sig_f='1') report "Fail 1/0/1" severity error;
              sig_a <= '1';
              sig_b <= '0';
            wait for 100ns;
              assert(sig_f='0') report "Fail 1/1/0" severity error;
              sig_b <= '1';
            wait for 100ns;
              assert(sig_f='1') report "Fail 1/1/1" severity error;
            wait; --end of test: wait forever...
          end process;
end two_input_multiplexer_test_arch;
