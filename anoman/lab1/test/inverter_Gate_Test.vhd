--Engineer: Abdullah Noman
--Description: inverter_Gate_Test

entity inverter_Gate_Test is
port (
a, b: in std_logic; 
f : out std_logic
);
end inverter_Gate_Test;

architecture conditional_and_architecture of inverter_Gate_Test is
begin
process (a)
begin
	if a='1' then
		f <= '0' after 7ns;
	else
		f <= '1' after 7ns;
	end if;
end process;
end conditional_and_architecture;

-- test bench

entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component
component and_gate is
port(
a : in std_logic;
f: out std_logic);
end component;

signal a_in, f_out: std_logic;

begin
-- Connect DUT
DUT: and_gate port map(a_in, f_out);

process
begin
	a_in <= '0';
wait for 7 ns;
assert(f_out='1') report "Fail 1" severity error;

	a_in <= '1';
wait for 7 ns;
assert(f_out='0') report "Fail 0" severity error;
	
	-- Clear inputs
		a_in <= '0';

assert false report "Test done." severity note;
wait;
	
end process;
end tb;