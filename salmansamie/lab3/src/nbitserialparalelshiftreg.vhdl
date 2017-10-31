
--Engineer: Salman M Rahman

library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  
use IEEE.STD_LOGIC_ARITH.ALL;  
use IEEE.STD_LOGIC_UNSIGNED.ALL;  

-- ENTITY  
entity nbitserialparalelshiftreg is  
    generic (n : positive := 8);  
Port ( shift_in : in std_logic;  
    CLK : in std_logic;  
    reset : in std_logic;  
    preset : in std_logic;  
    Q_shift : out std_logic_vector(n-1 downto 0));  
end nbitserialparalelshiftreg;  

-- ARCHITECTURE  
architecture Behavioral of nbitserialparalelshiftreg is  
    -- COMPONENT  
    component nbitregister   
    generic(n:positive:=8);  
    Port ( Dinputs : in STD_LOGIC_VECTOR (n-1 downto 0);  
        CLK : in STD_LOGIC;  
        reset : in STD_LOGIC;  
        preset : in STD_LOGIC;  
        q : out STD_LOGIC_VECTOR (n-1 downto 0);  
        qnot : out STD_LOGIC_VECTOR (n-1 downto 0));  
    end component;  
    
    -- INTERNAL SIGNALS  
    signal sig : std_logic_vector (n downto 0);  
    signal dummy : std_logic_vector (n-1 downto 0);   
    begin  
    sig(0) <= shift_in;  
    
    -- instantiate an register with generic width 'n' and appropriate connections:  
    reg : nbitregister generic map (n) port map (sig(n-1 downto 0), CLK, reset, preset, sig(n downto 1), dummy);   
    Q_shift <= sig(n downto 1);  
    
end Behavioral; 