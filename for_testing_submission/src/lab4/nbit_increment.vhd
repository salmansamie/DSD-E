--------------------------------------------------------------------------------

-- Engineer: Abdullah Noman
-- Description: n-bit incrementer circuit

--------------------------------------------------------------------------------

library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  

entity nbitincrementer is  
generic(n:positive:=4);  
Port ( ina : in STD_LOGIC_VECTOR (n-1 downto 0);  
   cin : in STD_LOGIC;  
   sum : out STD_LOGIC_VECTOR (n-1 downto 0);  
   cout : out STD_LOGIC);  
end nbitincrementer;  

architecture Behavioral of nbitincrementer is  
component halfadder   
Port ( a : in STD_LOGIC;  
   b : in STD_LOGIC;  
   sum : out STD_LOGIC;  
   cout : out STD_LOGIC);  
end component;  

signal carryouttob:std_logic_vector(n-2 downto 0);  

begin  
inst:for i in n-1 downto 0 generate  
if0:if i=0 generate  
A: halfadder port map(ina(i),cin,sum(i),carryouttob(i));  
end generate;  
if1:if i/=0 and i/=n-1 generate  
A: halfadder port map(ina(i),carryouttob(i-1),sum(i),carryouttob(i));  
end generate;  
if2:if i=n-1 generate  
A: halfadder port map(ina(i),carryouttob(i-1),sum(i),cout);  
end generate;  
end generate;
  
end Behavioral;  
