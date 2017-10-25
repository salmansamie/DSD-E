--Engineer: Jonathan Celis
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity n_bit_two_input_mux is
	
	generic (n : positive := 4) ;
	
	port ( a : in std_logic_vector(n-1 downto 0);
			 b : in std_logic_vector(n-1 downto 0);
			 s  : in std_logic;
			 q	 : out std_logic_vector(n-1 downto 0)
			 );
end n_bit_two_input_mux;

architecture Behavioral of n_bit_two_input_mux is

	component two_input_multiplexer
		port ( a	 : in std_logic;
				 b : in std_logic;
				 s : in std_logic;
				 q  : out std_logic
				);
	end component;
	
begin

	inst : for i in (n-1) downto 0 generate
	
		two_in_mux : two_input_multiplexer port map (S, I0(i), I1(i), f(i));
	end generate;
	
end Behavioral;

