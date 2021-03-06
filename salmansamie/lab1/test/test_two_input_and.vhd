
--Engineer: Salman Rahman
--Student ID: 140777039
--Email: salman.rahman@se14.qmul.ac.uk
--Reviewed by Okeke NNadozie

--importing the necessary librabries
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--defining the entity for the gate
entity test_two_input_and is
end test_two_input_and;

--defining the architecture for the test
architecture test_and_architecture of test_two_input_and is
    component and_gate
        Port (a, b: in std_logic; 
                 f: out std_logic);
    end component;

    --defining the signal for test device
    signal sig_a, sig_b, sig_f : std_logic;

    -- Instantiate the Unit Under Test (UUT) for the component and_gate
    begin
        uut: and_gate port map(sig_a, sig_b, sig_f);
        main_tester: process
                            begin
                                --test-01
                                sig_a <= '0';
                                sig_b <= '0';
                                wait for 100 ns;
                                assert(sig_f = '0') report "ERROR at test-01" severity error;

                                --test-02
                                sig_a <='0';
                                sig_b <='1';
                                wait for 100 ns;
                                assert(sig_f = '0') report "ERROR at test-02" severity error;

                                --test-03
                                sig_a <='1';
                                sig_b <='0';
                                wait for 100 ns;
                                assert(sig_f = '0') report "ERROR at test-03" severity error;

                                --test-04
                                sig_a <= '1';
                                sig_b <= '1';
                                wait for 100 ns;
                                assert(sig_f = '1') report "ERROR at test-04" severity error;
        end process;
end test_and_architecture;
