--------------------------------------------------------------------------------

-- Engineer: Abdullah Noman
-- Project: Lab 5  
-- Description: 64 x 4-bit Static RAM test bench

--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity sixty_four_by_four_sram_tb is
end sixty_four_by_four_sram_tb;

architecture behavior of sixty_four_by_four_sram_tb is 
component sixty_four_by_four_sram
Port( address : IN  std_logic_vector(5 downto 0);
	read_notwrite : IN  std_logic;
	chip_select : IN  std_logic;
	data_inout : INOUT  std_logic_vector(3 downto 0));
end component;

-- Inputs

signal address : std_logic_vector(5 downto 0) := (others => '0');
signal read_notwrite : std_logic := '0';
signal chip_select : std_logic := '0';

-- BiDirs

signal data_inout : std_logic_vector(3 downto 0);

begin

--   Address   : Data value
--   000000    :    0110
--   001110    :    1000
--   010000    :    1110
--   011001    :    0011
--   100001    :    1000
--   101111    :    1010
--   110101    :    0011
--   111011    :    1111

-- Instantiate the Unit Under Test (UUT)

uut: sixty_four_by_four_sram Port map (
	address => address,
	read_notwrite => read_notwrite,
	chip_select => chip_select,
	data_inout => data_inout);

tb: process
begin		
	wait for 100 ns;

	-- 8 x 4-bit SRAM 0
	
	address <= "000000";		 
	data_inout <= "0110";
	read_notwrite <= '0'; 
	wait for 36 ns; 		
	chip_select <= '1';	
	wait for 36 ns; 		
	chip_select <= '0';	
	wait for 36 ns; 		

	-- 8 x 4-bit SRAM 1
	
	address <= "001110";		 
	data_inout <= "1000";
	read_notwrite <= '0'; 
	wait for 36 ns; 		
	chip_select <= '1';	
	wait for 36 ns; 		
	chip_select <= '0';	
	wait for 36 ns; 		

	-- 8 x 4-bit SRAM 2
	
	address <= "010000";		 
	data_inout <= "1110";
	read_notwrite <= '0'; 
	wait for 36 ns; 		
	chip_select <= '1';	
	wait for 36 ns; 		
	chip_select <= '0';	
	wait for 36 ns; 		

	-- 8 x 4-bit SRAM 3
	
	address <= "011001";		 
	data_inout <= "0011";
	read_notwrite <= '0'; 
	wait for 36 ns; 		
	chip_select <= '1';	
	wait for 36 ns; 		
	chip_select <= '0';	
	wait for 36 ns; 		

	-- 8 x 4-bit SRAM 4
	
	address <= "100001";		 
	data_inout <= "1000";
	read_notwrite <= '0'; 
	wait for 36 ns; 		
	chip_select <= '1';	
	wait for 36 ns; 		
	chip_select <= '0';	
	wait for 36 ns; 		

	-- 8 x 4-bit SRAM 5
	
	address <= "101111";		 
	data_inout <= "1010";
	read_notwrite <= '0'; 
	wait for 36 ns; 		
	chip_select <= '1';	
	wait for 36 ns; 		
	chip_select <= '0';	
	wait for 36 ns; 		

	-- 8 x 4-bit SRAM 6
	
	address <= "110101";		 
	data_inout <= "0011";
	read_notwrite <= '0'; 
	wait for 36 ns; 		
	chip_select <= '1';	
	wait for 36 ns; 		
	chip_select <= '0';	
	wait for 36 ns; 		

	-- 8 x 4-bit SRAM 7
	
	address <= "111011";
	data_inout <= "1111"; 
	read_notwrite <= '0';
	wait for 36 ns; 	
	chip_select <= '1';	
	wait for 36 ns; 	
	chip_select <= '0';	
	wait for 36 ns; 	

	data_inout <= "ZZZZ";

	read_notwrite <= '1';

	-- address 0
	
	address <= "000000";		
	wait for 42 ns; 	
	chip_select <= '1';	-- 
	wait for 29 ns; 		

	-- Case 1 : last value of address 0

	assert (data_inout = "0110") report "Case 1 failed : data_inout /= 0110";

	chip_select <= '0';	 
	wait for 30 ns; 	 

	-- address 1
	
	address <= "001110";	
	wait for 42 ns; 		
	chip_select <= '1';	
	wait for 29 ns; 

	-- Case 2 : last value of address 1

	assert (data_inout = "1000") report "Case 2 failed : data_inout /= 1000";

	chip_select <= '0';	 
	wait for 30 ns; 		

	-- address 2
	
	address <= "010000";		 
	wait for 42 ns; 		
	chip_select <= '1';	
	wait for 29 ns; 	

	-- Case 3 : last value of address 2

	assert (data_inout = "1110") report "Case 3 failed : data_inout /= 1110";

	chip_select <= '0';	 
	wait for 30 ns; 	

	-- address 3
	
	address <= "011001";		
	wait for 42 ns; 		
	chip_select <= '1';	
	wait for 29 ns; 	

	-- Case 4 : last value of address 3

	assert (data_inout = "0011") report "Case 4 failed : data_inout /= 0011";

	chip_select <= '0';	 
	wait for 30 ns; 	

	-- address 4
	
	address <= "100001";	
	wait for 42 ns; 		
	chip_select <= '1';	
	wait for 29 ns; 	

	-- Case 5 : last value of address 4 

	assert (data_inout = "1000") report "Case 5 failed : data_inout /= 1000";

	chip_select <= '0';	 
	wait for 30 ns; 	

	-- address 5
	
	address <= "101111";		 
	wait for 42 ns; 
	chip_select <= '1';	
	wait for 29 ns; 	

	-- Case 6 : last value of address 5

	assert (data_inout = "1010") report "Case 6 failed : data_inout /= 1010";

	chip_select <= '0';	 
	wait for 30 ns; 	

	-- address 6
	
	address <= "110101";
	wait for 42 ns; 	
	chip_select <= '1';	
	wait for 29 ns; 

	-- Case 7 : last value of address 6 

	assert (data_inout = "0011") report "Case 7 failed : data_inout /= 0011";

	chip_select <= '0';	 
	wait for 30 ns; 

	-- address 7
	
	address <= "111011";
	wait for 42 ns; 	
	chip_select <= '1';	
	wait for 29 ns; 
	
	-- Case 8 : last value of address 7

	assert (data_inout = "1111") report "Case 8 failed : data_inout /= 1111";

	chip_select <= '0';	 
	wait for 30 ns;

	wait;
end process;

end;
