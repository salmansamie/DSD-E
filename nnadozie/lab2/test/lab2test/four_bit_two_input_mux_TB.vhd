--------------------------------------------------------------------------------
-- Engineer: Jack Cockinis, Vojislav Djurovic, Marco Datola
-- Group 3
--
-- Create Date:   16:05:00 10/19/2016
-- Design Name:   
-- Module Name:   C:/Users/jsc30/Desktop/ECS615U_Lab2/four_bit_two_input_mux_TB.vhd
-- Project Name:  ECS615U_Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: four_bit_two_input_mux
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
USE ieee.numeric_std.ALL;
USE ieee.std_logic_unsigned.all;

 
ENTITY four_bit_two_input_mux_TB IS
END four_bit_two_input_mux_TB;
 
ARCHITECTURE behavior OF four_bit_two_input_mux_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bit_two_input_mux
    PORT(
         a0 : IN  std_logic;
         a1 : IN  std_logic;
         a2 : IN  std_logic;
         a3 : IN  std_logic;
         b0 : IN  std_logic;
         b1 : IN  std_logic;
         b2 : IN  std_logic;
         b3 : IN  std_logic;
         s0 : IN  std_logic;
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
   signal b0 : std_logic := '0';
   signal b1 : std_logic := '0';
   signal b2 : std_logic := '0';
   signal b3 : std_logic := '0';
   signal s0 : std_logic := '0';

 	--Outputs
   signal f0 : std_logic;
   signal f1 : std_logic;
   signal f2 : std_logic;
   signal f3 : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_bit_two_input_mux PORT MAP (
          a0 => a0,
          a1 => a1,
          a2 => a2,
          a3 => a3,
          b0 => b0,
          b1 => b1,
          b2 => b2,
          b3 => b3,
          s0 => s0,
			 f0 => f0,
          f1 => f1,
          f2 => f2,
          f3 => f3
        );
 

   -- Stimulus process
   tb : PROCESS
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		
-- TEST BENCH FOR SAMPLE CASES TO MATCH TRUTH TABLE
--			 a0 <= '0';
--			 a1 <= '0';
--			 a2 <= '0';
--			 a3 <= '0';
--			 b0 <= '0';
--			 b1 <= '0';
--			 b2 <= '0';
--			 b3 <= '1';
--			 s0 <= '0';
--			 
--		wait for 100ns;
--			a0 <= '1';
--			 a1 <= '0';
--			 a2 <= '0';
--			 a3 <= '0';
--			 b0 <= '1';
--			 b1 <= '0';
--			 b2 <= '0';
--			 b3 <= '1';
--			 s0 <= '1';
--			 
--			 wait for 100ns;
--			a0 <= '0';
--			 a1 <= '1';
--			 a2 <= '0';
--			 a3 <= '0';
--			 b0 <= '0';
--			 b1 <= '1';
--			 b2 <= '0';
--			 b3 <= '1';
--			 s0 <= '0';
--			 
--			  wait for 100ns;
--			a0 <= '1';
--			 a1 <= '1';
--			 a2 <= '0';
--			 a3 <= '0';
--			 b0 <= '1';
--			 b1 <= '1';
--			 b2 <= '0';
--			 b3 <= '1';
--			 s0 <= '1';
		
-- TEST BENCH FOR ALL CASES		
		sloop : for i in std_logic range '0' to '1' loop
			s0 <= i;
			b3loop: for i in std_logic range '0' to '1' loop
				b3 <= i;
				b2loop : for i in std_logic range '0' to '1' loop
					b2 <= i;
					b1loop : for i in std_logic range '0' to '1' loop
						b1 <= i;
						b0loop : for i in std_logic range '0' to '1' loop
							b0 <= i;
							a3loop : for i in std_logic range '0' to '1' loop
								a3 <= i;
								a2loop : for i in std_logic range '0' to '1' loop
									a2 <= i;
									a1loop : for i in std_logic range '0' to '1' loop
										a1 <= i;
										a0loop : for i in std_logic range '0' to '1' loop
											wait for 10 ns;
											a0 <= i;
											wait for 10 ns;
										end loop a0loop;
									end loop a1loop;	
								end loop a2loop;
							end loop a3loop;
						end loop b0loop;
					end loop b1loop;
				end loop b2loop;
			end loop b3loop;	
		end loop sloop;

	wait for 10 ns;
   
	wait;
   end process;

END;
