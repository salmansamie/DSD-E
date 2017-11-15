--------------------------------------------
--Engineer: Nnadozie Okeke
--Reviewed by: Salman Rahman
--Description: full_adder test bench
--Dependencies: full_adder.vhd
---------------------------------------------

-- import std_logic libraries to use std_logic type
library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder_test_bench is
  --empty
  --because test benches have no external inputs nor outputs of their own
end full_adder_test_bench;

architecture full_adder_test_arch of full_adder_test_bench is
  --declare the device to be tested as a component
  component full_adder
    port( a, b, c_in : in std_logic;
          sum, c_out: out std_logic);
  end component;

  --define signals to provide input and output to test device
  signal sig_a, sig_b, sig_c_in : std_logic := '0';
  signal sig_sum, sig_c_out : std_logic;

  --instantiate the test device and map test signals to appropriate ports of the device
  begin
    uut : full_adder port map (sig_a, sig_b, sig_c_in, sig_sum, sig_c_out); --uut stands for unit-under-test, just a reference to the test full_adder. It is an instance name.
    tb  : process
          begin
            wait for 100ns;
            sig_a <= '0';
            sig_b <= '0';
            sig_c_in <= '0'; --check s=0 c=0
            wait for 100ns;
            sig_a <= '0';
            sig_b <= '1';
            sig_c_in <= '0'; --check s=1 c=0
            wait for 100ns;
            sig_a <= '1';
            sig_b <= '0';
            sig_c_in <= '0'; --check s=1 c=0
            wait for 100ns;
            sig_a <= '1';
            sig_b <= '1';
            sig_c_in <= '0'; --check s=0 c=1
            wait for 100ns;
            sig_a <= '0';
            sig_b <= '0';
            sig_c_in <= '1'; --check s=1 c=0
            wait for 100ns;
            sig_a <= '0';
            sig_b <= '1';
            sig_c_in <= '1'; --check s=0 c=0
            wait for 100ns;
            sig_a <= '1';
            sig_b <= '0';
            sig_c_in <= '1'; --check s=0 c=0
            wait for 100ns;
            sig_a <= '1';
            sig_b <= '1';
            sig_c_in <= '1'; --check s=1 c=1
            wait; --end of test: wait forever...
          end process;
end full_adder_test_arch;
