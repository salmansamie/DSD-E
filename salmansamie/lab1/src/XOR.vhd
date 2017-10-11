
--Engineer: Salman Rahman
--Student ID: 140777039
--Email: salman.rahman@se14.qmul.ac.uk

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--xor gate entity definition:
entity xor_gate is
	Port (a, b: in std_logic; 
		  f: out std_logic);
end xor_gate;

--or_gate architecture
architecture xor_architecture of xor_gate is
begin
process(a, b)
	begin
		if a = '1' and b = '1' then
			f <= '0' after 7ns;
		elsif a = '0' and b = '0' then
			f <= '0' after 7ns;
        else 
            f <= '1' after 7ns;
		end if;
end process;
end xor_architecture;
