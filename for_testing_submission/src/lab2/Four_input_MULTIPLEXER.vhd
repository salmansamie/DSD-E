--**********************************************************
--
--*************************************************************

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity four_input_multiplexer is
Port ( a : in std_logic;
		 b : in std_logic;
		 c : in std_logic;
		 d : in std_logic;
		 s : in std_logic_vector(1 downto 0);
       z : out std_logic);
end four_input_multiplexer;

architecture cond_architecture of four_input_multiplexer is

begin

process(a,b, c, d,s)

	begin
	if s="00" then
		z<=a after 7ns;
		else if s="01" then
			z<=b after 7ns;
			else if s="10" then
				z<=c after 7ns;
				else
					z<=d after 7ns;

			end if;
		end if;
	end if;
end process;

end cond_architecture;
