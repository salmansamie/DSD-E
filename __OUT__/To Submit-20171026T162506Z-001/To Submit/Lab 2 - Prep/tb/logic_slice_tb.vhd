--------------------------------------------------------------------------------
-- Company: Group B 
-- Engineer: Jariful Hoque
--
-- Create Date:   04:22:50 10/25/2017
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY logic_slice_tb IS
END logic_slice_tb;
 
ARCHITECTURE behavior OF logic_slice_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT logic_slice
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         control : IN  std_logic_vector(1 downto 0);
         output : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal control : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic;
 
 BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: logic_slice PORT MAP (
          a => a,
          b => b,
          control => control,
          output => output
        ); 

	tb: process
	begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      a <= '0';
		b <= '0';
		control <= "00";
		
		wait for 100 ns;	

      a <= '1';
		b <= '1';
		control <= "01";
		
		wait for 100 ns;	

      a <= '1';
		b <= '0';
		control <= "10";
		
		wait for 100 ns;	

      a <= '1';
		b <= '0';
		control <= "11";
      
		wait;
   end process;

END;
