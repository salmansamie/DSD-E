 --------------------------------------------------------------------------------
 
-- Engineer: Abdullah Noman
-- Description:	 n-bit Shifter/Rotator unit

--------------------------------------------------------------------------------

library IEEE;  
use IEEE.STD_LOGIC_1164.all;  
use IEEE.STD_LOGIC_ARITH.all;  
use IEEE.STD_LOGIC_UNSIGNED.all;  

entity nbit_shift_rotate is  
generic(n:positive:=4);  
	Port (data_in1 : in std_logic_vector(n-1 downto 0);
		data_in2 : in std_logic_vector(n-1 downto 0);
		right_in : in std_logic;
		right_select : in std_logic;  
		left_in : in std_logic;  
		left_select : in std_logic;  
		control : in std_logic_vector (1 downto 0);  
		output : out std_logic_vector (n-1 downto 0));  
	end nbit_shift_rotate;  

architecture Behavioral of nbit_shift_rotate is  

component two_input_mux   
	Port ( a : in STD_LOGIC;  
		b : in STD_LOGIC;  
		s : in STD_LOGIC;  
		Output : out STD_LOGIC);  
	end component;  

component four_input_mux   
	port ( a : in std_logic;  
		b : in std_logic;  
		c : in std_logic;  
		d : in std_logic;  
		Control : in std_logic_vector(1 downto 0);  
		Output : out std_logic);  
	end component;  

signal mux_to_four, mux_to_four_zero: std_logic;  
	begin  
	inst: for i in n-1 downto 0 generate  
	
	if1: if i = n-1 generate  
	two_mux: two_input_mux port map (data_in1(0),left_in, left_select, mux_to_four);  
	four_mux_two: four_input_mux port map (data_in1(i), data_in1(i-1), mux_to_four, data_in2(i), control, output(i));  
	end generate;  

	if2: if i = 0 generate  
	two_mux_zero: two_input_mux port map (data_in1(n-1),right_in, right_select, mux_to_four_zero);  
	four_mux_zero: four_input_mux port map (data_in1(0),mux_to_four_zero, data_in1(1), data_in2(0), control, output(0));  
	end generate;  

	if3: if ((i/=0) and (i/=n-1)) generate  
	four_mux_mid: four_input_mux port map (data_in1(i),data_in1(i-1), data_in1(i+1), data_in2(i), control, output(i));  
	end generate;  
	
end generate;  

end Behavioral;  