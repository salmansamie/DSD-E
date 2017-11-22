--------------------------------------------------------------------------------

-- Engineer: Abdullah Noman
-- Project: Lab 5  
-- Description: TDM (time-division Multiplex) display circuit test bench

--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity TDM_tb is
end TDM_tb;

architecture behavior of TDM_tb is 
component TDM
Port( reset : IN  std_logic;
	CLK : IN  std_logic;
	InA : IN  std_logic_vector(3 downto 0);
	InB : IN  std_logic_vector(3 downto 0);
	Cathode_A : OUT  std_logic;
	Cathode_B : OUT  std_logic;
	Anode_outs : OUT  std_logic_vector(6 downto 0));
end component;

--Inputs

signal reset : std_logic := '0';
signal CLK : std_logic := '0';
signal InA : std_logic_vector(3 downto 0) := (others => '0');
signal InB : std_logic_vector(3 downto 0) := (others => '0');

--Outputs

signal Cathode_A : std_logic;
signal Cathode_B : std_logic;
signal Anode_outs : std_logic_vector(6 downto 0);

begin

--                Comments                      CLK         reset  InA  InB : Cathode_A  Cathode_B  Anode_outs 
-- -------------------------------------------------------------------------:----------------------------------
--                 Reset                         X            1     X    B  :     0          1       Decoded B 
--     Display A (every odd clock edge)  (n+1) rising edge    0     A    X  :     1          0       Decoded A 
--    Display B (every even clock edge)  (2*n) rising edge    0     X    B  :     0          1       Decoded B 


uut: TDM Port map (
	reset => reset,
	CLK => CLK,
	InA => InA,
	InB => InB,
	Cathode_A => Cathode_A,
	Cathode_B => Cathode_B,
	Anode_outs => Anode_outs);
	  
CLK <= not CLK after 50 ns;

tb: process
begin		
	wait for 100 ns;
	
	-- Address for '0'
	
	InA <= "0000";
	
	-- Address for 'A'
	
	InB <= "1010";
	
	reset <= '1';

	wait for 22 ns;

	reset <= '0';

	-- Case 1 : Reset

	assert (Cathode_A = '0') report "Case 1 failed : Cathode_A /= 0";
	assert (Cathode_B = '1') report "Case 1 failed : Cathode_B /= 1";
	assert (Anode_outs = "1101111") report "Case 1 failed : Anode_outs /= 1101111";

	wait for 100 ns;

	-- Case 2 : Display A active

	assert (Cathode_A = '1') report "Case 2 failed : Cathode_A /= 1";
	assert (Cathode_B = '0') report "Case 2 failed : Cathode_B /= 0";
	assert (Anode_outs = "1111110") report "Case 2 failed : Anode_outs /= 1111110";
	
	-- Address for '7'
	InB <= "0111";

	wait for 100 ns;

	-- Case 3 : Display B active

	assert (Cathode_A = '0') report "Case 3 failed : Cathode_A /= 0";
	assert (Cathode_B = '1') report "Case 3 failed : Cathode_B /= 1";
	assert (Anode_outs = "1110000") report "Case 3 failed : Anode_outs /= 1110000";

	wait;
end process;

end;
