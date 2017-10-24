   --------------------------------------------------------------------------------
 
-- Engineer: Abdullah Noman
-- Description:	 4-input Multiplexer Test Bench

--------------------------------------------------------------------------------

library ieee;  
use ieee.std_logic_1164.all;  

entity four_input_mux_tb is  
end four_input_mux_tb;  

architecture behavior of four_input_mux_tb is   
component four_input_mux
	port (  
	a : in std_logic;  
	b : in std_logic;  
	c : in std_logic;  
	d : in std_logic;  
	control : in std_logic_vector(1 downto 0);  
	output : out std_logic);  
end four_input_mux;

signal a : std_logic := '0';  
signal b : std_logic := '0';  
signal c : std_logic := '0';  
signal d : std_logic := '0';  
signal control : std_logic_vector(1 downto 0) := (others => '0');   
signal output : std_logic;  

begin  
	uut: four_input_mux port map (  
	a => a,  
	b => b ,  
	c => c ,  
	d => d,  
	control=> control,  
	output => output);     
	
	wait for 100 ns;  
	control <= "00";  
	a <= '0';  
	
	wait for 100 ns;  
	control <= "00";  
	a <= '1';  
	
	wait for 100 ns;  
	control <= "01";  
	b <= '0';  
	
	wait for 100 ns;  
	control <= "01";  
	b <= '1';  
	
	wait for 100 ns;  
	control <= "10";  
	c <= '0';  
	
	wait for 100 ns;  
	control <= "10";  
	c <= '1';  
	
	wait for 100 ns;  
	control <= "11";  
	d <= '0';  
	
	wait for 100 ns;  
	control <= "11";  
	d <= '1';  
end process;  

end;  