--Engineer: Salman Rahman
--Email: salman.rahman@se14.qmul.ac.uk
--Description: RFC

-- In this one I have imported d_flip_flop_NO_RST
-- since we need a D-flip-flop without an async reset.

-- all imported previous lab components are functional and working

library ieee;
use ieee.std_logic_1164.all;

--Entity for RFC
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

-- The function of RFC is defined in the architecture below
architecture Behavioural of RFC is
    -- from Lab1: two_input_multiplexer represents for Write Enable WE
    component two_input_multiplexer is
        Port(
            s_in :in std_logic;
            a : in std_logic;
            b : in std_logic;
            f : out std_logic
            );
    end component;

    --from Lab3: tri_buff represents for REA and REB 
    component tri_buff is
        Port (
            Input : in std_logic;
            enable : in std_logic;
            Output : out std_logic
            );
    end component;

    --from Lab3: this will 




end Behavioural; 

