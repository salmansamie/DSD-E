--------------------------------------------------------------------------------
-- Engineer: Jack Cockinis, Vojislav Djurovic, Marco Datola
-- Group 3
--
-- Create Date:   21:58:01 10/24/2016
-- Design Name:   
-- Module Name:   C:/Users/md470/Downloads/ECS615U_Lab2/n_bit_two_input_mux_TB.vhd
-- Project Name:  ECS615U_Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: n_bit_two_input_mux
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY n_bit_two_input_mux_TB IS
	shared variable n : positive := 4;
END n_bit_two_input_mux_TB;
 
ARCHITECTURE behavior OF n_bit_two_input_mux_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT n_bit_two_input_mux
	 
    PORT(
         s : IN  std_logic;
         I0 : IN  std_logic_vector(n-1 downto 0);
         I1 : IN  std_logic_vector(n-1 downto 0);
         f : OUT  std_logic_vector(n-1 downto 0)
        );
    END COMPONENT;
    
   --Inputs
   signal s : std_logic := '0';
   signal I0 : std_logic_vector(n-1 downto 0) := (others => '0');
   signal I1 : std_logic_vector(n-1 downto 0) := (others => '0');
	signal f : std_logic_vector (n-1 downto 0);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: n_bit_two_input_mux PORT MAP (
          s => s,
          I0 => I0,
          I1 => I1,
          f => f
        );
 

   -- Stimulus process
   stim_proc: process
	variable n : positive := 4;
   begin		
      -- hold reset state for 100 ns.
-- SAMPLE CASES FOR SCREEN SHOT	
--		wait for 100 ns;	
--				I1loop: for k in ((n*n)-1) downto 0 loop
--				   s <= I1(0);
--					I0 <= std_logic_vector(to_unsigned((15-k), n));
--					I1 <= std_logic_vector(to_unsigned(k, n));
--					wait for 100ns;
--				end loop I1loop;
--      wait;
--   end process;
		
-- ALL CASES		
      wait for 100 ns;	

		sloop : for i in std_logic range '0' to '1' loop
			s <= i;
			I0loop: for j in ((n*n)-1) downto 0 loop
				I0 <= std_logic_vector(to_unsigned(j, n));
				I1loop: for k in ((n*n)-1) downto 0 loop
					I1 <= std_logic_vector(to_unsigned(k, n));
					wait for 100ns;
				end loop I1loop;
			end loop I0loop;
		end loop sloop;
      wait;
   end process;

END;
