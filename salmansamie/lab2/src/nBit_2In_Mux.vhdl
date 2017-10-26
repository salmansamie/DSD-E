--Engineer: Salman Rahman
--Email: salman.rahman@se14.qmul.ac.uk

library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  

--Entity declaration of nbittwoinputmux
entity nbittwoinputmux is
    generic(n:positive:=4);  
    Port ( InA : in STD_LOGIC_VECTOR (n-1 downto 0);  
           InB : in STD_LOGIC_VECTOR (n-1 downto 0);
           Control : in STD_LOGIC;
           Output : out STD_LOGIC_VECTOR (n-1 downto 0));  
 end nbittwoinputmux;  

--Architecture declaration of nbittwoinputmux
architecture Behavioral of nbittwoinputmux is  
        component twoinputmultiplexer   
        Port ( a : in STD_LOGIC;  
            b : in STD_LOGIC;  
            s : in STD_LOGIC;  
                        output : out STD_LOGIC);  
        end component;  
 begin  
    inst: for i in n-1 downto 0 generate  
    A: twoinputmultiplexer port map(InA(i),InB(i),Control,Output(i));  
    end generate;  
 end Behavioral; 