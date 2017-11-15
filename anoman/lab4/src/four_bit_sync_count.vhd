--------------------------------------------------------------------------------

-- Engineer: Abdullah Noman
-- Description: 4-bit synchronous counter (using combinational next-state logic)

--------------------------------------------------------------------------------

library IEEE;  
use IEEE.STD_LOGIC_1164.all;  
use IEEE.STD_LOGIC_ARITH.all;  
use IEEE.STD_LOGIC_UNSIGNED.all;  

entity bit_sync_counter is  
generic ( n : positive := 4);  
Port ( CLK : in STD_LOGIC;  
	reset : in STD_LOGIC;  
	Q_outputs : inout STD_LOGIC_VECTOR (n-1 downto 0));  
end bit_sync_counter;  

architecture Behavioral of bit_sync_counter is  
component nbit_register is  
generic(n:positive:=4);  
Port ( Dinputs : in STD_LOGIC_VECTOR (n-1 downto 0);  
	CLK : in STD_LOGIC;  
	reset : in STD_LOGIC;  
	preset : in STD_LOGIC;  
	q : out STD_LOGIC_VECTOR (n-1 downto 0);  
	qnot : out STD_LOGIC_VECTOR (n-1 downto 0));  
end component;  

component next_state_logic   
generic ( n : positive := 4);  
Port ( Input : in STD_LOGIC_VECTOR ( n-1 downto 0);  
	Output : out STD_LOGIC_VECTOR ( n-1 downto 0));  
end component; 
 
signal dummy, new_Output: STD_LOGIC_VECTOR (n-1 downto 0);  

begin    
	next_State_it: next_state_logic port map (Q_outputs, new_Output);  
	nbit_it: nbit_register port map (new_Output,clk, reset, '0', Q_outputs, dummy );  
end Behavioral;   