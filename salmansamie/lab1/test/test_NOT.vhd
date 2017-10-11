
--Engineer: Salman Rahman
--Student ID: 140777039
--Email: salman.rahman@se14.qmul.ac.uk

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--defining the entity for NOT gate
entity test_not is
end test_not;

--defining the architecture for NOT test
architecture test_not_architecture of test_not is
    component not_gate
        Port (a: in std_logic; 
              f: out std_logic);
    end component;

    --defining the signal for test device
    signal sig_a, sig_f : std_logic;

    -- Instantiate the Unit Under Test (UUT) for the component not_gate
    begin
        uut: not_gate port map(sig_a, sig_f);
        main_tester: process
                            begin
                                --test-01
                                sig_a <= '0';
                                wait for 100 ns;
                                assert(sig_f = '1') report "ERROR at test-01" severity error;

                                --test-02
                                sig_a <='1';
                                wait for 100 ns;
                                assert(sig_f = '0') report "ERROR at test-02" severity error;
        end process;
end test_not_architecture;
