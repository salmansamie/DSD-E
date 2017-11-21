--Engineer: Salman Rahman
--Email: salman.rahman@se14.qmul.ac.uk

library ieee;
use ieee.std_logic_1164.all;

entity RFC is
    Port(
        DIN : in std_logic_1164;
        REA : in std_logic_1164;
        REB : in std_logic_1164;
        WE  : in std_logic_1164;
        CLK : in std_logic_1164;
        OA  : out std_logic_1164;
        OB  : out std_logic_1164
        );
end RFC;

architecture Behavioural of RFC is
    -- two_input_multiplexer is for Write Enable WE
    component two_input_multiplexer is
        Port(
            s_in :in std_logic; 
            a : in std_logic;
            b : in std_logic;
            f : out std_logic
            );
    end component;




end Behavioural; 

