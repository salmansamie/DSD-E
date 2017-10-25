--------------------------------------------------------------------------------
-- Engineer: Jack Cockinis, Vojislav Djurovic, Marco Datola
-- Group 3
--
-- Create Date:   11:11:35 10/25/2016
-- Design Name:   
-- Module Name:   H:/3rd Year/V_lab2/logic_bit_slice_TB.vhd
-- Project Name:  V_lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: logic_bit_slice
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
--USE ieee.numeric_std.ALL;
 
ENTITY logic_bit_slice_TB IS
END logic_bit_slice_TB;
 
ARCHITECTURE behavior OF logic_bit_slice_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT logic_bit_slice
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic_vector(1 downto 0);
         f : OUT  std_logic
        );
    END COMPONENT;
    

   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic_vector(1 downto 0) := (others => '0');


   signal f : std_logic;

 
BEGIN
 

   uut: logic_bit_slice PORT MAP (
          a => a,
          b => b,
          c => c,
          f => f
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

			c(0) <= '0';
			c(1) <= '0';
			a <= '1';
			b <= '1';
			wait for 100 ns;
			c(0) <= '1';
			wait for 100 ns;
			c(1) <= '1';
			wait for 100 ns;
			c(0) <= '0';

      wait;
   end process;

END;
