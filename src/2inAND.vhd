
--nand_gate definition:
entity and_gate is
	Port (a : in std_logic; b: in std_logic; f: in std_logic);
end and_gate;

--nand_gate architecture
architecture and_architecture of and_gate is

begin
process(a, b)
	begin
		if a='1' and b='1' then
			f <= '0' after 7ns;
		else
			f <= '1' after 7ns;
		end if;		
end process;
end nand_architecture