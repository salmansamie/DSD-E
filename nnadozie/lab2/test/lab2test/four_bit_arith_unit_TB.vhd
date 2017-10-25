--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:43:33 10/25/2016
-- Design Name:   
-- Module Name:   C:/Users/jsc30/Desktop/ECS615U_Lab2/four_bit_arith_unit_TB.vhd
-- Project Name:  ECS615U_Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: four_bit_arith_unit
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
 
ENTITY four_bit_arith_unit_TB IS
END four_bit_arith_unit_TB;
 
ARCHITECTURE behavior OF four_bit_arith_unit_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bit_arith_unit
    PORT(
         InA : IN  std_logic_vector(3 downto 0);
         InB : IN  std_logic_vector(3 downto 0);
         cntrl : IN  std_logic_vector(1 downto 0);
         Sum : OUT  std_logic_vector(3 downto 0);
         c_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal InA : std_logic_vector(3 downto 0) := (others => '0');
   signal InB : std_logic_vector(3 downto 0) := (others => '0');
   signal cntrl : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Sum : std_logic_vector(3 downto 0);
   signal c_out : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_bit_arith_unit PORT MAP (
          InA => InA,
          InB => InB,
          cntrl => cntrl,
          Sum => Sum,
          c_out => c_out
        );

   -- Stimulus process
    stim_proc: process
   begin	
 -- FOR TIMING DIAGRAM TO MATCH TRUTH TABLE
  -- hold reset state for 100 ns.
--      wait for 100 ns;	
--		
--				InBloop: for k in 0 to 15 loop
--				InA <= std_logic_vector(to_unsigned(k, 4));
--				InB <= std_logic_vector(to_unsigned(k, 4));
--				cntrl <= std_logic_vector(to_unsigned(k, 2));
--					wait for 100ns;
--				end loop InBloop;
--			
--      wait;
--   end process;
	
--      -- hold reset state for 100 ns.
      wait for 100 ns;	
		cntrlloop : for i in 3 downto 0 loop
		cntrl <= std_logic_vector(to_unsigned(i, 2));
			InAloop: for j in 15 downto 0 loop
			InA <= std_logic_vector(to_unsigned(j, 4));
				InBloop: for k in 15 downto 0 loop
				InB <= std_logic_vector(to_unsigned(k, 4));
					wait for 100ns;
				end loop InBloop;
			end loop InAloop;
		end loop cntrlloop;
      wait;
   end process;

END;
