 --------------------------------------------------------------------------------
 
-- Engineer: Abdullah Noman
-- Description:	 n-bit Adder

--------------------------------------------------------------------------------

library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  
use IEEE.STD_LOGIC_ARITH.ALL;  
use IEEE.STD_LOGIC_UNSIGNED.ALL;  

entity nbit_adder is  
generic(n:positive:=4);  
	Port ( InA : in STD_LOGIC_VECTOR (n-1 downto 0);  
		InB : in STD_LOGIC_VECTOR (n-1 downto 0);  
		c_terms : in STD_LOGIC_VECTOR (n-1 downto 0);  
		sum : out STD_LOGIC_VECTOR (n-1 downto 0);  
		c_out : out STD_LOGIC);  
end nbit_adder;  

architecture Behavioral of nbit_adder is  
component full_adder  
    Port ( a : in STD_LOGIC;  
		b : in STD_LOGIC;  
		cin : in STD_LOGIC;  
		sum : out STD_LOGIC;  
		cout : out STD_LOGIC);  
	end component;  
 
signal not_connected: STD_LOGIC_VECTOR(n-2 downto 0);  
begin  
	inst:for i in n-1 downto 0 generate  
	lastbit:if i=n-1 generate  
	A: fulladder port map (InA(i),InB(i),c_terms(i),sum(i),c_out);  
	end generate;  
	
	otherbits: if i/=n-1 generate  
	B: fulladder port map(InA(i),InB(i),c_terms(i),sum(i),not_connected(i));  
	end generate;  
	
end generate;  

end Behavioral;  