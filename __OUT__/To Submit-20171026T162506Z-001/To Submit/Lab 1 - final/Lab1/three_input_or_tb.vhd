--------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jayant Shivarajan
--
-- Create Date:   17:26:13 10/19/2017
-- Design Name:   
-- Module Name:   C:/Users/js317/Desktop/DSD/Lab1/three_input_or_tb.vhd
-- Project Name:  Lab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: three_input_or
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
 
ENTITY three_input_or_tb IS
END three_input_or_tb;
 
ARCHITECTURE behavior OF three_input_or_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT three_input_or
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         f : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';

 	--Outputs
   signal f : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: three_input_or PORT MAP (
          a => a,
          b => b,
          c => c,
          f => f
        );


	tb : PROCESS
	BEGIN

-- *** Comments on how this test bench works *** --		

		-- truth table for a three input or gate:

		--    c   b   a  :  f  
		-----------------:-----
		--		0	 0	  0  :  0
		--		0	 0	  1  :  1
		--		0	 1	  0  :  1
		--		0	 1	  1  :  1
		--		1	 0	  0  :  1
		--		1	 0	  1  :  1
		--		1	 1	  0  :  1
		--		1	 1	  1  :  1

-- ********************************************** --

		-- Wait 100 ns for global reset to finish
		wait for 100 ns;
		a <= '0';
		b <= '0';
		c <= '0'; 		-- check that 0 + 0 + 0 => f = 0 	
		wait for 100 ns;
		a <= '1';
		b <= '0';
		c <= '0'; 		-- check that 0 + 1 + 0 => f = 1  	
		wait for 100 ns;
		a <= '0';
		b <= '1';
		c <= '0'; 		-- check that 1 + 0 + 0 => f = 1  	
		wait for 100 ns;
		a <= '1';
		b <= '1';
		c <= '0'; 		-- check that 1 + 1 + 0 => f = 1 		
	   wait for 100 ns;
		a <= '0';
		b <= '0';
		c <= '1'; 		-- check that 0 + 0 + 1 => f = 1 
		wait for 100 ns;
		a <= '1';
		b <= '0';
		c <= '1'; 		-- check that 1 + 0 + 1 => f = 1 
		wait for 100 ns;
		a <= '0';
		b <= '1';
		c <= '1'; 		-- check that 0 + 1 + 1 => f = 1 
		wait for 100 ns;
		a <= '1';
		b <= '1';
		c <= '1'; 		-- check that 1 + 1 + 1 => f = 1 
 
		wait; -- will wait forever
	END PROCESS;

END;