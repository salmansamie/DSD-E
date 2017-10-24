  --------------------------------------------------------------------------------
 
-- Engineer: Abdullah Noman
-- Description:	 Shift Control Logic Test Bench

--------------------------------------------------------------------------------

library ieee;  
use ieee.std_logic_1164.all; 
 
entity shift_control_logic_tb is  
end shift_control_logic_tb; 

architecture behavior of shift_control_logic_tb is  
component shift_control_logic  
port ( input : in STD_LOGIC_VECTOR (2 downto 0);  
	output : out STD_LOGIC_VECTOR (1 downto 0));  
end component;  
  
signal input : std_logic_vector(1 downto 0) := (others => '0');  
 
signal output : std_logic_vector(1 downto 0) ;  
begin  
	uut: shift_control_logic port map (
	input => input,  
	output => output);  
 
stim_proc: process  
begin      
	wait for 100 ns;  
	input <= "000"; 
	
	wait for 100 ns;  
	input <= "001";  
	
	wait for 100 ns;  
	input <= "010";  
	
	wait for 100 ns; 	
	input <= "011"; 
	
	wait for 100 ns;  
	input <= "100";  
	
	wait for 100 ns;  
	input <= "101";  
	
	wait for 100 ns;  
	input <= "110";  
	
	wait for 100 ns;  
	input <= "111";  
end process;  

end;  