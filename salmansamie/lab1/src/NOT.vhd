
--Engineer: Salman Rahman
--Student ID: 140777039
--Email: salman.rahman@se14.qmul.ac.uk

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--not gate definition
entity not_gate is
	Port (a: in std_logic; 
	      f: out std_logic);
end not_gate;

--not_gate architecture
architecture not_architecture of not_gate is
begin
process(a)
	begin
		if a='1' then
			f <= '0' after 7ns;
		else
			f <= '1' after 7ns;
		end if;
end process;
end not_architecture;
