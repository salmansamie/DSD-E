 --------------------------------------------------------------------------------
 
-- Engineer: Abdullah Noman
-- Description:	 n-bit 2-input Multiplexer

--------------------------------------------------------------------------------

library IEEE;  
use IEEE.STD_LOGIC_1164.all;  
 
entity nbit_two_input_mux is  
generic(n:positive:=4);  
	Port ( InA : in STD_LOGIC_VECTOR (n-1 downto 0);  
		InB : in STD_LOGIC_VECTOR (n-1 downto 0);  
		control : in STD_LOGIC;  
		output : out STD_LOGIC_VECTOR (n-1 downto 0));  
	end nbit_two_input_mux;  

architecture Behavioral of nbit_two_input_mux is  
component two_input_mux  
	Port ( a : in STD_LOGIC;  
		b : in STD_LOGIC;  
		s : in STD_LOGIC;  
        output : out STD_LOGIC);  
	end component;  
 
begin  
	inst: for i in n-1 downto 0 generate  
	A: two_input_mux port map(InA(i),InB(i),control,output(i));  
end generate;  

end Behavioral;  