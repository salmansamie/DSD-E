--------------------------------------------------------------------------------

-- Engineer: Abdullah Noman
-- Project: Lab 5  
-- Description: m x n-bit Static RAM cell array test bench

--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity mxn_bit_static_RAM_cell_tb is
end mxn_bit_static_RAM_cell_tb;

architecture behavior of mxn_bit_static_RAM_cell_tb is 

component mxn_bit_static_RAM_cell
Port( Data_in : IN  std_logic_vector(3 downto 0);
	Select_lines : IN  std_logic_vector(3 downto 0);
	Write_enable : IN  std_logic;
	Data_out : OUT  std_logic_vector(3 downto 0));
end component;

--Inputs

signal Data_in : std_logic_vector(3 downto 0) := (others => '0');
signal Select_lines : std_logic_vector(3 downto 0) := (others => '0');
signal Write_enable : std_logic := '0';

--Outputs

signal Data_out : std_logic_vector(3 downto 0);

begin

--      Comments      Select_lines  Write_enable  Data_In :     Data_out   
-- -------------------------------------------------------:----------------- 
--    Not selected        0000            X          X    :       Hi-Z      
--   Read from row n   bit-mask(n)        0          X    : last D of row n 
--  Write D to row n   bit-mask(n)        1          D    :        -        

uut: mxn_bit_static_RAM_cell Port map (
	Data_in => Data_in,
	Select_lines => Select_lines,
	Write_enable => Write_enable,
	Data_out => Data_out);

tb: process
begin		
	wait for 100 ns;

	-- Write 0101 to row 1

	Data_in <= "0101";
	Select_lines <= "0001";
	Write_enable <= '1';

	wait for 30 ns;

	Select_lines <= "0000"; 

	wait for 30 ns;

	-- Write 1001 to row 2

	Data_in <= "1001";
	Select_lines <= "0010";

	wait for 30 ns;

	Select_lines <= "0000";

	wait for 30 ns;

	-- Write 1010 to row 3

	Data_in <= "1010";
	Select_lines <= "0100";

	wait for 30 ns;

	Select_lines <= "0000"; 

	wait for 30 ns;

	-- Write 0110 to row 4

	Data_in <= "0110";
	Select_lines <= "1000";

	wait for 30 ns; 

	Select_lines <= "0000"; 
	Write_enable <= '0';

	wait for 30 ns;

	-- Case 1 : Output when none are selected

	assert (Data_out = "ZZZZ") report "Case 1 failed : Data_out /= ZZZZ";

	Select_lines <= "0001";

	wait for 30 ns;

	-- Case 2 : Read last value of row 1

	assert (Data_out = "0101") report "Case 2 failed : Data_out /= 0101";

	Select_lines <= "0010";

	-- Case 3 : Read last value of row 2

	assert (Data_out = "1001") report "Case 3 failed : Data_out /= 1001";

	Select_lines <= "0100";

	wait for 30 ns;

	-- Case 4 : Read last value of row 3

	assert (Data_out = "1010") report "Case 4 failed : Data_out /= 1010";

	Select_lines <= "1000";

	wait for 30 ns; 

	-- Case 5 : Read last value of row 4

	assert (Data_out = "0110") report "Case 5 failed : Data_out /= 0110";

	Select_lines <= "0000";

	wait;
end process;

end;
