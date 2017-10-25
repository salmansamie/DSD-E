--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:14:02 10/25/2016
-- Design Name:   
-- Module Name:   C:/Users/jsc30/Desktop/ECS615U_Lab2/n_bit_logic_unit_TB.vhd
-- Project Name:  ECS615U_Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: n_bit_logic_unit
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
 
ENTITY n_bit_logic_unit_TB IS
	shared variable n_i : positive := 4;
	shared variable n_c : positive := 2;
END n_bit_logic_unit_TB;
 
ARCHITECTURE behavior OF n_bit_logic_unit_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT n_bit_logic_unit
    PORT(
         InA : IN  std_logic_vector(n_i-1 downto 0);
         InB : IN  std_logic_vector(n_i-1 downto 0);
         Cntrl : IN  std_logic_vector(n_c-1 downto 0);
         Output : OUT  std_logic_vector(n_i-1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal InA : std_logic_vector(n_i-1 downto 0) := (others => '0');
   signal InB : std_logic_vector(n_i-1 downto 0) := (others => '0');
   signal Cntrl : std_logic_vector(n_c-1 downto 0) := (others => '0');

 	--Outputs
   signal Output : std_logic_vector(n_i-1 downto 0);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: n_bit_logic_unit PORT MAP (
          InA => InA,
          InB => InB,
          Cntrl => Cntrl,
          Output => Output
        );
 

   -- Stimulus process
    stim_proc: process
	 
-- TEST BENCH FOR SAMPLE CASES TO MATCH TRUTH TABLE
--	begin
--	wait for 100 ns;
--	InBloop: for k in 0 to 15 loop
--		InA <= std_logic_vector(to_unsigned(k, 4));
--		InB <= std_logic_vector(to_unsigned((k+8), 4));
--		wait for 100ns;
--		Cntrl <= InA(3 downto 2);
--	end loop InBloop;
	 
	 

-- TEST BENCH FOR ALL CASES
	variable n_i : positive := 4;
	variable n_c : positive := 2;
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		cntrlloop : for i in ((n_c*n_c)-1) downto 0 loop
		cntrl <= std_logic_vector(to_unsigned(i, n_c));
			InAloop: for j in ((n_i*n_i)-1) downto 0 loop
			InA <= std_logic_vector(to_unsigned(j, n_i));
				InBloop: for k in ((n_i*n_i)-1) downto 0 loop
				InB <= std_logic_vector(to_unsigned(k, n_i));
					wait for 100ns;
				end loop InBloop;
			end loop InAloop;
		end loop cntrlloop;
      
		
		
		wait;
   end process;

END;
