--------------------------------------------------------------------------------

-- Engineer: Abdullah Al Noman
-- Description: n-bit register with LOAD/~HOLD control test bench

--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity nbit_loadhold_reg_tb is
end nbit_loadhold_reg_tb;

architecture behavior of nbit_loadhold_reg_tb is
component nbit_loadhold_reg
	Port(
	Dinputs : in std_logic_vector(3 downto 0);
	loadhold : in std_logic;
	CLK : in std_logic;
	reset : in std_logic;
	preset : in std_logic;
	qoutputs : inout std_logic_vector(3 downto 0) );
end component;

signal Dinputs : std_logic_vector(3 downto 0) := (others => '0');
signal loadhold : std_logic := '0';
signal CLK : std_logic := '0';
signal reset : std_logic := '0';
signal preset : std_logic := '0';
signal qoutputs : std_logic_vector(3 downto 0);
constant CLK_period : time := 10 ns;

begin
	uut: nbit_loadhold_reg Port map (
	Dinputs => Dinputs,
	loadhold => loadhold,
	CLK => CLK,
	reset => reset,
	preset => preset,
	qoutputs => qoutputs);

	--clk_process :process
--begin
--	CLK <= '0';
--	wait for clk_period/2;
--	CLK <= '1';
--	wait for clk_period/2;
--end process;

clk <= not clk after 50 ns; -- period = 100ns

--if hold enabled, should give last q even though there's a new input.
--unless preset is enables, in which case it should gives all 1s
stim_proc: process
begin
	wait for 100 ns;
	Dinputs <= "1001" ;

	wait for 100 ns;
	loadhold <= '1';

	wait for 100 ns;
	loadhold <= '0';

	wait for 100 ns;
	reset <= '1';

	wait for 100 ns;
	reset <= '0';
	preset <= '1';

	wait for 100 ns;
	preset <= '0';

	wait;
end process;

end;
