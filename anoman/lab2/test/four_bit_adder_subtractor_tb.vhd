 --------------------------------------------------------------------------------
 
-- Engineer: Abdullah Noman
-- Description:	 4-bit Adder/Subtractor Test Bench

--------------------------------------------------------------------------------

library ieee;  
use ieee.std_logic_1164.all;

entity four_bit_adder_subtractor_tb is  
end four_bit_adder_subtractor_tb;  

architecture behavior of four_bit_adder_subtractor_tb is   
component four_bit_adder_subtractor  
	port(InA : in std_logic_vector(3 downto 0);  
	InB : in std_logic_vector(3 downto 0);  
	control : in std_logic;  
	sum : out std_logic_vector(3 downto 0);  
	cout : out std_logic);  
end component;  
  
signal InA : std_logic_vector(3 downto 0) := (others => '0');  
signal InB : std_logic_vector(3 downto 0) := (others => '0');  
signal control : std_logic := '0';    
signal sum : std_logic_vector(3 downto 0);  
signal cout : std_logic;  
 
constant <clock>_period : time := 10 ns;  
begin  
	uut: four_bit_adder_subtractor port map (  
	InA => InA,  
	InB => InB,  
	control => control,  
	sum => sum,  
	cout => cout);  

stim_proc: process  
begin            
	wait for 100 ns;       
	InA <= "0010";  
	InB <= "0011";  
	control <= '0';  
	
	wait for 100 ns;     
	InA <= "0011"; 
	InB <= "0010";  
	control <= '1';  
	
	wait;  
end process;  

end;  