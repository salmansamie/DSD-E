--------------------------------------------------------------------------------

-- Engineer: Abdullah Al Noman
-- Description: n-bit register with LOAD/~HOLD control test bench

--------------------------------------------------------------------------------

library ieee;  
use ieee.std_logic_1164.all;  

entity nbitregloadholdtestbench is  
end nbitregloadholdtestbench;  

architecture behavior of nbitregloadholdtestbench is    
component nbitregloadhold  
	Port(  
	Dinputs : in std_logic_vector(3 downto 0);  
	loadhold : in std_logic;  
	CLK : in std_logic;  
	reset : in std_logic;  
	preset : in std_logic;  
	qoutputs : inout std_logic_vector(3 downto 0) );  
end component;  

signal Dinputs : std_logic_vector(3 downto 0) := (others => '0');  
signal loadhold : std_logic := '0';  
signal CLK : std_logic := '0';  
signal reset : std_logic := '0';  
signal preset : std_logic := '0';  
signal qoutputs : std_logic_vector(3 downto 0);  
constant CLK_period : time := 10 ns;  

begin  
	uut: nbitregloadhold Port map (  
	Dinputs => Dinputs,  
	loadhold => loadhold,  
	CLK => CLK,  
	reset => reset,  
	preset => preset,  
	qoutputs => qoutputs);  
	clk_process :process
	
begin  
	CLK <= '0';  
	wait for clk_period/2;  
	CLK <= '1';  
	wait for clk_period/2;  
end process;

stim_proc: process  
begin             
	wait for 100 ns;  
	
	wait for 100 ns;       
	Dinputs <= "1001" ;  
	
	wait for 100 ns;       
	loadhold <= '1';  
	
	wait for 100 ns;   
    
	wait for 100 ns;  	
	loadhold <= '0';  
	
	wait for 100 ns;       
	reset <= '1';  
	
	wait for 100 ns;        
	reset <= '0';  
	preset <= '1';  
	
	wait for 100 ns;       
	preset <= '0';  
	
	wait for clk_period*10;  
	wait;  
end process;
  
end;  