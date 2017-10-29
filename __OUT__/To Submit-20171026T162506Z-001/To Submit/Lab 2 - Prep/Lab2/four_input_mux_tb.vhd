--------------------------------------------------------------------------------
-- Company: Group B
-- Engineer: Jariful Hoque
--
-- Create Date:   04:32:07 10/25/2017
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY four_input_mux_tb IS
END four_input_mux_tb;
 
ARCHITECTURE behavior OF four_input_mux_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_input_mux
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         d : IN  std_logic;
         control : IN  std_logic_vector(1 downto 0);
         f : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';
   signal d : std_logic := '0';
   signal control : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal f : std_logic;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_input_mux PORT MAP (
          a => a,
          b => b,
          c => c,
          d => d,
          control => control,
          f => f
        );

   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      a <= '1';
		b <= '0';
		c <= '0';
		d <= '0';
		control <= "00";
		
		wait for 100 ns;	

      a <= '0';
		b <= '1';
		c <= '0';
		d <= '0';
		control <= "01";
		
		wait for 100 ns;	

      a <= '0';
		b <= '0';
		c <= '1';
		d <= '0';
		control <= "10";
		
		wait for 100 ns;	

      a <= '0';
		b <= '0';
		c <= '0';                 --output is always 1
		d <= '1';
		control <= "11";
		
      wait;
   end process;

END;
