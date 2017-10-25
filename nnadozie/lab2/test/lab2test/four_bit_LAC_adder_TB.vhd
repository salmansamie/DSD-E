--------------------------------------------------------------------------------
-- Engineer: Jack Cockinis, Vojislav Djurovic, Marco Datola
-- Group 3
--
-- Create Date:   11:22:39 10/20/2016
-- Design Name:   
-- Module Name:   C:/Users/jsc30/Desktop/ECS615U_Lab2/four_bit_LAC_adder_TB.vhd
-- Project Name:  ECS615U_Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: four_bit_LAC_adder
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
 
ENTITY four_bit_LAC_adder_TB IS
END four_bit_LAC_adder_TB;
 
ARCHITECTURE behavior OF four_bit_LAC_adder_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bit_LAC_adder
    PORT(
         InA : IN  std_logic_vector(3 downto 0);
         InB : IN  std_logic_vector(3 downto 0);
         C_In : IN  std_logic;
         S : OUT  std_logic_vector(3 downto 0);
         c_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal InA : std_logic_vector(3 downto 0) := "0000";
   signal InB : std_logic_vector(3 downto 0) := "0000";
   signal C_In : std_logic := '0';

 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   signal c_out : std_logic;
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_bit_LAC_adder PORT MAP (
          InA => InA,
          InB => InB,
          C_In => C_In,
          S => S,
          c_out => c_out
        );
 

   -- Stimulus process
   tb: process
   begin		
      -- hold reset state for 100 ns.
-- TEST BENCH FOR SAMPLE CASES TO MATCH TRUTH TABLE
--		wait for 100ns;
--			Inloop : for i in 0 to 15 loop
--			InA <= std_logic_vector(to_unsigned(i, 4));
--			InB <= std_logic_vector(to_unsigned((8+i), 4));
--			C_In <= InA(3);
--			wait for 50 ns;
--			end loop Inloop;
--			 wait;
--		end process;
		
		
-- TEST BENCH FOR ALL CASES		
		wait for 100 ns;
		wait for 14ns;		
		cloop : for i in std_logic range '0' to '1' loop
			C_In <= i;
			b3loop: for i in std_logic range '0' to '1' loop
				InB(3) <= i;
				b2loop : for i in std_logic range '0' to '1' loop
					InB(2) <= i;
					b1loop : for i in std_logic range '0' to '1' loop
						InB(1) <= i;
						b0loop : for i in std_logic range '0' to '1' loop
							InB(0) <= i;
							a3loop : for i in std_logic range '0' to '1' loop
								InA(3) <= i;
								a2loop : for i in std_logic range '0' to '1' loop
									InA(2) <= i;
									a1loop : for i in std_logic range '0' to '1' loop
										InA(1) <= i;
										a0loop : for i in std_logic range '0' to '1' loop
											InA(0) <= i;
											wait for 10 ns;
										end loop a0loop;
									end loop a1loop;	
								end loop a2loop;
							end loop a3loop;
						end loop b0loop;
					end loop b1loop;
				end loop b2loop;
			end loop b3loop;	
		end loop cloop;

      wait;
   end process;

END;
