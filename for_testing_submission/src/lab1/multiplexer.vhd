--**********************************************************
--
--*************************************************************

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity multiplexer is
Port ( a : in std_logic;
		 b : in std_logic;
		 s : in std_logic;
       z : out std_logic);
end multiplexer;

architecture cond_architecture of multiplexer is

begin

process(a,b,s)

	begin
	if s='0' then
		z<=a after 7ns;
	else
		z<=b after 7ns;
	end if;
end process;

end cond_architecture;
