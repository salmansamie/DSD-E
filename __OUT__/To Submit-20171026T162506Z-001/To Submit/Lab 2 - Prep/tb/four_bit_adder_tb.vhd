--------------------------------------------------------------------------------
-- Company: Group B
-- Engineer: Redouan Farah
--
-- Create Date:   04:41:48 10/25/2017
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY four_bit_adder_tb IS
END four_bit_adder_tb;
 
ARCHITECTURE behavior OF four_bit_adder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bit_adder
    PORT(
         InA : IN  std_logic_vector(3 downto 0);
         InB : IN  std_logic_vector(3 downto 0);
         Control : IN  std_logic;
         Sum : OUT  std_logic_vector(3 downto 0);
         C_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal InA : std_logic_vector(3 downto 0) := (others => '0');
   signal InB : std_logic_vector(3 downto 0) := (others => '0');
   signal Control : std_logic := '0';

 	--Outputs
   signal Sum : std_logic_vector(3 downto 0);
   signal C_out : std_logic;
 
BEGIN

	-- Instantiate the Unit Under Test (UUT)
   uut: four_bit_adder PORT MAP (
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

		Control <= '0';		  -- test A + B (normal addition)
		InA <= "0001";
		InB <= "1111";


		wait for 100 ns;

		Control <= '1';		  -- test A - B (normal subtraction)
		InA <= "1111";
		InB <= "0001";
	

		wait; -- will wait forever
	END PROCESS;
 

END;
