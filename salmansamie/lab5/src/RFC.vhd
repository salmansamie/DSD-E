--Engineer: Salman Rahman
--Email: salman.rahman@se14.qmul.ac.uk
--Description: RFC

-- All imported previous lab components are functional and working

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
    --from Lab1: from Okeke Nnadozie
    --two_input_multiplexer represents for Write Enable WE
    component two_input_multiplexer is
        Port(
            s_in :in std_logic;
            a : in std_logic;
            b : in std_logic;
            f : out std_logic
            );
    end component;

    --from Lab3: from Okeke Nnadozie
    --Tri State Buffer (tri_buff) represents for REA and REB 
    component tri_buff is
        Port(
            Input : in std_logic;
            enable : in std_logic;
            Output : out std_logic
            );
    end component;

    --from lab3: from Simran Kaur Phul
    --d_flipflop is the essential since RFC is built around this component
    component d_flipflop is
        Port(
            d, clk, reset, preset : in std_logic;
            q, qnot: out std_logic
            );
    end component;

    -- Now map all these components and ports to signals
    signal feedback, muxToFF, ffOut, dummy: STD_LOGIC;

    begin
        newMux: two_input_multiplexer Port map(ffOut, DIN, WE, muxToFF);
        newFF: d_flipflop Port map(muxToFF, CLK, '0', '0', ffOut, dummy);
        bufferOne: tri_buff Port map(ffOut, REA, OA);
        bufferTwo: tri_buff Port map(ffOut, REB, OB);

end Behavioural; 

