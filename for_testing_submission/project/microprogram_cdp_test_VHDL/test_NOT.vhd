
--Engineer: Salman Rahman
--Student ID: 140777039
--Email: salman.rahman@se14.qmul.ac.uk
--Reviewed by Okeke NNadozie

--importing the necessary librabries
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--defining the entity for NOT gate
entity test_not is
end test_not;

--defining the architecture for NOT test
architecture behavioural of test_not is
    component not_gate
        Port (a: in std_logic; 
              f: out std_logic);
    end component;

    --defining the signal for test device
    signal sig_a, sig_f : std_logic := '0';

    -- Instantiate the Unit Under Test (UUT) for the component not_gate
    begin
        uut: not_gate port map(sig_a, sig_f);
        main_tester: process
                            begin
										  wait for 100 ns;
                                sig_a <= '0';	-- check f=1
                                wait for 100 ns;
                                sig_a <='1';		-- check f=0
										  
                                wait;
        end process;
end;
