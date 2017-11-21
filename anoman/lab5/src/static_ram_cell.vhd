--------------------------------------------------------------------------------

-- Engineer: Abdullah Noman
-- Project: Lab 5  
-- Description: Static RAM Cell

--------------------------------------------------------------------------------

library IEEE;  
use IEEE.STD_LOGIC_1164.all;  
use IEEE.STD_LOGIC_ARITH.all;  
use IEEE.STD_LOGIC_UNSIGNED.all;
  
entity static_RAM_cell is  
Port ( Data_in : in STD_LOGIC;  
	Cell_select : in STD_LOGIC;  
	Write_enable : in STD_LOGIC;  
	Data_out : out STD_LOGIC);  
end static_RAM_cell;  

architecture Behavioral of static_RAM_cell is  
component d_flipflop is  
Port (d, clk, reset, preset : in std_logic;  
	q,qnot: out std_logic);  
end component;  

component tri_buff is  
Port ( Input : in std_logic;  
	enable : in std_logic;  
	Output : out std_logic);  
end component;  
			 
component and_gate is  
Port ( a : in std_logic;  
	b : in std_logic;  
	f : out std_logic);  
end component;  

signal clk_sig, dummy, Q_sig: STD_LOGIC;  
begin  
	ANDIT: and_gate Port map (Write_enable, Cell_select, clk_sig ) ; 
	-- decides whether output is read or write   
	
	DIT: d_flipflop Port map (Data_in,clk_sig,'0' , '0', Q_sig, dummy ) ; 
	-- holds value at Q  
	
	TRI_IT: tri_buff Port map (Q_sig, Cell_select, Data_out ); 
	-- if cell select is 0 then Q cannot be read so high impedance is shown  
	
end Behavioral;  