 --------------------------------------------------------------------------------
 
-- Engineer: Abdullah Noman
-- Description:	 1-bit logic function Bit-Slicer

--------------------------------------------------------------------------------

library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  

entity bit_slice_logic_slice is  
	Port ( a : in STD_LOGIC;  
		b : in STD_LOGIC;  
		control : in STD_LOGIC_VECTOR (1 downto 0);  
		output : out STD_LOGIC);  
	end bit_slice_logic_slice;  
	
architecture Behavioral of bit_slice_logic_slice is  

component inverter   
	Port ( a : in STD_LOGIC;  
	f : out STD_LOGIC);  
end component; 
 
component and_gate  
	Port ( a : in STD_LOGIC;  
	b : in STD_LOGIC;  
	f : out STD_LOGIC);  
end component;  

component or_gate  
	Port ( a : in STD_LOGIC;  
	b : in STD_LOGIC;  
	f : out STD_LOGIC);  
end component;  

component xor_gate  
	Port ( a : in STD_LOGIC;  
	b : in STD_LOGIC;  
	f : out STD_LOGIC);  
end component;  

component four_input_mux
	Port ( a : in STD_LOGIC;  
	b : in STD_LOGIC;  
	c : in STD_LOGIC;  
	d : in STD_LOGIC;  
	control : in STD_LOGIC_VECTOR (1 downto 0);  
	output : out STD_LOGIC);  
end component;
  
signal inverter_to_mux,and_to_mux,xor_to_mux,or_to_mux:std_logic;  
begin  
	A1: inverter port map (a,inverter_to_mux);  
	B1: and_gate port map (a,b,and_to_mux);  
	C1: xor_gate port map(a,b,xor_to_mux);  
	D1: or_gate port map(a,b,or_to_mux);  
	E1: four_input_mux port map (inverter_to_mux,and_to_mux,xor_to_mux,or_to_mux,control,output);  
end Behavioral;  