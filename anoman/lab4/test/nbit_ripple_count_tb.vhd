--------------------------------------------------------------------------------

-- Engineer: Abdullah Noman
-- Description: n-bit asynchronous (ripple) counter test bench

--------------------------------------------------------------------------------

library ieee;  
use ieee.std_logic_1164.all;  

entity n_bit_ripple_counter_tb is  
end n_bit_ripple_counter_tb;  

architecture behavior of n_bit_ripple_counter_tb is   

-- component declaration for the Unit Under Test (UUT) 
 
component n_bit_ripple_counter  
Port( CLK : in std_logic;  
	reset : in std_logic;  
	Q_outputs : inout std_logic_vector(7 downto 0);  
	Q_bar_outputs : inout std_logic_vector(7 downto 0));  
end component;  

-- Inputs  

signal CLK : std_logic := '0';  
signal reset : std_logic := '0';  

-- Bidirectional
  
signal Q_outputs : std_logic_vector(7 downto 0);  
signal Q_bar_outputs : std_logic_vector(7 downto 0);  
constant CLK_period : time := 10 ns; 

-- Clock period definitions

begin
	uut: n_bit_ripple_counter Port map (  
	CLK => CLK,  
	reset => reset,  
	Q_outputs => Q_outputs,  
	Q_bar_outputs => Q_bar_outputs); 
	
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
	wait for 100 ns;       
	wait for CLK_period*10;  
	wait for 100 ns;  
	
	-- both outputs start undefined  
	reset <= '1';  
	
	-- Q set to '0' and Q_bar set to '1'
	wait for 120ns;  
	reset <= '0';  
	
	-- reset changes to 0, the Q output value will toggle each rising clock edge on  
	wait for 100 ns;  
	reset <= '1';  
	
	wait for 120ns;  
	reset <= '0';  
	
	wait for 100 ns;  
	reset <= '1';  
	
	wait for 120ns;  
	reset <= '0';  
	
	wait for 100 ns;  
	reset <= '1';  
	
	wait for 120ns;  
	reset <= '0';  
	
	wait for 100 ns;  
	reset <= '1';  
	
	wait for 120ns;  
	reset <= '0';  
	
	wait for 100 ns;  
	reset <= '1';  
	
	wait for 120ns;  
	reset <= '0';  
	
	wait for 100 ns;  
	reset <= '1';  
	
	wait for 120ns;  
	reset <= '0';  
	
wait;  
end process;  

end;  