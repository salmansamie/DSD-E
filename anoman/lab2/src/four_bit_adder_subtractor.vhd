 --------------------------------------------------------------------------------
 
-- Engineer: Abdullah Noman
-- Description:	 4-bit Adder/Subtractor

--------------------------------------------------------------------------------

library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  

entity four_bit_adder_substractor is  
generic(n:positive:=4);  
	Port ( InA : in STD_LOGIC_VECTOR (n-1 downto 0);  
		InB : in STD_LOGIC_VECTOR (n-1 downto 0);  
		control : in STD_LOGIC;  
		sum : out STD_LOGIC_VECTOR (n-1 downto 0);  
		cout : out STD_LOGIC);  
	end four_bit_adder_substractor;  
 
architecture Behavioral of four_bit_adder_substractor is  
component nbit_xor_contol is  
Generic ( n : positive := 4 );  
	Port ( Input : in std_logic_vector(n-1 downto 0);  
		control : in std_logic;  
		output : out std_logic_vector(n-1 downto 0));  
	end component;  
	
component four_bit_LAC_adder   
generic(n:positive:=4);  
	Port ( InA : in STD_LOGIC_VECTOR (n-1 downto 0);  
		InB : in STD_LOGIC_VECTOR (n-1 downto 0);  
		cin : in STD_LOGIC;  
		sum : out STD_LOGIC_VECTOR (n-1 downto 0);  
		cout : out STD_LOGIC);  
	end component;  

signal xor_control_to_LAC_adder:std_logic_vector(n-1 downto 0);  
begin  
	A: nbit_xor_contol port map(InB,control,xor_control_to_LAC_adder);  
	B: four_bit_LAC_adder port map(InA,xor_control_to_LAC_adder,control,sum,cout);  
end Behavioral;  