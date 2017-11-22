--------------------------------------------------------------------------------

-- Engineer: Loui Rajabi
-- Project: Lab 5  
-- Description: TDM (time-division Multiplex) display circuit

--------------------------------------------------------------------------------

library IEEE;  
use IEEE.STD_LOGIC_1164.all;  

----------------------------------------------------  
-- Top level design  
----------------------------------------------------  

entity TDM is  
Generic (n: positive:= 4);  
Port (reset: in STD_LOGIC;  
	CLK: in STD_LOGIC;  
	InA: in STD_LOGIC_VECTOR(n-1 downto 0);  
	InB: in STD_LOGIC_VECTOR(n-1 downto 0);  
	Cathode_A: out STD_LOGIC;  
	Cathode_B: out STD_LOGIC;  
	Anode_outs: out STD_LOGIC_VECTOR(6 downto 0));  
end TDM;  

----------------------------------------------------  
-- Internal Architecture  
----------------------------------------------------  

architecture Behavioral of TDM is  

component T_flipflop  
Port ( reset : in STD_LOGIC;  
	CLK : in STD_LOGIC;  
	q : inout STD_LOGIC;  
	qnot : inout STD_LOGIC);  
end component;  

component nbit_tristate_buff        
generic ( n : positive := 4);  
Port ( datain : in STD_LOGIC_VECTOR (n-1 downto 0);  
	enable : in STD_LOGIC;  
	output : out STD_LOGIC_VECTOR (n-1 downto 0));  
end component;  

component sixteen_by_seven_decoder_ROM is  
Port (address:      in STD_LOGIC_VECTOR(3 downto 0);  
	d_out: out STD_LOGIC_VECTOR(6 downto 0));  
end component;  

signal qout, qBarOut, test: STD_LOGIC;  
signal ts1Out, ts2Out, toROM,dummy: STD_LOGIC_VECTOR(n-1 downto 0);  
begin  
	newFF: T_flipflop port map(reset, CLK, qout, qBarOut);  
	Cathode_A <= qout;  
	test <= qout;  
	Cathode_B <= qBarOut;  
	tsOne: nbit_tristate_buff port map(InA, qout, ts1Out);  
	tsTwo: nbit_tristate_buff port map(InB, qBarOut, ts2Out);  
	with test select  
	toROM <= ts1Out when '1',  
	ts2Out when '0',  
	dummy when others;  
	newRom: sixteen_by_seven_decoder_ROM port map(toROM, Anode_outs);  
end Behavioral; 