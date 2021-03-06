
--Engineer: Salman Rahman
--Student ID: 140777039
--Email: salman.rahman@se14.qmul.ac.uk
--Reviewed by Okeke NNadozie

--importing the necessary librarys
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--NOT gate entity definition: Here, we define the variables to the ports of the standard logic gate.
entity nand_gate is
	Port (a: in std_logic; 
	      b: in std_logic; 
		  f: out std_logic);
end nand_gate;

--NAND gate architecture definition: Here we create the actual architecture of the said gate.
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
	

