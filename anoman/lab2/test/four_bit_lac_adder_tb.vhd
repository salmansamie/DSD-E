 --------------------------------------------------------------------------------
 
-- Engineer: Abdullah Noman
-- Description:	 4-bit LAC Adder Test Bench

--------------------------------------------------------------------------------

library ieee;  
use ieee.std_logic_1164.all;  

entity four_bit_lac_adder_tb is  
end four_bit_lac_adder_tb;  

architecture behavior of four_bit_lac_adder_tb is   
component four_bit_lac_adder  
	port(InA : in std_logic_vector(3 downto 0);  
		InB : in std_logic_vector(3 downto 0);  
		cin : in std_logic;  
		sum : out std_logic_vector(3 downto 0);  
		cout : out std_logic);  
	end component;  
  
signal InA : std_logic_vector(3 downto 0) := (others => '0');  
signal InB : std_logic_vector(3 downto 0) := (others => '0');  
signal cin : std_logic := '0';   
signal sum : std_logic_vector(3 downto 0);  
signal cout : std_logic;  
 
constant <clock>_period : time := 10 ns;  
begin  
	uut: four_bit_lac_adder port map (  
	InA => InA,  
	InB => InB,  
	cin => cin,  
	sum => sum,  
	cout => cout);  

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
	cin <= '0';  
	
	wait for 100 ns;  
	InA <= "0000";  
	InB <= "0001";  
	cin <= '0';  
	
	wait for 100 ns;  
	InA <= "0001";  
	InB <= "0001";  
	cin <= '0';  
	
	wait for 100 ns;  
	InA <= "0010";  
	InB <= "0001";  
	carry<= '0';  
	
	wait for 100 ns;  
	InA <= "0010";  
	InB <= "0011";  
	cin <= '1';  
	
	wait for 100 ns;  
	InA <= "0011";  
	InB <= "0011";  
	cin <= '1';  
	
	wait for 100 ns;  
	InA <= "1111";   
	InB <= "0001";  
	cin <= '1'; 
	
	wait;  
end process;  

end;  