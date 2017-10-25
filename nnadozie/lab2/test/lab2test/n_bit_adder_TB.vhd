--------------------------------------------------------------------------------
-- Engineer: Jack Cockinis, Vojislav Djurovic, Marco Datola
-- Group 3
--
-- Create Date:   10:24:59 10/20/2016
-- Design Name:   
-- Module Name:   C:/Users/jsc30/Desktop/ECS615U_Lab2/n_bit_adder_TB.vhd
-- Project Name:  ECS615U_Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: n_bit_adder
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
 
ENTITY n_bit_adder_TB IS
END n_bit_adder_TB;
 
ARCHITECTURE behavior OF n_bit_adder_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT n_bit_adder
    PORT(
         A_input : IN  std_logic_vector(3 downto 0);
         B_input : IN  std_logic_vector(3 downto 0);
         c_input : IN  std_logic_vector(3 downto 0);
         S : OUT  std_logic_vector(3 downto 0);
         c_out1 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A_input : std_logic_vector(3 downto 0) := (others => '0');
   signal B_input : std_logic_vector(3 downto 0) := (others => '0');
   signal c_input : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   signal c_out1 : std_logic;
 

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: n_bit_adder PORT MAP (
          A_input => A_input,
          B_input => B_input,
          c_input => c_input,
          S => S,
          c_out1 => c_out1
        );
		  
-- The following cases are tested in the n_bit adder	  
-- 	A_in	B_in	C_in	: 	S			c_out1
--    0000	0000	0000	:	0000		  0
--		0001  0001	0000  :  0000       0
--		0011  0010	0000  :  0001		  0
--		1100  1000	0000  :  0100		  1
--    1001	1101	0100	:	0000		  1
--		1010	1001	0100	:	0111		  1
 

   -- Stimulus process
   tb: process
   begin		
 
-- Wait 100 ns for global reset to finish
		wait for 100 ns;

		A_input <= "0000";
		B_input <= "0000";

		wait for 100 ns;

		A_input <= "0001";
		B_input <= "0001";

		wait for 100 ns;

		A_input <= "0011";
		B_input <= "0010";

		wait for 100 ns;

		A_input <= "1100";
		B_input <= "1000";
		
		wait for 100 ns;

		A_input <= "1001";
		B_input <= "1101";
		c_input <= "0100";
		
		wait for 100 ns;

		A_input <= "1010";
		B_input <= "1001";
		wait; -- will wait forever
	END PROCESS;

END;


