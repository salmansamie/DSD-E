  --------------------------------------------------------------------------------
 
-- Engineer: Abdullah Noman
-- Description:	 1-bit logic function Bit-Slicer Test Bench

--------------------------------------------------------------------------------

library ieee;  
use ieee.std_logic_1164.all;  

ENTITY one_bit_logic_function_bit_slicer_tb is  
end one_bit_logic_function_bit_slicer_tb;  

architecture behavior of one_bit_logic_function_bit_slicer_tb is 
component one_bit_logic_function_bit_slice  
	port(a : in std_logic;  
	b : in std_logic;  
	control : in std_logic_vector (3 downto 0);  
	output : out std_logic);  
end component;  

signal a : std_logic := '0';  
signal b : std_logic := '0';  
signal control : std_logic_vector(1 downto 0) := (others=>'0');  
signal output : std_logic;  

begin    
	uut: one_bit_logic_function_bit_slice port map (  
	a => a,  
	b => b,  
	control => control,  
	output => output);  

stim_proc: process  
begin            
	wait for 100 ns; 
	a <= '0';  
	control <= "00"; 
	
	wait for 100 ns;   
	a <= '1'; 
	b <= '1';  
	control <= "01";  
	
	wait for 100 ns;  
	a <= '1'; 
	b <= '0';  
	control <= "10"; 
	
	wait for 100 ns;   
	a <= '1';  
	b <= '1';  
	control <= "11"; 
	wait;
	
	wait;  
end process;  

end;  