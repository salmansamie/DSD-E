--------------------------------------------------------------------------------
-- Company: Queen Mary University
-- Engineer: Nnadozie Okeke
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity nbit_logic_unit is
	Generic (n : positive := 4); -- generic value with default of 4 bits
	Port (	InA, InB : in std_logic_vector(n-1 downto 0);
		    	Control : in std_logic_vector(1 downto 0);
			 		Output : out std_logic_vector(n-1 downto 0));
end nbit_logic_unit;

architecture Behavioral of nbit_logic_unit is

	component one_bit_logic_slice
		Port (	a, b : in std_logic;
		    	Control : in std_logic_vector(1 downto 0);
			 		Output : out std_logic);
	end component;

	begin
		inst: for i in n-1 downto 0 generate
			nbit_lu : one_bit_logic_slice port map (InA(i), InB(i), Control, Output(i));
		end generate;

end Behavioral;
