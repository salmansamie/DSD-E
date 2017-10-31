--------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jayant Shivarajan
--
-- Create Date:   17:51:40 10/19/2017
-- Design Name:   
-- Module Name:   C:/Users/js317/Desktop/DSD/Lab1/half_adder_tb.vhd
-- Project Name:  Lab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: half_adder
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
 
ENTITY half_adder_tb IS
END half_adder_tb;
 
ARCHITECTURE behavior OF half_adder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT half_adder
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         s : OUT  std_logic;
         c : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';

 	--Outputs
   signal s : std_logic;
   signal c : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: half_adder PORT MAP (
          a => a,
          b => b,
          s => s,
          c => c
        );

	tb : PROCESS
	BEGIN

-- *** Comments on how this test bench works *** --		

		-- truth table for a half adder:

		--  a   b   :  s   c  
		------------:---------
		--  0   0   :	0   0
		--	 1   0   :	1   0
		--  0   1   :	1   0
		--	 1   1   :	0   1

-- ********************************************** --

		-- Wait 100 ns for global reset to finish
	   wait for 100 ns;
		a <= '0';
		b <= '0'; 		-- check that 0 + 0 => s = 0, c = 0
		wait for 100 ns;
		a <= '1';
		b <= '0';		-- check that 1 + 0 => s = 1, c = 0
		wait for 100 ns;
		a <= '0';
		b <= '1';		-- check that 0 + 1 => s = 1, c = 0
		wait for 100 ns;
		a <= '1';
		b <= '1'; 		-- check that 1 + 1 => s = 0, c = 1
		 
		wait; -- will wait forever
	END PROCESS;

END;
