--------------------------------------------------------------------------------
-- Company: Group B
-- Engineer: Raiyan Shaheen
--
-- Create Date:   04:34:42 10/25/2017
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY shift_control_logic_tb IS
END shift_control_logic_tb;
 
ARCHITECTURE behavior OF shift_control_logic_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shift_control_logic
    PORT(
         Input : IN  std_logic_vector(2 downto 0);
         Output : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Input : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal Output : std_logic_vector(1 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shift_control_logic PORT MAP (
          Input => Input,
          Output => Output
        );
 
   tb: process
  begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		Input <= "000";
		
		wait for 100 ns;	
		Input <= "001";
		
		wait for 100 ns;	
		Input <= "010";
		
		wait for 100 ns;	
		Input <= "011";
		
		wait for 100 ns;	
		Input <= "100";
		
		wait for 100 ns;	
		Input <= "101";
		
		wait for 100 ns;	
		Input <= "110";
		
		wait for 100 ns;	
		Input <= "111";

      wait;
   end process;

END;
