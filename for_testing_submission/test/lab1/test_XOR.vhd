
--Engineer: Salman Rahman
--Student ID: 140777039
--Email: salman.rahman@se14.qmul.ac.uk
--Reviewed by Okeke NNadozie

--importing the necessary librabries
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--declaring xor testbench entity
entity test_xor is
end test_xor;

--defining the architecture for the test
architecture test_xor_architecture of test_xor is
    component xor_gate
        port( a, b : in std_logic;
                 f : out std_logic);
    end component;

    --defining the signal for the test device
    signal sig_a, sig_b : std_logic := '0';
	 signal sig_f : std_logic;

    --Instantiate the Unit Under Test (UUT) for the component xor_gate
    begin
        uut: xor_gate port map(sig_a, sig_b, sig_f);
        main_tester: process
                            begin
									 wait for 100 ns;
                            --test-01
                            sig_a <= '0';
                            sig_b <= '0';  --check f=0
                            wait for 100 ns;

                            --test-02
                            sig_a <= '0';
                            sig_b <= '1'; --check f=1
                            wait for 100 ns;

                            --test-03
                            sig_a <= '1';
                            sig_b <= '0'; --check f=1
                            wait for 100 ns;

                            --test-04
                            sig_a <= '1';
                            sig_b <= '1'; --check f=0
									 
									 wait;
        end process;
end test_xor_architecture;