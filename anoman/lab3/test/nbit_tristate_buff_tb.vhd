--------------------------------------------------------------------------------

-- Engineer: Abdullah Al Noman
-- Description: n-bit tri-state buffer test bench 

--------------------------------------------------------------------------------

LIBRARY ieee;  
USE ieee.std_logic_1164.all;

entity nbit_tristate_buff_tb is  
end nbit_tristate_buff_tb;  

architecture behavior of nbit_tristate_buff_tb is    
component nbit_tristate_buff
	Port(  
	datain : in std_logic_vector(3 downto 0);  
	enable : in std_logic;  
	output : out std_logic_vector(3 downto 0));  
end component;  
 
signal datain : std_logic_vector(3 downto 0) := (others => '0');  
signal enable : std_logic := '0';  
signal output : std_logic_vector(3 downto 0);  

constant <clock>_period : time := 10 ns;  

begin  
	uut: nbit_tristate_buff Port map (  
	datain => datain,  	
	enable => enable,  
	output => output);  
  
stim_proc: process  
begin             
	wait for 100 ns;       
	
	datain <= "1001";  
	wait for 100 ns;       
	
	
	enable <= '0' ;  
	wait for 100 ns;       
	
	enable <= '1' ;  
	wait for 100 ns;
	
	wait;  
end process; 
 
end;  