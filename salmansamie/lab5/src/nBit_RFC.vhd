-- Engineer: Salman Rahman
-- Email: salman.rahman@se14.qmul.ac.uk
-- Device: nBit_RFC

library IEEE;
use IEEE.std_logic_1164.all;

-- Entity nBit RFC 
entity nBit_RFC is
    Generic (n : positive := 4); -- generic value with default of 4 bits
    Port(
        DataIN : in std_logic_vector (n-1 downto 0);
        ReadA : in std_logic_1164;
        ReadB : in std_logic_1164;
        WriteEn  : in std_logic_1164;
        Clock : in std_logic_1164;
        OutA  : out std_logic_vector(n-1 downto 0));  -- n-bit since the input in n-bit RE by A
        OutB  : out std_logic_vector(n-1 downto 0))   -- n-bit since the input in n-bit RE by B
        );
end nBit_RFC;


-- architecture for nBit RFC is 
architecture Behavioural of nBit_RFC is
    -- import and using the created RFC as the component
    component RFC
        Port(
            DIN : in std_logic_1164;
            REA : in std_logic_1164;
            REB : in std_logic_1164;
            WE  : in std_logic_1164;
            CLK : in std_logic_1164;
            OA  : out std_logic_1164;
            OB  : out std_logic_1164
        );
    end component;
    -- Mapping the imported component with the port of the entity
    begin
        inst: for i in n-1 downto 0 generate
            nbit_mux_i : generate RFC
                Port map(DataIN, ReadA, ReadB, WriteEn, Clock, OutA, OutB);
        end generate;

end Behavioural;