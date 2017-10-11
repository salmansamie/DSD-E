
--Engineer: Salman Rahman
--Email: salman.rahman@se14.qmul.ac.uk


--nand gate definition
entity nand_gate is
	Port (a: in std_logic; 
	      b: in std_logic; 
		  f: out std_logic);
end nand_gate;

--nand gate architecture
architecture nand_architecture of nand_gate is
begin
process(a, b)
	begin
		if a = '1' and b = '1' then
			f <= '0' after 7ns;
		else
			f <= '1';
		end if;
end process;
end nand_architecture;
	

