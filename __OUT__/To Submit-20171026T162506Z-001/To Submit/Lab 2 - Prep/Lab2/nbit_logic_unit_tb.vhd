--------------------------------------------------------------------------------
-- Company: Group B
-- Engineer: Jariful Hoque
--
-- Create Date:   04:17:03 10/25/2017
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY nbit_logic_unit_tb IS
END nbit_logic_unit_tb;
 
ARCHITECTURE behavior OF nbit_logic_unit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT nbit_logic_unit
    PORT(
         InA : IN  std_logic_vector(3 downto 0);
         InB : IN  std_logic_vector(3 downto 0);
         Control : IN  std_logic_vector(1 downto 0);
         Output : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal InA : std_logic_vector(3 downto 0) := (others => '0');
   signal InB : std_logic_vector(3 downto 0) := (others => '0');
   signal Control : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Output : std_logic_vector(3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nbit_logic_unit PORT MAP (
          InA => InA,
          InB => InB,
          Control => Control,
          Output => Output
        );
 

   tb: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		InA <= "0101";
		InB <= "0000";
		Control <= "00";	
                        
      wait for 100 ns;  
                        
      InA <= "0011";
		InB <= "0101";
		Control <= "01";
		
		 wait for 100 ns;

      InA <= "0011";
		InB <= "0101";
		Control <= "10";
		
		wait for 100 ns;
		
      InA <= "0011";
		InB <= "0101";
		Control <= "11";

      wait;
   end process;

END;
