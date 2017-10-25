--------------------------------------------------------------------------------
-- Engineer: Jack Cockinis, Vojislav Djurovic, Marco Datola
-- Group 3
--
-- Create Date:   16:34:48 10/24/2016
-- Design Name:   
-- Module Name:   H:/3rd Year/V_lab2/four_input_multiplexer_TB.vhd
-- Project Name:  V_lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: four_input_multiplexer
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
 
ENTITY four_input_multiplexer_TB IS
END four_input_multiplexer_TB;
 
ARCHITECTURE behavior OF four_input_multiplexer_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_input_multiplexer
    PORT(
         S : IN  std_logic_vector(1 downto 0);
         I0 : IN  std_logic;
         I1 : IN  std_logic;
         I2 : IN  std_logic;
         I3 : IN  std_logic;
         f : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal S : std_logic_vector(1 downto 0) := (others => '0');
   signal I0 : std_logic := '0';
   signal I1 : std_logic := '0';
   signal I2 : std_logic := '0';
   signal I3 : std_logic := '0';

 	--Outputs
   signal f : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_input_multiplexer PORT MAP (
          S => S,
          I0 => I0,
          I1 => I1,
          I2 => I2,
          I3 => I3,
          f => f
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
         I1 <= '1';
			I3 <= '1';
 			S(0) <= '0';
			S(1) <= '0';
			wait for 100 ns;
			S(0) <= '1';
			wait for 100 ns;
			S(1) <= '1';
			wait for 100 ns;
			S(1) <= '0';
			wait for 100 ns;
			S(1) <= '1';
			S(0) <= '0';


      wait;
   end process;

END;
