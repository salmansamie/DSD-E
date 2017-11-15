--------------------------------------------------------------------------------

-- Engineer: Abdullah Noman
-- Description: n-bit asynchronous (ripple) counter

--------------------------------------------------------------------------------

library IEEE;  
use IEEE.STD_LOGIC_1164.all;  
use IEEE.STD_LOGIC_ARITH.all;  
use IEEE.STD_LOGIC_UNSIGNED.all;  

entity n_bit_ripple_counter is  
generic(n: positive:= 8);  
Port ( CLK : in STD_LOGIC;  
	reset : in STD_LOGIC;  
	Q_outputs : inout STD_LOGIC_VECTOR (n-1 downto 0);  
	Q_bar_outputs : inout STD_LOGIC_VECTOR (n-1 downto 0));  
end n_bit_ripple_counter;  

architecture Behavioral of n_bit_ripple_counter is  
component T_flipflop  
Port ( reset : in STD_LOGIC;  
	CLK : in STD_LOGIC;  
	q : inout STD_LOGIC;  
	qnot : inout STD_LOGIC);  
end component;
  
signal tonextT:std_logic_vector(n-1 downto 0);  
begin 
	inst : for i in n-1 downto 0 generate       
	if1: if i = 0 generate  
	T_it: T_flipflop port map ( reset, CLK, Q_outputs(i),Q_bar_outputs(i)) ;  
	end generate;  

	if2:if i/=0 generate   
	T_it: T_flipflop port map ( reset, Q_bar_outputs(i-1), Q_outputs(i),Q_bar_outputs(i)) ;  
	end generate;  
end generate; 
 
end Behavioral;  