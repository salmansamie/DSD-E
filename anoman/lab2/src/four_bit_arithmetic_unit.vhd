 --------------------------------------------------------------------------------
 
-- Engineer: Abdullah Noman
-- Description:	 4-bit Arithmetic Unit

--------------------------------------------------------------------------------
library IEEE;  
use IEEE.STD_LOGIC_1164.all;  

entity four_bit_arithmetic_unit is  
	Port ( InA : in STD_LOGIC_VECTOR (3 downto 0);  
		InB : in STD_LOGIC_VECTOR (3 downto 0);  
		control : in STD_LOGIC_VECTOR (1 downto 0);  
		sum : out STD_LOGIC_VECTOR (3 downto 0);  
		c_out : out STD_LOGIC);  
	end four_bit_arithmetic_unit;  
	
architecture Behavioral of four_bit_arithmetic_unit is  

Component nbit_two_input_mux   

generic(n:positive:=4);   
	Port ( InA : in STD_LOGIC_VECTOR (n-1 downto 0);  
		InB : in STD_LOGIC_VECTOR (n-1 downto 0);  
		control : in STD_LOGIC;  
		Output : out STD_LOGIC_VECTOR (n-1 downto 0));  
	end component;  

component adder_substractor  
 
generic(n:positive:=4);  
	Port ( InA : in STD_LOGIC_VECTOR (n-1 downto 0);  
		InB : in STD_LOGIC_VECTOR (n-1 downto 0);  
		Control : in STD_LOGIC;  
		Sum : out STD_LOGIC_VECTOR (n-1 downto 0);  
		cout : out STD_LOGIC);  
	end component;
	
signal mux_to_adder:std_logic_vector(3 downto 0);  
begin  
	A: nbit_two_input_mux port map("0001",InB,control(0),mux_to_adder);  
	B: adder_substractor port map(InA,mux_to_adder,control(1),sum,c_out);  
end Behavioral;