-- Engineer: Simran Kaur Phul
-- Description: N-bit register code
 
 
 library IEEE;  
 use IEEE.STD_LOGIC_1164.ALL;  
 entity nbitregister is  
 generic(n:positive:=4);  
   Port ( Dinputs : in STD_LOGIC_VECTOR (n-1 downto 0);  
       CLK : in STD_LOGIC;  
       reset : in STD_LOGIC;  
       preset : in STD_LOGIC;  
       q : out STD_LOGIC_VECTOR (n-1 downto 0);  
       qnot : out STD_LOGIC_VECTOR (n-1 downto 0));  
 end nbitregister; 

 architecture behavioural of nbitregister is  
 component D_flipflop   
 port (d, clk, reset, preset : in std_logic;  
           q,qnot: out std_logic);  
 end component; 

 begin  
 inst:for i in n-1 downto 0 generate  
 A: D_flipflop port map(Dinputs(i),CLK,reset,preset,q(i),qnot(i));  
 end generate;  
 end behavioural;