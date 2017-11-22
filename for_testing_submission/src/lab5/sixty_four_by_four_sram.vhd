--------------------------------------------------------------------------------

-- Engineer: Nnadozie Okeke
-- Project: Lab 5  
-- Description: 64 x 4-bit Static RAM

--------------------------------------------------------------------------------

library IEEE;  
use IEEE.STD_LOGIC_1164.all;  
use IEEE.STD_LOGIC_ARITH.all;  
use IEEE.STD_LOGIC_UNSIGNED.all; 

entity sixty_four_by_four_sram is  
Generic (n : positive:=8);  
Port ( Address : in STD_LOGIC_VECTOR (n-3 downto 0);  
	Read_write_bar : in STD_LOGIC;  
	Chip_select : in STD_LOGIC;   
	Data_inout : inout STD_LOGIC_VECTOR (n-5 downto 0));  
end sixty_four_by_four_sram;  

architecture Behavioral of sixty_four_by_four_sram is  
component three_to_eight_decoder    
Port ( OE : in std_logic;  
	address : in std_logic_vector(2 downto 0);
	O_outputs : out std_logic_vector(7 downto 0)); 
end component;  

component eight_by_four_sram  
Port ( address : in std_logic_vector(2 downto 0);   
	read_notwrite : in std_logic;  
	chip_select : in std_logic;  
	data_inout : inout std_logic_vector(3 downto 0)); 
end component;  

-- signal connects o_outputs each element to each ram  
signal OoUt_sig : std_logic_vector(n-1 downto 0);

signal DATA_sig: std_logic_vector(n-5 downto 0);   
begin  
	-- 5->3 is the MSB of address lines choose which ram
	RAM_CHOICE: three_to_eight_decoder port map (Chip_select , Address(5 downto 3), OoUt_sig); 

	inst : for i in n-1 downto 0 generate   
	SRAM_N: eight_by_four_sram port map (Address(2 downto 0) , Read_write_bar , OoUt_sig(i), DATA_sig); 

	Data_inout <= DATA_sig;  
end generate; 

end Behavioral;  