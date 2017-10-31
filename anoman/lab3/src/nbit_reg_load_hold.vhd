--------------------------------------------------------------------------------

-- Engineer: Abdullah Al Noman
-- Description: n-bit register with LOAD/~HOLD control

--------------------------------------------------------------------------------

library IEEE;  
use IEEE.STD_LOGIC_1164.all;  

entity nbit_reg_loadhold is  
generic(n:positive:=4);  
	Port ( Dinputs : in STD_LOGIC_VECTOR (n-1 downto 0);  
	loadhold : in STD_LOGIC;  
	CLK : in STD_LOGIC;  
	reset : in STD_LOGIC;  
	preset : in STD_LOGIC;  
	qoutputs : inout STD_LOGIC_VECTOR (n-1 downto 0));  
end nbit_reg_loadhold;
  
architecture Behavioral of nbit_reg_loadhold is  
component nbit_reg  
generic(n:positive:=4);  
	Port ( Dinputs : in STD_LOGIC_VECTOR (n-1 downto 0);  
	clk : in STD_LOGIC;  
	reset : in STD_LOGIC;  
	preset : in STD_LOGIC;  
	q : out STD_LOGIC_VECTOR (n-1 downto 0);  
	qnot : out STD_LOGIC_VECTOR (n-1 downto 0));  
end component;
  
component nbit_twoinput_mux   
generic(n:positive:=4);  
	Port ( InA : in STD_LOGIC_VECTOR (n-1 downto 0);  
	InB : in STD_LOGIC_VECTOR (n-1 downto 0);  
	Control : in STD_LOGIC;  
	Output : out STD_LOGIC_VECTOR (n-1 downto 0));  
end component;
  
signal toreg,dummyq:std_logic_vector(n-1 downto 0);  

begin  
	A: nbit_twoinput_mux Port map(qoutputs,Dinputs,loadhold,toreg);  
	B: nbit_reg Port map(toreg, CLK, reset,preset,qoutputs, dummyq);  
end Behavioral;  