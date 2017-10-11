--Engineer: Abdullah Noman
--Description: mux_2to1

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_2to1 is
	Port (i0: in std_logic);
		 (i1: in std_logic);
		 (s0: in std_logic);
		 (f: out std_logic);
end mux_2to1;

architecture my_architecture of mux_2to1 is
begin
   process(io,i1,so)
   begin
		if s0='0' then
				f <= i0 after 7ns;
		else
				f <= i1 after 7ns;
		end if;
	end process;
end my_architecture;