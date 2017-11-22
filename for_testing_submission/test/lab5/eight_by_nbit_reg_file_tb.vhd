--------------------------------------------------------------------------------

-- Engineer: Abdullah Noman
-- Project: Lab 5  
-- Description: 8 x n-bit regsiter file test bench

--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity eight_by_nbit_reg_file_tb is
end eight_by_nbit_reg_file_tb;

architecture behavior of eight_by_nbit_reg_file_tb is 
component eight_by_nbit_reg_file
Port( Data_in : IN  std_logic_vector(3 downto 0);
	Read_address_A : IN  std_logic_vector(2 downto 0);
	Read_address_B : IN  std_logic_vector(2 downto 0);
	Write_address : IN  std_logic_vector(2 downto 0);
	REA : IN  std_logic;
	REB : IN  std_logic;
	WE : IN  std_logic;
	CLK : IN  std_logic;
	OutA : OUT  std_logic_vector(3 downto 0);
	OutB : OUT  std_logic_vector(3 downto 0));
end component;

--Inputs

signal Data_in : std_logic_vector(3 downto 0) := (others => '0');
signal Read_address_A : std_logic_vector(2 downto 0) := (others => '0');
signal Read_address_B : std_logic_vector(2 downto 0) := (others => '0');
signal Write_address : std_logic_vector(2 downto 0) := (others => '0');
signal REA : std_logic := '0';
signal REB : std_logic := '0';
signal WE : std_logic := '0';
signal CLK : std_logic := '0';

--Outputs

signal OutA : std_logic_vector(3 downto 0);
signal OutB : std_logic_vector(3 downto 0);

begin

--           Comments             CLK   WE  REA  REB  Read_address_A  Read_address_B  Write_address  Data_in :  OutA    OutB  
-- ----------------------------------------------------------------------------------------------------------:----------------
--           Inactive           rising   0   0    0          X               X              X           X    :  Hi-Z    Hi-Z  
--     Read A from RFC reg P    rising   0   1    0          P               X              X           X    : last D   Hi-Z  
--     Read B from RFC reg Q    rising   0   0    1          X               Q              X           X    :  Hi-Z   last D 
--  Write Data_in to RFC reg R  rising   1   0    0          X               X              R           D    :  Hi-Z    Hi-Z  

-- Instantiate the Unit Under Test (UUT)

uut: eight_by_nbit_reg_file Port map (
	Data_in => Data_in,
	Read_address_A => Read_address_A,
	Read_address_B => Read_address_B,
	Write_address => Write_address,
	REA => REA,
	REB => REB,
	WE => WE,
	CLK => CLK,
	OutA => OutA,
	OutB => OutB);

CLK <= not CLK after 50 ns;

tb: process
begin		
	wait for 100 ns;	

	-- Write 0101 to RFC register 2

	Data_in <= "0101";
	Write_Address <= "010";
	WE <= '1';

	wait for 120 ns;

	WE <= '0';=

	-- Case 1 : No outputs being read

	assert (OutA = "ZZZZ") report "Case 1 failed : OutA /= ZZZZ";
	assert (OutB = "ZZZZ") report "Case 1 failed : OutB /= ZZZZ";

	REA <= '1';
	
	-- set readA address to 010
	Read_address_A <= "010";
	Data_in <= "1010";

	wait for 100 ns;

	-- Case 2 : Read OutA of RFC register 2

	assert (OutA = "0101") report "Case 2 failed : OutA /= 0101";
	assert (OutB = "ZZZZ") report "Case 2 failed : OutB /= ZZZZ";

	---------------------------------

	REA <= '0';

	-- Write 1010 to RFC register 5
	Write_Address <= "101";
	WE <= '1';

	wait for 100 ns;

	WE <= '0';
	
	-- set read A address to 101
	Read_address_B <= "101";
	REB <='1';

	wait for 100 ns;

	-- Case 3 : OutB of RFC Register 5 being read

	assert (OutA = "ZZZZ") report "Case 3 failed : OutA /= ZZZZ";
	assert (OutB = "1010") report "Case 3 failed : OutB /= 1010";
	
	REB <= '0';		

	wait;
end process;

end;
