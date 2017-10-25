--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:14:48 10/24/2016
-- Design Name:   
-- Module Name:   C:/Users/jsc30/Desktop/ECS615U_Lab2/four_bit_add_sub_TB.vhd
-- Project Name:  ECS615U_Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: four_bit_add_sub
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
 
ENTITY four_bit_add_sub_TB IS
END four_bit_add_sub_TB;
 
ARCHITECTURE behavior OF four_bit_add_sub_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bit_add_sub
    PORT(
         A_input : IN  std_logic_vector(3 downto 0);
         B_input : IN  std_logic_vector(3 downto 0);
         cont : IN  std_logic;
         Sum : OUT  std_logic_vector(3 downto 0);
         c_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A_input : std_logic_vector(3 downto 0) := "0000";
   signal B_input : std_logic_vector(3 downto 0) := "0000";
   signal cont : std_logic := '0';

 	--Outputs
   signal Sum : std_logic_vector(3 downto 0);
   signal c_out : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_bit_add_sub PORT MAP (
          A_input => A_input,
          B_input => B_input,
          cont => cont,
          Sum => Sum,
          c_out => c_out
        );


 

--    Stimulus process
   stim_proc: process
   begin	
	
--		hold reset state for 50 ns.
-- TEST BENCH WITH SAMPLE CASES MATCHING TRUTH TABLE
--		wait for 50ns; 
--		Inloop : for i in 0 to 15 loop
--			A_input <= std_logic_vector(to_unsigned(i, 4));
--			B_input <= std_logic_vector(to_unsigned((15-i), 4));
--			cont <= B_input(0);
--			wait for 50 ns;
--		end loop Inloop;
--		
--		wait;
--		end process;
-- TEST BENCH WITH ALL CASES		
      wait for 50 ns;	
		cloop : for i in std_logic range '0' to '1' loop
			cont <= i;
			b3loop: for i in std_logic range '0' to '1' loop
				B_input(3) <= i;
				b2loop : for i in std_logic range '0' to '1' loop
					B_input(2) <= i;
					b1loop : for i in std_logic range '0' to '1' loop
						B_input(1) <= i;
						b0loop : for i in std_logic range '0' to '1' loop
							B_input(0) <= i;
							a3loop : for i in std_logic range '0' to '1' loop
								A_input(3) <= i;
								a2loop : for i in std_logic range '0' to '1' loop
									A_input(2) <= i;
									a1loop : for i in std_logic range '0' to '1' loop
										A_input(1) <= i;
										a0loop : for i in std_logic range '0' to '1' loop
											A_input(0) <= i;
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
