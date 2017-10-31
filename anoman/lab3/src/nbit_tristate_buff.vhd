--------------------------------------------------------------------------------

-- Engineer: Abdullah Al Noman
-- Description: n-bit tri-state buffer

--------------------------------------------------------------------------------
 
library IEEE;  
use IEEE.STD_LOGIC_1164.all;  

entity nbit_tristate_buff is  
generic(n:positive:=4);  
Port ( datain : in STD_LOGIC_VECTOR (n-1 downto 0);  
   enable : in STD_LOGIC;  
   output : out STD_LOGIC_VECTOR (n-1 downto 0));  
end nbit_tristate_buff;  

architecture Behavioral of nbittristatebuffer is  
component tri_buff   
	Port ( Input : in std_logic;  
	enable : in std_logic;  
	Output : out std_logic);  
end component;  

begin  
	inst:for i in n-1 downto 0 generate  
	A: tri_buff Port map(datain(i),enable,output(i));  
end generate;  

end Behavioral;  
