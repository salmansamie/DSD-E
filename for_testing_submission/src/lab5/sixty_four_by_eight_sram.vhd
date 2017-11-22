--------------------------------------------------------------------------------

-- Engineer: Abdullah Noman
-- Project: Lab 5  
-- Description: 64 x 8-bit Static RAM

--------------------------------------------------------------------------------

library IEEE;  
use IEEE.STD_LOGIC_1164.all;  
use IEEE.STD_LOGIC_ARITH.all;  
use IEEE.STD_LOGIC_UNSIGNED.all;  

entity sixty_four_by_eight_sram is  
Generic (n : positive:=8);  
Port ( Address : in STD_LOGIC_VECTOR (n-3 downto 0);  
	Read_write_bar : in STD_LOGIC;  
	Chip_select : in STD_LOGIC;  
	Data_inout : inout STD_LOGIC_VECTOR (n-1 downto 0));  
end sixty_four_by_eight_sram;  

architecture Behavioral of sixty_four_by_eight_sram is  
component sixty_four_by_four_sram    
Generic (n : positive:=8);                                     
Port ( Address : in STD_LOGIC_VECTOR (n-3 downto 0);  
	Read_write_bar : in STD_LOGIC;  
	Chip_select : in STD_LOGIC;  
	Data_inout : inout STD_LOGIC_VECTOR (n-5 downto 0));  
end component;  

begin  
	FIRST_RAM: sixty_four_by_four_sram port map (Address, Read_write_bar, Chip_select, Data_inout(7 downto 4 ));   
	-- gets the LSB DATA out  
	
	SECOND_RAM: sixty_four_by_four_sram port map (Address, Read_write_bar, Chip_select, Data_inout(3 downto 0 )); 
	-- gets the MSB DATa out  
end Behavioral;  