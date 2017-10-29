--------------------------------------------------------------------------------
-- Company: Group B
-- Engineer: Redouan Farah
--
-- Create Date:   04:37:21 10/25/2017
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY four_bit_lac_adder_tb IS
END four_bit_lac_adder_tb;
 
ARCHITECTURE behavior OF four_bit_lac_adder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bit_lac_adder
    PORT(
         InA : IN  std_logic_vector(3 downto 0);
         InB : IN  std_logic_vector(3 downto 0);
         C_in : IN  std_logic;
         Sum : OUT  std_logic_vector(3 downto 0);
         C_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal InA : std_logic_vector(3 downto 0) := (others => '0');
   signal InB : std_logic_vector(3 downto 0) := (others => '0');
   signal C_in : std_logic := '0';

 	--Outputs
   signal Sum : std_logic_vector(3 downto 0);
   signal C_out : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_bit_lac_adder PORT MAP (
          InA => InA,
          InB => InB,
          C_in => C_in,
          Sum => Sum,
          C_out => C_out
        );

   tb: process
	begin

		-- Wait 100 ns for global reset to finish
		wait for 100 ns;
		
		InA <= "0000";
		InB <= "0000";
		
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
		
		wait for 100 ns;

		InA <= "1111";
		InB <= "0001";		

      wait;
   end process;

END;
