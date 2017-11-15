--------------------------------------------------------------------------------
-- Company: Queen Mary University
-- Engineer: Nnadozie Okeke
-- Description:	 An n-bit two input multiplexer
--
-- Dependencies: ?
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity nbit_two_input_mux is
	Generic (n : positive := 4); -- generic value with default of 4 bits
	Port (	InA, InB : in std_logic_vector(n-1 downto 0);
		    	Control : in std_logic;
			 		Output : out std_logic_vector(n-1 downto 0));
end nbit_two_input_mux;

architecture Behavioral of nbit_two_input_mux is

	component two_input_multiplexer
		Port (  s_in, a, b : in std_logic;
						f : out std_logic);
	end component;

	begin
		inst: for i in n-1 downto 0 generate
			nbit_mux_i : two_input_multiplexer port map (Control, InA(i), InB(i), Output(i));
		end generate;

end Behavioral;
