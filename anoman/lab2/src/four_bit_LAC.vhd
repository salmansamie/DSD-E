 --------------------------------------------------------------------------------
 
-- Engineer: Abdullah Noman
-- Description:	 4-bit LAC Adder

--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity four_bit_LAC_adder is
    Port ( InA : in std_logic_vector(3 downto 0);
		InB : in std_logic_vector(3 downto 0);
        C_In : in std_logic;
        C_terms : out std_logic_vector(3 downto 0));
end four_bit_LAC_adder;

architecture Behavioral of four_bit_LAC_adder is
signal G, P : std_logic_vector (3 downto 0);
begin
	G <= InA and InB after 7 ns;
	P <= InA or InB after 7 ns;

	C_terms(0) <= C_in;
	C_terms(1) <= G(0) or (P(0) and C_in) after 14 ns;
	C_terms(2) <= G(1) or (P(1) and G(0)) or (P(1) and P(0) and C_in) after 14 ns;
	C_terms(3) <= G(2) or (P(2) and G(1)) or (P(2) and P(1) and G(0)) or (P(2) and P(1) and P(0) and C_in) after 14 ns;

end Behavioral;




















