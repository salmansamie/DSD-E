
--Engineer: Salman Rahman
--Email: salman.rahman@se14.qmul.ac.uk


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
