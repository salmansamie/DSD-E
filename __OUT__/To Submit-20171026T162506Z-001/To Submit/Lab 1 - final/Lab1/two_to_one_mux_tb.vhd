--------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jayant Shivarajan
--
-- Create Date:   17:08:56 10/19/2017
-- Design Name:   
-- Module Name:   C:/Users/js317/Desktop/DSD/Lab1/two_to_one_mux_tb.vhd
-- Project Name:  Lab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: two_to_one_mux
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
 
ENTITY two_to_one_mux_tb IS
END two_to_one_mux_tb;
 
ARCHITECTURE behavior OF two_to_one_mux_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT two_to_one_mux
    PORT(
         i0 : IN  std_logic;
         i1 : IN  std_logic;
         s0 : IN  std_logic;
         f : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i0 : std_logic := '0';
   signal i1 : std_logic := '0';
   signal s0 : std_logic := '0';

 	--Outputs
   signal f : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: two_to_one_mux PORT MAP (
          i0 => i0,
          i1 => i1,
          s0 => s0,
          f => f
        );

	tb : PROCESS
	BEGIN

-- *** Comments on how this test bench works *** --		

		-- truth table for a 2 to 1 multiplexer:

		--   S0   I0   I1   :  f
		--------------------:-----
		--   0    0    0    :  0
		--	  0    0    1    :  0
		--   1    1    0    :  0
		--	  1    1    1    :  1

-- ********************************************** --

		-- Wait 100 ns for global reset to finish
	   wait for 100 ns;
		s0 <= '0';
		i1 <= '0';
		i0 <= '0'; 		-- check that S0=0, I0=0, I1=0 => f = 0
		wait for 100 ns;
		s0 <= '0';
		i1 <= '1';
		i0 <= '0';		-- check that S0=0, I0=1, I1=0 => f = 0
		wait for 100 ns;
		s0 <= '1';
		i1 <= '0';
		i0 <= '1';		-- check that S0=1, I0=0, I1=1 => f = 0
		wait for 100 ns;
		s0 <= '1';
		i1 <= '1';
		i0 <= '1'; 		-- check that S0=1, I0=1, I1=1 => f = 1
		 
		wait; -- will wait forever
	END PROCESS;

END;
