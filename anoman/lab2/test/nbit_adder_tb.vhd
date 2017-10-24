 --------------------------------------------------------------------------------
 
-- Engineer: Abdullah Noman
-- Description:	 n-bit Adder Test Bench

--------------------------------------------------------------------------------

library ieee;  
USE ieee.std_logic_1164.all;  

entity nbit_adder_tb is  
end nbit_adder_tb;  

architecture behavior of nbit_adder_tb is    
component nbit_adder  
	port(  
	InA : in std_logic_vector(3 downto 0);  
	InB : in std_logic_vector(3 downto 0);  
	c_terms : in std_logic_vector(3 downto 0);  
	sum : out std_logic_vector(3 downto 0);  
	c_out : out std_logic);  
end component;
  
signal InA : std_logic_vector(3 downto 0) := (others => '0');  
signal InB : std_logic_vector(3 downto 0) := (others => '0');  
signal c_terms : std_logic_vector(3 downto 0) := (others => '0');  
signal sum : std_logic_vector(3 downto 0);  
signal c_out : std_logic;  
 
constant <clock>_period : time := 10 ns;  
begin   
	uut: nbit_adder port map (  
	InA => InA,  
	InB => InB,  
	c_terms => c_terms,  
	sum => sum,  
	c_out => c_out);  

<clock>_process :process  
begin  
	   <clock> <= '0';  
	   wait for <clock>_period/2;  
	   <clock> <= '1';  
	   wait for <clock>_period/2;  
end process;  

stim_proc: process  
begin            
	wait for 100 ns;  
	InA <= "0000";  
	InB <= "0000";  
	c_terms <= "0000";  
	sum <= "0000";  
	
	wait for 100 ns;  
	InA <= "0000";  
	InB <= "0001";  
	c_terms <= "0000";  
	sum <= "0001";  
	
	wait for 100 ns;  
	InA <= "0001"; 
	InB <= "0001";  
	c_terms <= "0000";  
	sum <= "0000";  
	
	wait for 100 ns;  
	InA <= "0010";  
	InB <= "0001";  
	c_terms <= "0000";  
	sum <= "0001";  
	
	wait for 100 ns;  
	InA <= "0010";  
	InB <= "0011";  
	c_terms <= "0000";  
	sum <= "0001";  
	
	wait;  
end process;  

end;  
