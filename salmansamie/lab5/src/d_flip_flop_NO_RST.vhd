--Engineer: Salman Rahman
--Email: salman.rahman@se14.qmul.ac.uk
--Description: D Flip-Flop without RESET

-- Creating this because for RFC we need D Flip-Flop without RESET
-- And for code modularity

library ieee;  
use ieee.std_logic_1164.all;  

entity d_flip_flop_NO_RST is  
Port(  
    clk: in std_logic;
    d: in std_logic;
    q : out std_logic
    );
end d_flip_flop_NO_RST;

-- The architecture is 
architecture Behavioural of d_flip_flop_NO_RST is
    begin
        process (clk)
            begin
            if (clk'event and clk='1') then
            q <= d ;
        end if ;
    end process;
end Behavioural;