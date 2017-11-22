--------------------------------------------------------------------------------

-- Engineer: Abdullah Noman
-- Project: Lab 5  
-- Description: Static RAM Cell test bench

--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity static_RAM_cell_tb is
end static_RAM_cell_tb;

architecture behavior of static_RAM_cell_tb is 
component static_RAM_cell
Port( Data_in : IN  std_logic;
	Cell_select : IN  std_logic;
	Write_enable : IN  std_logic;
	Data_out : OUT  std_logic);
end component;

-- Inputs

signal Data_in : std_logic := '0';
signal Cell_select : std_logic := '0';
signal Write_enable : std_logic := '0';

-- Outputs

signal Data_out : std_logic;

begin

--    Comments    Cell_select  Write_enable  Data_in : Data_out 
-- --------------------------------------------------:----------
--  Not selected       0             X          X    :   Hi-Z   
--      Read           1             0          X    :  last D  
--     Write D         1             1          D    :     -    

-- Instantiate the Unit Under Test (UUT)

uut: static_RAM_cell Port map (
	Data_in => Data_in,
	Cell_select => Cell_select,
	Write_enable => Write_enable,
	Data_out => Data_out);

tb: process
begin		
	wait for 100 ns;
	
	-- Write '1' to latch
	
	Data_in <= '1';
	Cell_select <= '1';
	Write_enable <= '1';

	wait for 50 ns;

	Data_in <= '0';
	Cell_select <= '0';
	Write_enable <= '0';

	wait for 50 ns;

	-- Case 1 : Not selected : No change even when D is '0'

	assert (Data_out = 'Z') report "Case 1 failed: Data_out /= Z";

	Data_in <= '0';
	Cell_select <= '1';

	wait for 50 ns;

	-- Case 2 : Read last state : No change even when D is '0'

	assert (Data_out = '1') report "Case 2 failed: Data_out /= 1";

	-- Write '0' to latch
	
	Data_in <= '0';
	Cell_select <= '1';
	Write_enable <= '1';

	wait for 50 ns;

	Cell_select <= '0';
	Write_enable <= '0';

	wait for 50 ns;

	-- Case 3 : Not selected

	assert (Data_out = 'Z') report "Case 3 failed: Data_out /= Z";

	Cell_select <= '1';

	wait for 50 ns;

	-- Case 4 : Read last state

	assert (Data_out = '0') report "Case 4 failed: Data_out /= 0";

	Cell_select <= '0';
	
	wait;
end process;

end;
