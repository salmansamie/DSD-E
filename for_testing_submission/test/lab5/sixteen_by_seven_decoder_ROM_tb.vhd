--------------------------------------------------------------------------------

-- Engineer: Abdullah Noman
-- Project: Lab 5  
-- Description:16 x 7-bit ROM seven-segment display decoder test bench

--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity sixteen_by_seven_decoder_ROM_tb is
end sixteen_by_seven_decoder_ROM_tb;
 
architecture behavior of sixteen_by_seven_decoder_ROM_tb is 
component sixteen_by_seven_decoder_ROM
Port( address : IN  std_logic_vector(3 downto 0);
	data_outputs : OUT  std_logic_vector(6 downto 0));
end component;

-- Inputs

signal address : std_logic_vector(3 downto 0) := (others => '0');

-- Outputs

signal data_outputs : std_logic_vector(6 downto 0);

begin

--              Comments              address : data_outputs 
-- -------------------------------------------:--------------
--       LED display value for '0'      0000  :    1111110   
--       LED display value for '1'      0001  :    0110000   
--       LED display value for '2'      0010  :    1101101   
--       LED display value for '3'      0011  :    1111001   
--       LED display value for '4'      0100  :    0110011   
--       LED display value for '5'      0101  :    1011011   
--       LED display value for '6'      0110  :    1011111   
--       LED display value for '7'      0111  :    1110000   
--       LED display value for '8'      1000  :    1111111   
--       LED display value for '9'      1001  :    1111011   
--       LED display value for 'A'      1010  :    1101111   
--       LED display value for 'B'      1011  :    0011111   
--       LED display value for 'C'      1100  :    1001110   
--       LED display value for 'D'      1101  :    0111101   
--       LED display value for 'E'      1110  :    1001111   
--       LED display value for 'F'      1111  :    1000111   
--  Turn LED off for any other value     X    :    0000000   

-- Instantiate the Unit Under Test (UUT)

uut: sixteen_by_seven_decoder_ROM Port map (
	address => address,
	data_outputs => data_outputs);

tb: process
begin		
	wait for 100 ns;

	address <= "0000";

	wait for 7 ns;

	-- Case 1 : Check value for address 0000

	assert (data_outputs = "1111110") report "Case 1 failed : data_outputs /= 1111110";
	
	address <= "0001";

	wait for 7 ns;

	-- Case 2 : Check value for address 0001

	assert (data_outputs = "0110000") report "Case 2 failed : data_outputs /= 0110000";

	address <= "0010";

	wait for 7 ns;

	-- Case 3 : Check value for address 0010

	assert (data_outputs = "1101101") report "Case 3 failed : data_outputs /= 1101101";

	address <= "0011";

	wait for 7 ns;

	-- Case 4 : Check value for address 0011

	assert (data_outputs = "1111001") report "Case 4 failed : data_outputs /= 1111001";

	address <= "0100";

	wait for 7 ns; -- Wait until value is read

	-- Case 5 : Check value for address 0100

	assert (data_outputs = "0110011") report "Case 5 failed : data_outputs /= 0110011";

	address <= "0101";

	wait for 7 ns;

	-- Case 6 : Check value for address 0101

	assert (data_outputs = "1011011") report "Case 6 failed : data_outputs /= 1011011";

	address <= "0110";

	wait for 7 ns;

	-- Case 7 : Check value for address 0110

	assert (data_outputs = "1011111") report "Case 7 failed : data_outputs /= 1011111";

	address <= "0111";

	wait for 7 ns;

	-- Case 8 : Check value for address 0111

	assert (data_outputs = "1110000") report "Case 8 failed : data_outputs /= 1110000";

	address <= "1000";

	wait for 7 ns;
	
	-- Case 9 : Check value for address 1000

	assert (data_outputs = "1111111") report "Case 9 failed : data_outputs /= 1111111";

	address <= "1001";

	wait for 7 ns;

	-- Case 10 : Check value for address 1001

	assert (data_outputs = "1111011") report "Case 10 failed : data_outputs /= 1111011";

	address <= "1010";

	wait for 7 ns;

	-- Case 11 : Check value for address 1010 
	
	assert (data_outputs = "1101111") report "Case 11 failed : data_outputs /= 1101111";

	address <= "1011";

	wait for 7 ns; 

	-- Case 12 : Check value for address 1011

	assert (data_outputs = "0011111") report "Case 12 failed : data_outputs /= 0011111";

	address <= "1100";

	wait for 7 ns;

	-- Case 13 : Check value for address 1100

	assert (data_outputs = "1001110") report "Case 13 failed : data_outputs /= 1001110";

	address <= "1101";

	wait for 7 ns; 

	-- Case 14 : Check value for address 1101

	assert (data_outputs = "0111101") report "Case 14 failed : data_outputs /= 0111101";
	
	address <= "1110";

	wait for 7 ns;

	-- Case 15 : Check value for address 1110

	assert (data_outputs = "1001111") report "Case 15 failed : data_outputs /= 1001111";

	address <= "1111";

	wait for 7 ns;

	-- Case 16 : Check value for address 1111

	assert (data_outputs = "1000111") report "Case 16 failed : data_outputs /= 1000111";

	address <= "UUUU";

	wait for 7 ns;
	
	-- Case 17 : Check value for invalid address

	assert (data_outputs = "0000000") report "Case 17 failed : data_outputs /= 0000000";

	wait;
end process;

end;
