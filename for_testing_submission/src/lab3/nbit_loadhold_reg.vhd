--------------------------------------------------------------------------------

-- Engineer: Abdullah Al Noman
-- Description: n-bit register with LOAD/~HOLD control

--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity nbit_loadhold_reg is
generic(n:positive:=4);
	Port ( Dinputs : in STD_LOGIC_VECTOR (n-1 downto 0);
	loadhold : in STD_LOGIC;
	CLK : in STD_LOGIC;
	reset : in STD_LOGIC;
	preset : in STD_LOGIC;
	qoutputs : inout STD_LOGIC_VECTOR (n-1 downto 0));
end nbit_loadhold_reg;

architecture Behavioral of nbit_loadhold_reg is
component nbit_reg
generic(n:positive:=4);
Port ( Dinputs : in STD_LOGIC_VECTOR (n-1 downto 0);
		CLK : in STD_LOGIC;
		reset : in STD_LOGIC;
		preset : in STD_LOGIC;
		q : out STD_LOGIC_VECTOR (n-1 downto 0);
		qnot : out STD_LOGIC_VECTOR (n-1 downto 0));
end component;

component nbit_two_input_mux
generic(n:positive:=4);
Port (	InA, InB : in std_logic_vector(n-1 downto 0);
				Control : in std_logic;
				Output : out std_logic_vector(n-1 downto 0));
end component;

signal toreg,dummyq:std_logic_vector(n-1 downto 0);

begin
	two_in_mux: nbit_two_input_mux Port map(qoutputs,Dinputs,loadhold,toreg);
	nbit_register: nbit_reg Port map(toreg, CLK, reset,preset,qoutputs, dummyq);
end Behavioral;
