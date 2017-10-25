--------------------------------------------------------------------------------
-- Engineer: Jack Cockinis, Vojislav Djurovic, Marco Datola
-- Group 3
--
-- Create Date:   17:46:40 10/19/2016
-- Design Name:   
-- Module Name:   C:/Users/jsc30/Desktop/ECS615U_Lab2/four_bit_xor_control_TB.vhd
-- Project Name:  ECS615U_Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: four_bit_xor_control
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
 
ENTITY four_bit_xor_control_TB IS
END four_bit_xor_control_TB;
 
ARCHITECTURE behavior OF four_bit_xor_control_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bit_xor_control
    PORT(
         a0 : IN  std_logic;
         a1 : IN  std_logic;
         a2 : IN  std_logic;
         a3 : IN  std_logic;
         con : IN  std_logic;
         f0 : OUT  std_logic;
         f1 : OUT  std_logic;
         f2 : OUT  std_logic;
         f3 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a0 : std_logic := '0';
   signal a1 : std_logic := '0';
   signal a2 : std_logic := '0';
   signal a3 : std_logic := '0';
   signal con : std_logic := '0';

 	--Outputs
   signal f0 : std_logic;
   signal f1 : std_logic;
   signal f2 : std_logic;
   signal f3 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_bit_xor_control PORT MAP (
          a0 => a0,
          a1 => a1,
          a2 => a2,
          a3 => a3,
          con => con,
          f0 => f0,
          f1 => f1,
          f2 => f2,
          f3 => f3
        );


   -- Stimulus process
   tb: PROCESS
   begin		
      wait for 50 ns; 	-- wait for global reset
		con <= '0';
		a0 <= '0';		-- check 0 nor 0 nor 0 nor 0 = 1
		a1 <= '0';
		a2 <= '0';
		a3 <= '0';
		wait for 50ns;
		a0 <= '1'; 		-- check 0 nor 0 nor 0 nor 1 = 0
		wait for 50ns;
		a1 <= '1';		-- check 0 nor 0 nor 1 nor 0 = 0
		a0 <= '0';
		wait for 50ns;
		a0 <= '1'; 		-- check 0 nor 0 nor 1 nor 1 = 0
		wait for 50ns; 
		a2 <= '1';		-- check 0 nor 1 nor 0 nor 0 = 0
		a1 <= '0';
		a0 <= '0';
		wait for 50ns;		
		a0 <= '1'; 		-- check 0 nor 1 nor 0 nor 1 = 0
		wait for 50ns;		
		a1 <= '1';		-- check 0 nor 1 nor 1 nor 0 = 0
		a0 <= '0';
		wait for 50ns;		
		a0 <= '1'; 		-- check 0 nor 1 nor 1 nor 1 = 0
		wait for 50ns;
		a3 <= '1';		-- check 1 nor 0 nor 0 nor 0 = 1
		a1 <= '0';
		a2 <= '0';
		a3 <= '0';
		wait for 50ns;
		a0 <= '1'; 		-- check 0 nor 0 nor 0 nor 1 = 0
		wait for 50ns;
		a1 <= '1';		-- check 0 nor 0 nor 1 nor 0 = 0
		a0 <= '0';
		wait for 50ns;
		a0 <= '1'; 		-- check 0 nor 0 nor 1 nor 1 = 0
		wait for 50ns; 
		a2 <= '1';		-- check 0 nor 1 nor 0 nor 0 = 0
		a1 <= '0';
		a0 <= '0';
		wait for 50ns;		
		a0 <= '1'; 		-- check 0 nor 1 nor 0 nor 1 = 0
		wait for 50ns;		
		a1 <= '1';		-- check 0 nor 1 nor 1 nor 0 = 0
		a0 <= '0';
		wait for 50ns;		
		a0 <= '1'; 		-- check 0 nor 1 nor 1 nor 1 = 0
		wait for 50ns;
		con <= '1';
		a0 <= '0';		-- check 0 X 0 nor 0 nor 0 = 1
		a1 <= '0';
		a2 <= '0';
		a3 <= '0';
		wait for 50ns;
		a0 <= '1'; 		-- check 0 nor 0 nor 0 nor 1 = 0
		wait for 50ns;
		a1 <= '1';		-- check 0 nor 0 nor 1 nor 0 = 0
		a0 <= '0';
		wait for 50ns;
		a0 <= '1'; 		-- check 0 nor 0 nor 1 nor 1 = 0
		wait for 50ns; 
		a2 <= '1';		-- check 0 nor 1 nor 0 nor 0 = 0
		a1 <= '0';
		a0 <= '0';
		wait for 50ns;		
		a0 <= '1'; 		-- check 0 nor 1 nor 0 nor 1 = 0
		wait for 50ns;		
		a1 <= '1';		-- check 0 nor 1 nor 1 nor 0 = 0
		a0 <= '0';
		wait for 50ns;		
		a0 <= '1'; 		-- check 0 nor 1 nor 1 nor 1 = 0
		wait for 50ns;
		a3 <= '1';		-- check 1 nor 0 nor 0 nor 0 = 1
		a1 <= '0';
		a2 <= '0';
		a3 <= '0';
		wait for 50ns;
		a0 <= '1'; 		-- check 0 nor 0 nor 0 nor 1 = 0
		wait for 50ns;
		a1 <= '1';		-- check 0 nor 0 nor 1 nor 0 = 0
		a0 <= '0';
		wait for 50ns;
		a0 <= '1'; 		-- check 0 nor 0 nor 1 nor 1 = 0
		wait for 50ns; 
		a2 <= '1';		-- check 0 nor 1 nor 0 nor 0 = 0
		a1 <= '0';
		a0 <= '0';
		wait for 50ns;		
		a0 <= '1'; 		-- check 0 nor 1 nor 0 nor 1 = 0
		wait for 50ns;		
		a1 <= '1';		-- check 0 nor 1 nor 1 nor 0 = 0
		a0 <= '0';
		wait for 50ns;		
		a0 <= '1'; 		-- check 0 nor 1 nor 1 nor 1 = 0
		wait;
   end PROCESS;

END;
