--------------------------------------------------------------------------------
-- Company: 
-- Engineer: Redouan Farah
--
-- Create Date:   16:09:26 10/19/2017
-- Design Name:   
-- Module Name:   C:/Users/js317/Desktop/DSD/Lab1/not_gate_tb.vhd
-- Project Name:  Lab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: not_gate
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
 
ENTITY not_gate_tb IS
END not_gate_tb;
 
ARCHITECTURE behavior OF not_gate_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT not_gate
    PORT(
         a : IN  std_logic;
         f : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';

 	--Outputs
   signal f : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: not_gate PORT MAP (
          a => a,
          f => f
        );

	tb : PROCESS
	BEGIN

-- *** Comments on how this test bench works *** --		

		-- truth table for a not gate:

		--  a  :  f
		-------:-----
		--  0  :	 1
		--	 1  :	 0

-- ********************************************** --

		-- Wait 100 ns for global reset to finish
		wait for 100 ns;
		a <= '0';		-- check that 0 => f = 1 	
		wait for 100 ns;
		a <= '1';		-- check that 1 => f = 0 	
		 
		wait; -- will wait forever
	END PROCESS;


END;
