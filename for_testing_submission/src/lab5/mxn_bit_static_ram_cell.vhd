--------------------------------------------------------------------------------

-- Engineer: Abdullah Noman
-- Project: Lab 5  
-- Description: m x n-bit Static RAM cell array

--------------------------------------------------------------------------------

library IEEE;  
use IEEE.STD_LOGIC_1164.all;  
use IEEE.STD_LOGIC_ARITH.all;  
use IEEE.STD_LOGIC_UNSIGNED.all;  

entity mxn_bit_static_RAM_cell is  
generic( n : positive := 4 ; m : positive := 4) ;  
Port ( Data_in : in STD_LOGIC_VECTOR (n-1 downto 0);  
	Select_lines : in STD_LOGIC_VECTOR (m-1 downto 0);  
	Write_enable : in STD_LOGIC;  
	Data_out : out STD_LOGIC_VECTOR (n-1 downto 0));  
end mxn_bit_static_RAM_cell;  

architecture Behavioral of mxn_bit_static_RAM_cell is  
component static_RAM_cell is  
Port ( Data_in : in STD_LOGIC;  
	Cell_select : in STD_LOGIC;  
	Write_enable : in STD_LOGIC;  
	Data_out : out STD_LOGIC );  
end component;  

begin  
	inst : for i in m-1 downto 0 generate           
	-- loop conveys the rows  
	
	inst2 : for j in n-1 downto 0 generate      
	-- loop shows number of elements in the row  
	
	SRAMIT: static_RAM_cell port map (Data_in(j), Select_lines(i), Write_enable, Data_out(j));           
	-- completes each RAM in each row
	
	end generate; 
end generate;

end Behavioral;  


