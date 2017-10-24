 --------------------------------------------------------------------------------
 
-- Engineer: Abdullah Noman
-- Description:	 Shift Control Logic

--------------------------------------------------------------------------------

library IEEE;  
use IEEE.STD_LOGIC_1164.all;  

entity shift_control_logic is  
	Port ( input : in STD_LOGIC_VECTOR (2 downto 0);  
		output : out STD_LOGIC_VECTOR (1 downto 0));  
	end shift_control_logic;  

architecture Behavioral of shift_control_logic is  
begin  
	output(0)<= (not input(2)) and (input(1) or input(0));  
	output(1)<= ( input(2)) and (input(1) or input(0));  
end Behavioral;  