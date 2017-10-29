--------------------------------------------------------------------------------
-- Company: Queen Mary University
-- Engineer: Chris Harte
--
-- Create Date:   14:33:52 10/01/2008
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY four_bit_lac_tb_vhd IS
END four_bit_lac_tb_vhd;

ARCHITECTURE behavior OF four_bit_lac_tb_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT four_bit_lac
	PORT(
		InA : IN std_logic_vector(3 downto 0);
		InB : IN std_logic_vector(3 downto 0);
		C_In : IN std_logic;          
		C_terms : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	--Inputs
	SIGNAL C_In :  std_logic := '0';
	SIGNAL InA :  std_logic_vector(3 downto 0) := (others=>'0');
	SIGNAL InB :  std_logic_vector(3 downto 0) := (others=>'0');

	--Outputs
	SIGNAL C_terms :  std_logic_vector(3 downto 0);

BEGIN

-- *** Comments on how this test bench works *** --		

-- The LAC generates the carry terms that we would 
-- expect to see on the outputs of each full adder
-- in a 4-bit ripple adder.  This test bench checks 
-- that the correct carries are generated using the 
-- following bit patterns:

-- 	InA	InB	: 	C_terms 
--    0000	0000	:	0000
--		0001  0001  :  0010
--		0010  0010  :  0100
--		0100  0100  :  1000
--    0001	1111	:	1110
	
-- ********************************************** --


	-- Instantiate the Unit Under Test (UUT)
	uut: four_bit_lac PORT MAP(
		InA => InA,
		InB => InB,
		C_In => C_In,
		C_terms => C_terms
	);

	tb : PROCESS
	BEGIN

		-- Wait 100 ns for global reset to finish
		wait for 100 ns;

		InA <= "0001";
		InB <= "0001";

		wait for 100 ns;

		InA <= "0010";
		InB <= "0010";

		wait for 100 ns;

		InA <= "0100";
		InB <= "0100";

		wait for 100 ns;

		InA <= "0001";
		InB <= "1111";

		wait; -- will wait forever
	END PROCESS;

END;























































































