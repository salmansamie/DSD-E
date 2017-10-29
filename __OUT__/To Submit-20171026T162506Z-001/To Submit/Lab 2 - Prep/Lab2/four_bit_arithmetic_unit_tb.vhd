--------------------------------------------------------------------------------
-- Company: Group B 
-- Engineer: Jayant Shivarajan
--
-- Create Date:   04:45:46 10/25/2017
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY four_bit_arithmetic_unit_tb IS
END four_bit_arithmetic_unit_tb;
 
ARCHITECTURE behavior OF four_bit_arithmetic_unit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bit_arithmetic_unit
    PORT(
         InA : IN  std_logic_vector(3 downto 0);
         InB : IN  std_logic_vector(3 downto 0);
         Control : IN  std_logic_vector(1 downto 0);
         Sum : OUT  std_logic_vector(3 downto 0);
         C_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal InA : std_logic_vector(3 downto 0) := (others => '0');
   signal InB : std_logic_vector(3 downto 0) := (others => '0');
   signal Control : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Sum : std_logic_vector(3 downto 0);
   signal C_out : std_logic;
 
BEGIN

-- *** Comments on how this test bench works *** --		

-- The Arithmetic Unit performs increment/decrement
-- and addition/subtration based on the control:
-- 	InA	InB   Control	: 	Sum	C_out
--    0001	0001	  00		:	0010	  0
--		1010  1010    01		:  0100    1
--		0100  0100    10		:  0011    0
--		0001  0100    11		:  0011    1
	
-- ********************************************** --
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_bit_arithmetic_unit PORT MAP (
          InA => InA,
          InB => InB,
          Control => Control,
          Sum => Sum,
          C_out => C_out
        );

	tb : PROCESS
	BEGIN

		-- Wait 100 ns for global reset to finish
		wait for 100 ns;

		InA <= "0001";
		InB <= "0001";
		Control <= "00";	-- Increment A => Sum = 0010, C_out = 0

		wait for 100 ns;

		InA <= "1010";
		InB <= "1010";
		Control <= "01";	-- A + B => Sum = 0100, C_out = 1

		wait for 100 ns;

		InA <= "0100";
		InB <= "0100";
		Control <= "10";	-- Decrement A => Sum = 0011, C_out = 0

		wait for 100 ns;

		InA <= "0001";
		InB <= "0100";
		Control <= "11";	-- A - B => Sum = 0011, C_out = 1

		wait; -- will wait forever
	END PROCESS;

END;
