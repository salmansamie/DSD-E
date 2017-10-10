
--not gate definition
entity not_gate is
	Port (a: in std_logic);
end not_gate;

--not_gate architecture
architecture not_architecture of not_gate is

begin
process(a)
	begin
		if a='1' then
			f <= '0' after 7ns;
		end if;
end process;
end not_architecture