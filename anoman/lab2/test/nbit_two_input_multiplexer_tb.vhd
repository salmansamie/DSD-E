 --------------------------------------------------------------------------------
 
-- Engineer: Abdullah Noman
-- Description:	 n-bit 2-input Multiplexer Test Bench

--------------------------------------------------------------------------------

library ieee;  
use ieee.std_logic_1164.all;  

entity nbit_two_input_mux_tb is  
end nbit_two_input_mux_tb;  

architecture behavior of nbit_two_input_mux_tb is   
component nbit_two_input_mux  
	port(  
	InA : in std_logic_vector(3 downto 0);  
	InB : in std_logic_vector(3 downto 0);  
	control : in std_logic;  
	output : out std_logic_vector(3 downto 0));  
	end component;  
  
signal InA : std_logic_vector(3 downto 0) := (others => '0');  
signal InB : std_logic_vector(3 downto 0) := (others => '0');  
signal control : std_logic := '0';    
signal output : std_logic_vector(3 downto 0);  

begin  
	uut: nbit_two_input_mux port map (  
	InA => InA,  
	InB => InB,  
	control => control,  
	output => output);
	
stim_proc: process  
begin            
	wait for 100 ns;       
	InA <= "0001";  
	InB <= "0011";  
	control <= '0';  
	
	wait for 100 ns;  
	InA <= "0001";  
	InB <= "0011";  
	control <= '1';  

	wait;  
end process;  

end;  