 --------------------------------------------------------------------------------
 
-- Engineer: Abdullah Noman
-- Description:	 n-bit Logic Unit

--------------------------------------------------------------------------------

library IEEE;  
use IEEE.STD_LOGIC_1164.all;  
 
entity nbit_logic_unit is  
generic(n:positive:=4);  
	Port ( InA : in STD_LOGIC_VECTOR (n-1 downto 0);  
		InB : in STD_LOGIC_VECTOR (n-1 downto 0);  
		control : in STD_LOGIC_VECTOR (1 downto 0);  
		output : out STD_LOGIC_VECTOR (n-1 downto 0));  
	end nbit_logic_unit;  
 
architecture Behavioral of nbit_logic_unit is  
component bit_slice_logic_slice   
	Port ( a : in STD_LOGIC;  
		b : in STD_LOGIC;  
		control : in STD_LOGIC_VECTOR (1 downto 0);  
		output : out STD_LOGIC);  
	end component;  
	
begin  
	inst: for i in n-1 downto 0 generate  
	A: bit_slice_logic_slice port map(InA(i),InB(i),control,output(i));  
end generate;  

end Behavioral;  
