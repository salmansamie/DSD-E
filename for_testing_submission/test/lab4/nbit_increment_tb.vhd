--------------------------------------------------------------------------------

-- Engineer: Abdullah Noman	
-- Description: n-bit incrementer circuit test bench

--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY nbitincrementer_tb IS
END nbitincrementer_tb;
 
ARCHITECTURE behavior OF nbitincrementer_tb IS 

-- Component Declaration for the Unit Under Test (UUT)

COMPONENT nbitincrementer
PORT(
	 InA : IN  std_logic_vector(3 downto 0);
	 cin : IN  std_logic;
	 sum : OUT  std_logic_vector(3 downto 0);
	 cout : OUT  std_logic
	);
END COMPONENT;

--Inputs

signal InA : std_logic_vector(3 downto 0) := (others => '0');
signal cin : std_logic := '0';

--Outputs

signal sum : std_logic_vector(3 downto 0);
signal cout : std_logic;

BEGIN

--------------------------------------------------------------------------------

--         Comments          InA  C_in :  Sum   C_out 
-- ------------------------------------:--------------
--         Unchanged        1110    0  :  1110    0   
--  Inc, with no out carry  1110    1  :  1111    0   
--    Inc, with out carry   1111    1  :  0000    1   

--------------------------------------------------------------------------------

-- Instantiate the Unit Under Test (UUT)

uut: nbitincrementer PORT MAP (
	  InA => InA,
	  cin => cin,
	  sum => sum,
	  cout => cout
	);

tb: process
begin		

  wait for 100 ns;

	cin <= '0';
	InA <= "1110";
	
	wait for 50 ns;
	
	-- Case 1 : Unchanged
	
	assert (sum = "1110") report "Case 1 failed: Sum /= 1110";
	assert (cout = '0') report "Case 1 failed: C_out /= 0";
	
	cin <= '1';
	
	wait for 50 ns;
	
	-- Case 2 : Inc, with no out carry
	
	assert (sum = "1111") report "Case 2 failed: Sum /= 1111";
	assert (cout = '0') report "Case 2 failed: C_out /= 0";
	
	cin <= '1';
	InA <= "1111";
	
	wait for 50 ns;
	
	-- Case 2 : Inc, with out carry
	
	assert (sum = "0000") report "Case 3 failed: Sum /= 0000";
	assert (cout = '1') report "Case 3 failed: C_out /= 1";

  wait;
end process;

END;
