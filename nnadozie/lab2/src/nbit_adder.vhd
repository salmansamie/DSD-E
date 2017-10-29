--------------------------------------------------------------------------------
-- Company: Queen Mary University
-- Engineer: Nnadozie Okeke
--
-- Dependencies: ?
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity nbit_adder is
	Generic (n : positive := 4); -- generic value with default of 4 bits
  Port (
    InA, InB, C_terms : in std_logic_vector(n-1 downto 0);
    Sum : out std_logic_vector(n-1 downto 0);
    C_out : out std_logic
  );
end nbit_adder;

architecture Behavioral of nbit_adder is

	component full_adder
    Port (
      a, b, c_in : in std_logic;
      sum, c_out : out std_logic);
	end component;

	begin
		inst: for i in n-1 downto 0 generate
			nbit_adder_i : full_adder port map (InA(i), InB(i), C_terms(i), Sum(i), C_out);
		end generate;

end Behavioral;
