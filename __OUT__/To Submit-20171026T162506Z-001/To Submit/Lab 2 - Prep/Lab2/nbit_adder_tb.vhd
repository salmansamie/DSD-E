--------------------------------------------------------------------------------
-- Company: Group B 
-- Engineer: Raiyan Shaheen
--
-- Create Date:   04:20:24 10/25/2017
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY nbit_adder_tb IS
END nbit_adder_tb;
 
ARCHITECTURE behavior OF nbit_adder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT nbit_adder
    PORT(
         InA : IN  std_logic_vector(3 downto 0);
         InB : IN  std_logic_vector(3 downto 0);
         C_terms : IN  std_logic_vector(3 downto 0);
         Sum : OUT  std_logic_vector(3 downto 0);
         C_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal InA : std_logic_vector(3 downto 0) := (others => '0');
   signal InB : std_logic_vector(3 downto 0) := (others => '0');
   signal C_terms : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Sum : std_logic_vector(3 downto 0);
   signal C_out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nbit_adder PORT MAP (
          InA => InA,
          InB => InB,
          C_terms => C_terms,
          Sum => Sum,
          C_out => C_out
        );
		  
tb : PROCESS
	BEGIN

		-- Wait 100 ns for global reset to finish
		wait for 100 ns;
		
		InA <= "0001";
		InB <= "0000";
		C_terms <= "0000";
		
		wait for 100 ns;
		
		InA <= "0001";
		InB <= "0001";
		C_terms <= "0000";
		
		wait for 100 ns;
		
		InA <= "0001";
		InB <= "0001";
		C_terms <= "0001";
		
		wait for 100 ns;
		
		InA <= "0011";
		InB <= "0001";
		C_terms <= "0000";
		
		wait for 100 ns;
		
		InA <= "1001";
		InB <= "0001";
		C_terms <= "0001";
		
		wait for 100 ns;
		
		InA <= "1111";
		InB <= "0001";
		C_terms <= "0000";
		
		wait for 100 ns;
		
		InA <= "1000";
		InB <= "1000";
		C_terms <= "0000";
		
		
		wait; -- will wait forever
	END PROCESS;

END;
