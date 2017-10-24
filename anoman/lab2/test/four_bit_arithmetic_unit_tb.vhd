 --------------------------------------------------------------------------------
 
-- Engineer: Abdullah Noman
-- Description:	 4-bit Arithmetic Unit Test Bench

--------------------------------------------------------------------------------

library ieee;  
use ieee.std_logic_1164.all;  

entity four_bit_arithmetic_unit_tb is  
end four_bit_arithmetic_unit_tb; 

architecture behavior of four_bit_arithmetic_unit_tb is   
component four_bit_arithmetic_unit  
	port(  
		InA : in std_logic_vector(3 downto 0);  
		InB : in std_logic_vector(3 downto 0);  
		control : in std_logic_vector(1 downto 0);  
		sum : out std_logic_vector(3 downto 0);  
		c_out : out std_logic);  
end component;  

signal InA : std_logic_vector(3 downto 0) := (others => '0');  
signal InB : std_logic_vector(3 downto 0) := (others => '0');  
signal control : std_logic_vector(1 downto 0) := (others => '0');  

signal sum : std_logic_vector(3 downto 0);  
signal c_out : std_logic;  

begin  
	uut: four_bit_arithmetic_unit port map (   
	InA => InA,  
	InB => InB,  
	control => control,  
	sum => sum,  
	c_out => c_out);  
  
stim_proc: process  
begin            
	wait for 100 ns;       
	Control <= "00";
	InA <= "0000";  
	
	wait for 100 ns;  
	Control <= "01";          
	InA <= "0001";  
	InB <= "1111";  
	
	wait for 100 ns;  
	Control<= "10";          
	InA <= "1110";  
	InB <= "0000"; 
	
	wait for 100 ns;  
	Control <= "11";   
	InA <= "1111";  
	InB <= "0001";  
	
	wait;    
end process;  

end;  