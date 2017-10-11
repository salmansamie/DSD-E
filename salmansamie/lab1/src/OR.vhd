
--Engineer: Salman Rahman
--Student ID: 140777039
--Email: salman.rahman@se14.qmul.ac.uk

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--OR gate entity definition: Here, we define the variables to the ports of the standard logic gate.
entity or_gate is
	Port (a: in std_logic; 
	      b: in std_logic; 
		  f: out std_logic);
end or_gate;

--OR gate architecture definition: Here we create the actual architecture of the said gate.
architecture and_architecture of or_gate is
begin
process(a, b)
	begin
		if a = '0' and b = '0' then
			f <= '0' after 7ns;
		else
			f <= '1' after 7ns;
		end if;		
end process;
end and_architecture;
