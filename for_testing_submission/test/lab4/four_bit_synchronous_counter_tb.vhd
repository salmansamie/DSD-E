--------------------------------------------------------------------------------

-- Engineer: Abdullah Noman
-- Description: 4-bit synchronous counter (using combinational next-state logic) test bench

--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity four_bit_synchronous_counter_tb is
end four_bit_synchronous_counter_tb;

architecture behavior of four_bit_synchronous_counter_tb is
component four_bit_synchronous_counter
Port(
	CLK : in std_logic;
	reset : in std_logic;
	qoutputs : inout std_logic_vector(3 downto 0));
end component;

-- Inputs

signal CLK : std_logic := '0';
signal reset : std_logic := '0';

-- BiDirs

signal qoutputs : std_logic_vector(3 downto 0);

-- Clock period definitions

--constant CLK_period : time := 100 ns;
begin
	uut: four_bit_synchronous_counter Port map (
	CLK => CLK,
	reset => reset,
	qoutputs => qoutputs);

-- Clock process definitions

clk <= not clk after 50 ns;

-- Stimulus process
stim_proc: process
-- a counter with reset and preset ability
-- on reset output goes to all 0, then begins from 1


begin
		wait for 100 ns;

		reset <= '1';

		wait for 100 ns;

		reset <= '0';

		wait for 800 ns;

		reset <= '1';

		wait for 100 ns;

		reset <= '0';

		wait;
	end process;
end;
