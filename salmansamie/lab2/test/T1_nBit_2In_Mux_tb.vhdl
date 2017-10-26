--Engineer: Salman Rahman
--Email: salman.rahman@se14.qmul.ac.uk

---------------------------------
-- Test 01 for n-bit 2-Input Mux
-- with 1-bit input
---------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;  

--Entity declaration of twoinputmultiplexer for nbittwoinputmux testbench
entity twoinputmultiplexer is
    Port (  a : in STD_LOGIC;
            b : in STD_LOGIC;  
            s : in STD_LOGIC;  
        output : out STD_LOGIC);  
 end twoinputmultiplexer;  

--Architecture declaration of twoinputmultiplexer for nbittwoinputmux testbench
architecture Behavioral of twoinputmultiplexer is  
begin
process(a,b,s)
    begin  
            case s is  
            when '0' => output <= a;  
            when '1' => output <= b;  
            when others => output <= b;  
            end case;  
    end process;  
end Behavioral; 