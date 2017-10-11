
--Engineer: Salman Rahman
--Email: salman.rahman@se14.qmul.ac.uk


--or gate definition:
entity or_gate is
	Port (a: in std_logic; 
	      b: in std_logic; 
		  f: out std_logic);
end and_gate;

--or_gate architecture
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
