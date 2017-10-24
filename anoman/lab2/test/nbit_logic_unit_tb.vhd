 --------------------------------------------------------------------------------
 
-- Engineer: Abdullah Noman
-- Description:	 n-bit Logic Unit Test Bench

--------------------------------------------------------------------------------

library ieee;  
use ieee.std_logic_1164.all;  

entity nbit_logic_unit_tb is  
end nbit_logic_unit_tb;  

architecture behavior of nbit_logic_unit_tb is     
component nbit_logic_unit  
	port(  
		InA : in std_logic_vector(3 downto 0);  
		InB : in std_logic_vector(3 downto 0);  
		control : in std_logic_vector(1 downto 0);  
		output : out std_logic_vector(3 downto 0));  
	end component;  

signal InA : std_logic_vector(3 downto 0) := (others => '0');  
signal InB : std_logic_vector(3 downto 0) := (others => '0');  
signal control : std_logic_vector(1 downto 0) := (others => '0');  
signal output : std_logic_vector(3 downto 0);  
 
constant <clock>_period : time := 10 ns;  
begin  
	uut: nbitlogicunit port MAP (  
	InA => InA,  
	InB => InB,  
	control => control,  
	output => output);
	
stim_proc :process  
begin  
	wait for 100 ns;
	a <= "0000"; 
	control <= "00"; 
	
	wait for 100 ns; 
	a <= "1111"; 
	b <= "1110";  
	control <= "01";  
	
	wait for 100 ns;  
	a <= "1101"; 
	b <= "0001";  
	control <= "10";  
	
	wait for 100 ns;
	a <= "1010";
	b <= "1011";  
	control <= "11";  
	
	wait;  
end process;  
end;  
