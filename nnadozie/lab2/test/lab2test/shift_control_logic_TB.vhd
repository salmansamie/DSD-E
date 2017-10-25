--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:05:16 10/25/2016
-- Design Name:   
-- Module Name:   C:/Users/md470/Desktop/dsdLab2OLDbackup/ECS615/ECS615U_Lab2/shift_control_logic_TB.vhd
-- Project Name:  ECS615U_Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: shift_control_logic
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
 
ENTITY shift_control_logic_TB IS
	shared variable n_i : positive := 3;
	shared variable n_o : positive := 2;
	
END shift_control_logic_TB;
 
ARCHITECTURE behavior OF shift_control_logic_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shift_control_logic
   	port ( input: in std_logic_vector(n_i-1 downto 0);
				 f	   : out std_logic_vector(n_o-1 downto 0)
			 );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(n_i-1 downto 0) := (others => '0');
   

 	--Outputs
   signal f		 : std_logic_vector(n_o-1 downto 0) := (others => '0');
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shift_control_logic PORT MAP (
          input => input,
          f => f
        );

   
   -- Stimulus process
   stim_proc: process
	variable n_c : positive :=2;
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		inputloop: for m in ((n_i*n_i)-1) downto 0 loop
			input <= std_logic_vector(to_unsigned(m, n_i));
			wait for 100 ns;
		end loop inputloop;
	  
      wait;
   end process;

END;
