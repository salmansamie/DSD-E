--------------------------------------------------------------------------------

-- Engineer: Abdullah Noman
-- Description: 4-bit synchronous counter (using combinational next-state logic) test bench

--------------------------------------------------------------------------------

library ieee;  
use ieee.std_logic_1164.all;  

entity bit_sync_counter_tb is  
end bit_sync_counter_test;  

architecture behavior of bit_sync_counter_tb is   
component bit_sync_counter  
Port(  
	CLK : in std_logic;  
	reset : in std_logic;  
	Q_outputs : inout std_logic_vector(3 downto 0));  
end component;  

-- Inputs  

signal CLK : std_logic := '0';  
signal reset : std_logic := '0'; 
 
-- Bidirectional

signal Q_outputs : std_logic_vector(3 downto 0);  

-- Clock period definitions  

constant CLK_period : time := 100 ns;  
begin 
	uut: bit_sync_counter Port map (  
	CLK => CLK,  
	reset => reset,  
	Q_outputs => Q_outputs);  
	
-- Clock process definitions  

CLK_process :process  
begin  
	   CLK <= '0';  
	   wait for CLK_period/2;  
	   CLK <= '1';  
	   wait for CLK_period/2;  
end process;  

-- Stimulus process  
stim_proc: process  

begin            
-- hold reset state for 100 ns.  
	wait for 100 ns;       
	reset<= '1';     
	
	wait for 100 ns;       
	reset<= '0';  

	wait for 100 ns;       
end process;  
end;  