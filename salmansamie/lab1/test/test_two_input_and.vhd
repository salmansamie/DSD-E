
--Engineer: Salman Rahman
--Email: salman.rahman@se14.qmul.ac.uk

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity test_two_input_and is
end test_two_input_and;

architecture test_not_architecture of test_two_input_and is
    component and_gate
        Port (a,b: in std_logic; 
	            f: out std_logic);
    end component;

