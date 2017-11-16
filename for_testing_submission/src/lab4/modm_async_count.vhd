--------------------------------------------------------------------------------

-- Engineer: Abdullah Noman
-- Description: modulo-m counter with asynchronous reset test bench

--------------------------------------------------------------------------------

library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;
  
----------------------------------------------------  
-- Top level design  
----------------------------------------------------  

entity modm_async_count is  
Generic (n: positive:= 8);  
Port ( M_value : in STD_LOGIC_VECTOR (n-1 downto 0);  
	countEnable : in STD_LOGIC;  
	CLK : in STD_LOGIC;  
	reset : in STD_LOGIC;  
	Q_Out : out STD_LOGIC_VECTOR (n-1 downto 0));  
end modm_async_count;  

----------------------------------------------------  
-- Internal Architecture  
----------------------------------------------------  

architecture Behavioral of modm_async_count is 
 
-- COMPONENT: 8-bit comparator  

component bit8Comparator is  
generic(n:positive:=4);  
	Port ( InA : in STD_LOGIC_VECTOR (n-1 downto 0);  
	InB : in STD_LOGIC_VECTOR (n-1 downto 0);  
	Output : out STD_LOGIC);  
end component;  

-- COMPONENT: nbit synchronous count enable
  
component nbit_count_enable is  
Generic (n : positive := 4);  
Port ( enable : in std_logic;  
	CLK : in std_logic;  
	reset : in std_logic;  
	Q_outputs : inout std_logic_vector(n-1 downto 0)  );  
end component;  

-- COMPONENT: OR Gate
  
component orgate is  
Port ( a : in std_logic;  
	b : in std_logic;  
	f : out std_logic);  
end component; 
 
-- Signals

signal counter_to_comparator: std_logic_vector(n-1 downto 0);  
signal comp_to_or, or_to_counter: std_logic;  
begin  
	newComparator: bit8Comparator port map (counter_to_comparator, M_value, comp_to_or);  
	newOr: orgate port map(comp_to_or, reset, or_to_counter);  
	newCounter: nbit_count_enable port map (countEnable, CLK, or_to_counter, counter_to_comparator);  
	Q_Out <= counter_to_comparator;  
end Behavioral;  